<?php

namespace Mep\Http\Controllers;

use Mep\Models\BalanceBudget;
use Mep\Models\Catalog;
use Mep\Models\TypeBudget;
use Mep\Models\Budget;
use Mep\Models\Balance;

class BalanceBudgetsController extends Controller
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
        $balanceBudgets = BalanceBudget::withTrashed()->get();

        return view('balanceBudgets.index', compact('balanceBudgets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $catalogs = Catalog::all();
        $typeBudgets = TypeBudget::all();
        $budgets = Budget::all();

        return view('balanceBudgets.create', compact('budgets', 'catalogs', 'typeBudgets'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        /* Capturamos los datos enviados por ajax */
        $balanceBudgets = $this->convertionObjeto();

        $catalog = Catalog::Token($balanceBudgets->catalogsBalanceBudget);
        $budget = Budget::Token($balanceBudgets->budgetBalanceBudget);
        $typeBudget = TypeBudget::Token($balanceBudgets->typeBudgetBalanceBudget);

        /* Creamos un array para cambiar nombres de parametros */
        $ValidationData = $this->CreacionArray($balanceBudgets, 'BalanceBudget');
        $ValidationData['catalog_id'] = $catalog->id;
        $ValidationData['budget_id'] = $budget->id;
        $ValidationData['type_budget_id'] = $typeBudget->id;

        /* Declaramos las clases a utilizar */
        $balanceBudget = new BalanceBudget();
        /* Validamos los datos para guardar tabla menu */
        if ($balanceBudget->isValid($ValidationData)):
            $balanceBudget->fill($ValidationData);
        $balanceBudget->save();

            /* Traemos el id del tipo de usuario que se acaba de */
            $idBalanceBudget = $balanceBudget->LastId();
            /* Buscamos el tipo de presupuestos para poder hacer la relaciones
             *   de presupuestos con tipo de presupuesto
             * */
            $TypeBudget = TypeBudget::find($ValidationData['type_budget_id']);
        if (empty($TypeBudget->budgets)):
                $TypeBudget->budgets()->detach($ValidationData['budget_id']);
        $TypeBudget->budgets()->attach($ValidationData['budget_id']);
        endif;
            /* fin relacion */
            /* Buscamos el tipo de presupuestos para poder hacer la relaciones
             *   de presupuestos con grupos
             * */
            $budget = Budget::find($ValidationData['budget_id']);
        if (empty($budget->groups)):
                $budget->groups()->detach($idBalanceBudget->catalogs->group_id);
        $budget->groups()->attach($idBalanceBudget->catalogs->group_id);
        endif;
            /* fin relacion */

            //,'simulation'=>$balanceBudgets->simulation
            BalanceController::saveBalance($balanceBudgets->amountBalanceBudget, 'entrada', 'false', 'balance_budget_id', $idBalanceBudget->id, $balanceBudgets->statusBalanceBudget);
            /* Comprobamos si viene activado o no para guardarlo de esa manera */
            if ($balanceBudgets->statusBalanceBudget == true):
                BalanceBudget::withTrashed()->find($idBalanceBudget->id)->restore(); else:
                BalanceBudget::destroy($idBalanceBudget->id);
        endif;
            /* Enviamos el mensaje de guardado correctamente */
            return $this->exito('Los datos se guardaron con exito!!!');
        endif;
        /* Enviamos el mensaje de error */
        return $this->errores($balanceBudget->errors);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        //
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
        $balanceBudget = BalanceBudget::Token($token);
        $budgets = Budget::all();
        $catalogs = Catalog::all();
        $typeBudgets = TypeBudget::all();

        return view('balanceBudgets.edit', compact('balanceBudget', 'budgets', 'catalogs', 'typeBudgets'));
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
        $balanceBudgets = $this->convertionObjeto();

        $catalog = Catalog::Token($balanceBudgets->catalogsBalanceBudget);
        $budget = Budget::Token($balanceBudgets->budgetBalanceBudget);
        $typeBudget = TypeBudget::Token($balanceBudgets->typeBudgetBalanceBudget);
        /* Creamos un array para cambiar nombres de parametros */
        $ValidationData = $this->CreacionArray($balanceBudgets, 'BalanceBudget');
        $ValidationData['catalog_id'] = $catalog->id;
        $ValidationData['budget_id'] = $budget->id;
        $ValidationData['type_budget_id'] = $typeBudget->id;
        /* Declaramos las clases a utilizar */
        $balanceBudget = BalanceBudget::Token($balanceBudgets->token);
        /* Validamos los datos para guardar tabla menu */
        if ($balanceBudget->isValid($ValidationData)):
            $balanceBudget->fill($ValidationData);
        $balanceBudget->save();
            /**/
            $budget = Budget::find($ValidationData['budget_id']);
        if ($budget->typeBudgets()->id == $ValidationData['type_budget_id']):
                $budget->typeBudgets()->attach($ValidationData['type_budget_id']);
        endif;

            /**/
            $searchBalance = Balance::withTrashed()->where('balance_budget_id', '=', $balanceBudget->id)->get();
        BalanceController::editBalance($balanceBudgets->amountBalanceBudget, 'entrada', 'false', $searchBalance[0]->id, $balanceBudgets->statusBalanceBudget);
            /* Comprobamos si viene activado o no para guardarlo de esa manera */
            if ($balanceBudgets->statusBalanceBudget == true):
                BalanceBudget::Token($balanceBudgets->token)->restore(); else:
                BalanceBudget::Token($balanceBudgets->token)->delete();
        endif;
            /* Enviamos el mensaje de guardado correctamente */
            return $this->exito('Los datos se guardaron con exito!!!');
        endif;
        /* Enviamos el mensaje de error */
        return $this->errores($balanceBudget->errors);
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
        $data = BalanceBudget::Token($token);
        BalanceController::desactivar('balance_budget_id', $data->id);
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
        $data = BalanceBudget::Token($token);
        BalanceController::active('balance_budget_id', $data->id);
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
        $balanceBudget = BalanceBudget::Token($token);
        $pdf = \PDF::loadView('reports.balanceBudget.content', compact('balanceBudget'))->setOrientation('landscape');

        return $pdf->stream('Reporte.pdf');
    }
}
