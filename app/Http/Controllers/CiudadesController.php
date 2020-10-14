<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ciudades;
use App\Models\departamentos;

class CiudadesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
        $ciudad = ciudades::all();
        $departamento = departamentos::all();
        return json_encode([$ciudad, $departamento]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ciudad = ciudades::create($request->all());
        return json_encode($ciudad);
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
        $ciudad = ciudades::find($id);
        $ciudad->id = $request->id;
        $ciudad->nombre = $request->nombre;
        $ciudad->departamento = $request->departamento;
        $ciudad->update();
        return json_encode($ciudad);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ciudad = ciudades::find($id);
        $ciudad->delete();
        return 'EXITO';
    }
}
