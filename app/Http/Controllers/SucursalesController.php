<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\empresas;
use App\Models\ciudades;
use App\Models\sucursales;

class SucursalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sucursal = sucursales::all();
        $empresa = empresas::all();
        $ciudad = ciudades::all();
        return json_encode(['sucursales'=>$sucursal, 'empresas'=>$empresa, 'ciudades'=>$ciudad]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $sucursal = sucursales::create($request->all());
        return json_encode($sucursal);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $sucursal = sucursales::find($id);
        $sucursal->id = $request->id;
        $sucursal->nombre = $request->nombre;
        $sucursal->telefono = $request->telefono;
        $sucursal->direccion = $request->direccion;
        $sucursal->Empresa = $request->Empresa;
        $sucursal->ciudade = $request->ciudade;
        $sucursal->update();
        return json_encode($sucursal);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sucursal = sucursales::find($id);
        $sucursal->delete();
        return 'EXITO';
    }
}
