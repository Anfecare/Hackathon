<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tipodocumentos;

class TipodocumentosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipo = tipodocumentos::all();
        return json_encode($tipo);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tipo = tipodocumentos::create($request->all());
        return json_encode($tipo);
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
        $tipo = tipodocumentos::find($id);
        $tipo->nombre = $request->nombre;
        $tipo->update();
        return json_encode($tipo);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tipo = tipodocumentos::find($id);
        $tipo->delete();
        return 'EXITO';
    }
}
