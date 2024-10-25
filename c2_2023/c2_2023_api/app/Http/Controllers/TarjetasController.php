<?php

namespace App\Http\Controllers;

use App\Models\Tarjeta;
use Illuminate\Http\Request;
use App\Http\Requests\TarjetaRequest;

class TarjetasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Tarjeta::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(TarjetaRequest $request)
    {
        //Asigna color según la marca
        $colores = [
            'Visa' => '1771B7',
            'MasterCard' => 'F77100',
            'American Express' => 'A7CEAE',
            'Diners Club' => '585856',
        ];
        //Agrega el atributo color al request
        $request->merge(['color' => $colores[$request->marca]]);

        //Crea el objeto en BD y lo retorna
        return Tarjeta::create($request->all());
    }

    /**
     * Display the specified resource.
     */
    public function show(Tarjeta $tarjeta)
    {
        return $tarjeta;
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(TarjetaRequest $request, Tarjeta $tarjeta)
    {
        //Asigna color según la marca
        $colores = [
            'Visa' => '1771B7',
            'MasterCard' => 'F77100',
            'American Express' => 'A7CEAE',
            'Diners Club' => '585856',
        ];
        //Agrega el atributo color al request
        $request->merge(['color' => $colores[$request->marca]]);

        //Aplica cambios en BD y retorna el objeto actualizado
        $tarjeta->update($request->all());
        return $tarjeta;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tarjeta $tarjeta)
    {
        return $tarjeta->delete();
    }
}
