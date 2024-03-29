<?php

namespace Mep\Http\Routes;

use Illuminate\Support\Facades\Route;

/*
 * Rutas de Tipos de Usuarios
 */
Route::get('presupuestos', 'BudgetsController@index');
Route::get('presupuestos/ver-presupuestos', ['as' => 'ver-presupuestos', 'uses' => 'BudgetsController@index']);
Route::get('presupuestos/registrar-presupuesto', ['as' => 'registrar-presupuesto', 'uses' => 'BudgetsController@create']);
Route::post('presupuestos/save-presupuestos', 'BudgetsController@store');
Route::get('presupuestos/editar-presupuesto/{token}', ['as' => 'edit-presupuesto', 'uses' => 'BudgetsController@edit']);
Route::delete('presupuestos/delete-presupuestos/{token}', ['as' => 'delete-presupuesto', 'uses' => 'BudgetsController@destroy']);
Route::patch('presupuestos/active-presupuestos/{token}', ['as' => 'active-presupuesto', 'uses' => 'BudgetsController@active']);
Route::put('presupuestos/update-presupuestos', 'BudgetsController@update');
Route::get('presupuestos/reporte/{token}', ['as' => 'report-presupuestos', 'uses' => 'BudgetsController@report']);
Route::get('presupuestos/reporte-global/{token}/{global}/{year}', ['as' => 'report-global-presupuestos', 'uses' => 'BudgetsController@globalReport']);
Route::get('presupuestos/reporte-poa/{token}', ['as' => 'reporte-poa-presupuestos', 'uses' => 'BudgetsController@poaReport']);
/*
 * Fin Rutas de Tipos de Usuarios
 */
