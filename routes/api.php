<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResource('bodegas', 'App\Http\Controllers\BodegasController');
Route::apiResource('categorias', 'App\Http\Controllers\CategoriasController');
Route::apiResource('ciudades', 'App\Http\Controllers\CiudadesController');
Route::apiResource('departamentos', 'App\Http\Controllers\DepartamentosController');
Route::apiResource('empresas', 'App\Http\Controllers\EmpresasController');
Route::apiResource('agregarproductos', 'App\Http\Controllers\EntradasController');
Route::apiResource('generos', 'App\Http\Controllers\GenerosController');
Route::apiResource('crearproducto', 'App\Http\Controllers\ProductosController');
Route::apiResource('proveedores', 'App\Http\Controllers\ProveedoresController');
Route::apiResource('roles', 'App\Http\Controllers\RolesController');
Route::apiResource('sucursales', 'App\Http\Controllers\SucursalesController');
Route::apiResource('creartipodocumento', 'App\Http\Controllers\TipodocumentosController');

