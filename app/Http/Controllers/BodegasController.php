<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bodegas;
use App\Models\sucursales;

class BodegasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bodega = bodegas::all();
        $sucursal = sucursales::all();
        return json_encode(['bodegas'=>$bodega, 'sucursales'=>$sucursal]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $bodega = bodegas::create($request->all());
        return json_encode($bodega);
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
        $bodega = bodegas::find($id);
        $bodega->nombre = $request->nombre;
        $bodega->sucursal = $request->sucursal;
        $bodega->update();
        return json_encode($bodega);  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $bodega = bodegas::find($id);
        $bodega->delete();
        return 'EXITO';
    }
}
