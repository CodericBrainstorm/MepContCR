<?php

namespace Mep\Http\Controllers;

use Mep\Models\Transfer;
use Mep\Models\Spreadsheet;
use Mep\Models\BalanceBudget;
use Illuminate\Support\Facades\DB;
use Exception;
use Log;
use Mep\Models\Check;
use Mep\Models\Balance;

class TransfersController extends Controller
{
    /**
     * Create a new controller instance.
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $transfers = $this->ArregloIndexCuenta('type', 'entrada');

        return view('transfers.index', compact('transfers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $spreadsheets = Spreadsheet::orderBy('number', 'ASC')->orderBy('year', 'ASC')->get();
        $balanceBudgets = $this->arregloSelectCuenta('budgets_id', $spreadsheets[0]->budgets_id);

        return view('transfers.create', compact('spreadsheets', 'balanceBudgets'));
    }

    /**
     * Display the specified resource.
     * Con este metodo creamos un arreglo para enviarlo a la vista asi formar el select
     * via ajax o directo a la vista.
     *
     * @param int $budgetsId
     *
     * @return string
     */
    private function ArregloSelectCuenta($campo, $budgetsId)
    {
        $balancebudgets = BalanceBudget::where($campo, '=', $budgetsId)->get();
        foreach ($balancebudgets as $balanceBudgets):
            $balanceBudget[] = array('idBalanceBudgets' => $balanceBudgets->id, 'id' => $balanceBudgets->token,
                'value' => $balanceBudgets->catalogs->p.'-'.$balanceBudgets->catalogs->g.'-'.$balanceBudgets->catalogs->sp.' || '.$balanceBudgets->catalogs->name.' || '.$balanceBudgets->typeBudgets->name, );
        endforeach;

        return $balanceBudget;
    }

