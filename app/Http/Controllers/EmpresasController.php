<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\empresas;
use App\Models\ciudades;

class EmpresasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empresa = empresas::all();
        $ciudad = ciudades::all();
        return json_encode([$ciudad, $empresa]);
        return json_encode();

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $empresa = empresas::create($request->all());
        return json_encode($empresa);
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
        $empresa = empresas::find($id);
        $empresa->id = $request->id;
        $empresa->nombre = $request->nombre;
        $empresa->telefono = $request->telefono;
        $empresa->direccion = $request->direccion;
        $empresa->ciudad = $request->ciudad;
        $empresa->update();
        return json_encode($empresa);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $empresa = empresas::find($id);
        $empresa->delete();
        return 'ÉXITO';
    }
}
