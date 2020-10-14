<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\departamentos;

class DepartamentosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departamento = departamentos::all();
        return json_encode($departamento);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $departamento = departamentos::create($request->all());
        return json_encode($departamento);
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
        $departamento = departamentos::find($id);
        $departamento->id = $request->id;
        $departamento->departamento = $request->departamento;
        $departamento->update();
        return json_encode($departamento);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $departamento = departamentos::find($id);
        $departamento->delete();
        return 'Exito';
    }
}