    /**
     * Display the specified resource.
     * Con este metodo creamos un arreglo para enviarlo a la vista asi formar el select
     * via ajax o directo a la vista.
     *
     * @param int $budgetsId
     *
     * @return string
     */
    private function ArregloIndexCuenta($campo, $budgetsId)
    {
        $transfers = Transfer::where($campo, '=', $budgetsId)->get();
        for ($i = 0; $i < count($transfers); $i++):
            $balanceBudgets = BalanceBudget::find($transfers[$i]->balance_budgets_id);
        $balanceBudget[] = array('token' => $transfers[$i]->token, 'amount' => $transfers[$i]->amount, 'code' => $transfers[$i]->code, 'date' => $transfers[$i]->date, 'deleted_at' => $transfers[$i]->deleted_at,
                'value' => $balanceBudgets->catalogs->p.'-'.$balanceBudgets->catalogs->g.'-'.$balanceBudgets->catalogs->sp.' || '.$balanceBudgets->catalogs->name.' || '.$balanceBudgets->typeBudgets->name, );
        endfor;
        $balanceBudgets = $balanceBudget;

        return $balanceBudgets;
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function view($token)
    {
        $transfers = $this->ArregloViewCuenta($token);

//        $spreadsheet = ['code' => $spreadsheets->number . '-' . $spreadsheets->year . ' ' . $spreadsheets->budgets->name];
//        $balanceBudgets = $balanceBudget;
        return view('transfers.view', compact('transfers', 'balanceBudgets'));
    }

    /**
     * Display the specified resource.
     * Con este metodo creamos un arreglo para enviarlo a la vista asi formar el select
     * via ajax o directo a la vista.
     *
     * @param int $budgetsId
     *
     * @return string
     */
    private function ArregloViewCuenta($token)
    {
        $transfers = Transfer::where('token', '=', $token)->get();

        foreach ($transfers as $transfer):
            $checks = Check::where('spreadsheets_id', '<', $transfer->spreadsheets_id)->sum('amount');
        $codeInTransfer = Transfer::where('code', '<', $transfer->code)->where('balance_budgets_id', $transfer->balance_budgets_id)->where('type', 'entrada')->sum('amount');
        $codeOutTransfer = Transfer::where('code', '<', $transfer->code)->where('balance_budgets_id', $transfer->balance_budgets_id)->where('type', 'salida')->sum('amount');

        $balanceLast = ($transfer->balanceBudgets->amount + $codeInTransfer) - ($checks + $codeOutTransfer);

        if ($transfer->type == 'entrada'):
                $balanceNew = $balanceLast + $transfer->amount; else:
                $balanceNew = $balanceLast - $transfer->amount;
        endif;
        $balanceBudget[] = array('id' => $transfer->balanceBudgets->id,
                'type' => $transfer->type,
                'amount' => $transfer->amount,
                'simulation' => $transfer->simulation,
                'date' => $transfer->date,
                'codeTransfer' => $transfer->code,
                'token' => $transfer->balanceBudgets->token,
                'tokenTransfer' => $transfer->token,
                'balanceLast' => $balanceLast,
                'balanceNew' => $balanceNew,
                'code' => $transfer->balanceBudgets->catalogs->p.'-'.$transfer->balanceBudgets->catalogs->g.'-'.$transfer->balanceBudgets->catalogs->sp,
                'name' => $transfer->balanceBudgets->catalogs->name, );

        endforeach;

        return $balanceBudget;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        /**/
        $transfers = $this->convertionObjeto();
        try {
            DB::beginTransaction();
            /* Separamos los parametros quitandole Transfer */
            $transfers->codeTransfer = 'v';
            $ValidationData = $this->CreacionArray($transfers, 'Transfer');
            /* Generamos el arreglo para cada una de las filas a guardar */
            $transfer = $this->dataUpdateSaveTransfer($ValidationData, 'create');
            /* Recorremos el arreglo para poder actualizar los datos */

            foreach ($transfer as $dataTransfer):
                /* Buscamos por el token las filas guardadas */
                $transferQuery = new Transfer();
                /* Comprobamos que recibimos todos los parametros requeridos */
                if ($transferQuery->isValid($dataTransfer)):
                    $transferQuery->fill($dataTransfer);
            $transferQuery->save();
            BalanceController::saveBalanceTransfers($dataTransfer['amount'], $dataTransfer['type'], $dataTransfer['simulation'], $dataTransfer['code'], $dataTransfer['balance_budgets_id']);
            endif;
            endforeach;

            if ($transferQuery['errors']) {
                DB::rollback();

                return $this->errores($transferQuery['errors']);
            }
            DB::commit();

            return $this->exito('Los datos se guardaron con exito!!!');
        } catch (Exception $e) {
            Log::error($e);
            DB::rollback();

            return $this->errores(array('key' => 'Error de DB'));
        }

//        /* Capturamos los datos enviados por ajax */
//        $transfers = $this->convertionObjeto();
//        /* obtenemos dos datos del supplier mediante token recuperamos el id */
//        $spreadsheet = Spreadsheet::Token($transfers->spreadsheetTransfer);
//        $transfers->codeTransfer = 'v';
//        /* Creamos un array para cambiar nombres de parametros */
//        $ValidationData = $this->CreacionArray($transfers, 'Transfer');
//        $ValidationData['spreadsheets_id'] = $spreadsheet->id;
//        /* Declaramos las clases a utilizar */
//        $ValidationData['simulation'] = 'FALSE';
//        if ($transfers->simulationTransfer == 'v'):
//            $ValidationData['simulation'] = 'TRUE';
//        endif;
//        $transfer = new Transfer;
//        $ValidationData['code'] = 1;
//        if (($transfer->lastCode())):
//            $ValidationData['code'] = $transfer->lastCode() + 1;
//        endif;
//        $outTransfer = new Transfer;
//        /* Validamos los datos para guardar tabla menu */
//        $errors_transaction = array();
//        try {
//            DB::beginTransaction();
//            /* Traemos el id del ultimo registro guardado */
//            $outBalanceBudget = $transfers->outBalanceBudgetTransfer;
//            $amount = 0;
//            for ($i = 0; $i < count($outBalanceBudget); $i++):
//                /* Comprobamos cuales estan habialitadas y esas las guardamos */
//                $balanceBudget = BalanceBudget::Token($transfers->outBalanceBudgetTransfer[$i]);
//                $ValidationData['amount'] = $transfers->amountBalanceBudgetTransfer[$i];
//                $ValidationData['balance_budgets_id'] = $balanceBudget->id;
//                $ValidationData['type'] = 'salida';
//
//
//                $amount += $ValidationData['amount'];
//            endfor;
//
//            $balanceBudget = BalanceBudget::Token($transfers->inBalanceBudgetTransfer);
//            $ValidationData['balance_budgets_id'] = $balanceBudget->id;
//            $ValidationData['amount'] = $amount;
//            $ValidationData['type'] = 'entrada';
//            $transfer = new Transfer;
//            if ($transfer->isValid($ValidationData)):
//                $transfer->fill($ValidationData);
//                $transfer->save();
//                $this->balanceSaveData($ValidationData['amount'], 'entrada', $ValidationData['code'], $ValidationData['balance_budgets_id']);
//            else:
//                $errors_transaction[] = $transfer->errors;
//            endif;
//
//            if ($errors_transaction) {
//                DB::rollback();
//                return $this->errores($errors_transaction);
//            }
//            DB::commit();
//            return $this->exito('Los datos se guardaron con exito!!!');
//        } catch (Exception $e) {
//            Log::error($e);
//            DB::rollback();
//            return $this->errores(array('key' => 'Error de DB'));
//        }
    }

    private function errorsArray($errorsObject)
    {
        echo($errorsObject);
        die;
        foreach ($errorsObject as $value) :
            echo json_encode($value->date);
        die;
        endforeach;

        $errores[$key] = $value;
    }

    private function balanceSaveData($amount, $type, $code, $balanceBudget)
    {
        BalanceController::saveBalanceTransfers($amount, $type, 'false', ['transfers_code' => 'transfers_code', 'transfers_balance_budgets_id' => 'transfers_balance_budgets_id'], ['transfers_code' => $code, 'transfers_balance_budgets_id' => $balanceBudget], 'false');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($token)
    {
        $DataTransfers = Transfer::where('token', '=', $token)->get();
        $amount = 0;
        foreach ($DataTransfers as $transfers):
            if ($transfers->type == 'entrada'):
                $balanceBudgetIn = $this->dataBalanceBudget($transfers->balance_budgets_id, $transfers->amount); else:
                $balanceBudgetOut[] = $this->dataBalanceBudget($transfers->balance_budgets_id, $transfers->amount);
        endif;
        $amount += $transfers->amount;

        endforeach;

        $transfer = array('date' => $transfers->date, 'amount' => $amount,
            'simulation' => $transfers->simulation,
            'code' => $transfers->code,
            'token' => $transfers->token,
            'deleted_at' => $transfers->deleted_at,
            'balancebudgetIn' => $balanceBudgetIn,
            'balancebudgetOut' => $balanceBudgetOut,
            'spreadsheets' => $transfers->spreadsheets->number.'-'.$transfers->spreadsheets->year,
            'tokenSpreadsheets' => $transfers->spreadsheets->token, );
        $spreadsheets = Spreadsheet::orderBy('number', 'ASC')->orderBy('year', 'ASC')->get();
        $balanceBudgets = $this->arregloSelectCuenta('budgets_id', $spreadsheets[0]->budgets_id);

        return view('transfers.edit', compact('transfer', 'spreadsheets', 'balanceBudgets'));
    }

    private function dataBalanceBudget($id, $amount)
    {
        $balanceBudget = BalanceBudget::find($id);

        $data = array('token' => $balanceBudget->token, 'amount' => $amount,
            'name' => $balanceBudget->catalogs->p.'-'.$balanceBudget->catalogs->g.'-'.$balanceBudget->catalogs->sp.' || '.$balanceBudget->catalogs->name.' || '.$balanceBudget->typeBudgets->name, );

        return $data;
    }

    private function dataUpdateSaveTransfer($data, $type)
    {

        /* obtenemos dos datos del spreadsheet mediante token recuperamos el id */
        $spreadsheet = Spreadsheet::Token($data['spreadsheet']);
        unset($data['spreadsheet']);
        $data['spreadsheets_id'] = $spreadsheet->id;

        /* Asignacion de valores a la simulacion */
        if ($data['simulation'] == 'v'):
            $data['simulation'] = 'TRUE'; else:
            $data['simulation'] = 'FALSE';
        endif;

        /* Asignacion de valores al codigo */
        if ($type == 'create'):
            $transfer = new Transfer();
        $data['code'] = 1;
        if (($transfer->lastCode())):
                $data['code'] = $transfer->lastCode() + 1;
        endif; else:
            $transfer = Transfer::Token($data['token']);
        $data['code'] = $transfer->code;
        endif;

        $amount = 0;
        for ($i = 0; $i < count($data['outBalanceBudget']); $i++):
            /* Comprobamos cuales estan habialitadas y esas las guardamos */
            $balanceBudget = BalanceBudget::Token($data['outBalanceBudget'][$i]);
        $data['amount'] = $data['amountBalanceBudget'][$i];
        $data['balance_budgets_id'] = $balanceBudget->id;
        $data['type'] = 'salida';

        $Transfers[] = ['amount' => $data['amount'],
                'balance_budgets_id' => $data['balance_budgets_id'],
                'code' => $data['code'],
                'date' => $data['date'],
                'token' => $data['token'],
                'simulation' => $data['simulation'],
                'spreadsheets_id' => $data['spreadsheets_id'],
                'type' => $data['type'], ];
        $amount += $data['amount'];

        endfor;
        /* Comprobamos cuales estan habialitadas y esas las guardamos */
        $balanceBudget = BalanceBudget::Token($data['inBalanceBudget']);
        $data['amount'] = $amount;
        $data['balance_budgets_id'] = $balanceBudget->id;
        $data['type'] = 'entrada';
        $Transfers[] = ['amount' => $data['amount'],
            'balance_budgets_id' => $data['balance_budgets_id'],
            'code' => $data['code'],
            'date' => $data['date'],
            'token' => $data['token'],
            'simulation' => $data['simulation'],
            'spreadsheets_id' => $data['spreadsheets_id'],
            'type' => $data['type'], ];

        return $Transfers;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update()
    {
        /* Capturamos los datos enviados por ajax */
        $transfers = $this->convertionObjeto();
        try {
            DB::beginTransaction();
            /* Separamos los parametros quitandole Transfer */
            $ValidationData = $this->CreacionArray($transfers, 'Transfer');
            /* Generamos el arreglo para cada una de las filas a guardar */
            $transfer = $this->dataUpdateSaveTransfer($ValidationData, 'edit');
            /* Recorremos el arreglo para poder actualizar los datos */

            foreach ($transfer as $dataTransfer):
                /* Buscamos por el token las filas guardadas */
                $transferQuery = Transfer::Token($dataTransfer['token']);

                /* Comprobamos que recibimos todos los parametros requeridos */

                if ($transferQuery->isValid($dataTransfer)):

                    $transferVerify = Transfer::where('code', $dataTransfer['code'])->where('balance_budgets_id', $dataTransfer['balance_budgets_id'])->get();
            if (($transferVerify->count() == 1)):

                        DB::table('transfers')
                                ->where('code', $dataTransfer['code'])
                                ->where('balance_budgets_id', $dataTransfer['balance_budgets_id'])
                                ->update($dataTransfer);
            BalanceController::updateBalanceTransfers($dataTransfer['amount'], $dataTransfer['type'], $dataTransfer['simulation'], $dataTransfer['code'], $dataTransfer['balance_budgets_id']); else:
                        $queryTransfer = new Transfer();
            $queryTransfer->fill($dataTransfer);
            $queryTransfer->save();
            BalanceController::saveBalanceTransfers($dataTransfer['amount'], $dataTransfer['type'], $dataTransfer['simulation'], $dataTransfer['code'], $dataTransfer['balance_budgets_id']);
            endif;
            endif;
            endforeach;

            if ($transferQuery['errors']) {
                DB::rollback();

                return $this->errores($transferQuery['errors']);
            }
            DB::commit();

            return $this->exito('Los datos se guardaron con exito!!!');
        } catch (Exception $e) {
            Log::error($e);
            DB::rollback();

            return $this->errores(array('key' => 'Error de DB'));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($token)
    {
        /* les damos eliminacion pasavida */
        $data = Transfer::Token($token);
        BalanceController::desactivar('transfers_id', $data->id);
        if ($data):

            $data->delete();
            /* si todo sale bien enviamos el mensaje de exito */
            return $this->exito('Se desactivo con exito!!!');
        endif;
        /* si hay algun error  los enviamos de regreso */
        return $this->errores($data->errors);
    }

    /**
     * Restore the specified typeuser from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function active($token)
    {
        /* les quitamos la eliminacion pasavida */
        $data = Transfer::Token($token);
        BalanceController::active('transfers_id', $data->id);
        if ($data):
            $data->restore();
            /* si todo sale bien enviamos el mensaje de exito */
            return $this->exito('Se Activo con exito!!!');
        endif;
        /* si hay algun error  los enviamos de regreso */
        return $this->errores($data->errors);
    }

    public function report($token)
    {
        $transfers = Transfer::where('token', $token)->get();
        $content = array();
        $aumento = 0;
        $rebajo = 0;
        foreach ($transfers as $index => $transfer):
            $balance = Balance::BalanceInicialTotal($transfer->balanceBudgets->id, null, $transfer->spreadsheets, $transfer->spreadsheets_id);

        if ($transfer->type == 'salida'):
                $balanceTotal = $balance - $transfer->amount;
        $content[] = array($transfer->balanceBudgets->catalogs->codeCuenta(), $transfer->balanceBudgets->catalogs->name, $balance, $transfer->amount, '', $balanceTotal);
        $aumento += $transfer->amount; else:
                $balanceTotal = $balance + $transfer->amount;
        $content[] = array($transfer->balanceBudgets->catalogs->codeCuenta(), $transfer->balanceBudgets->catalogs->name, $balance, '', $transfer->amount, $balanceTotal);
        $rebajo += $transfer->amount;
        endif;
        endforeach;
        $school = $transfers[0]->balanceBudgets->budgets->schools;
        $pdf = \PDF::loadView('reports.transfer.content', compact('content', 'rebajo', 'aumento', 'school'))
                ->setOrientation('landscape');

        return $pdf->stream('Reporte.pdf');
    }
}
