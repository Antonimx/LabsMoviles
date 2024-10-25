<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class TarjetaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'propietario' => ['bail','required', 'string','max:50'],
            'marca' => ['bail','required', 'string','max:20'],
            'numero' => ['bail','required', 'digits:16',Rule::unique('tarjetas', 'numero')->ignore($this->tarjeta)],
            'valido_hasta' => ['bail','required', 'regex:/^(0[1-9]|1[0-2])\/\d{2}$/'],
            'cupo' => ['bail','required', 'numeric', 'integer', 'between:0,5000000'],
            'monto_utilizado' => ['bail','required', 'numeric', 'integer', 'min:0','lte:cupo'],
        ];  
    }

    public function messages()
    {
        return [
            'propietario.required' => 'El campo propietario es obligatorio.',
            'propietario.string' => 'El campo propietario debe ser una cadena de texto.',
            'propietario.max' => 'El campo propietario no puede superar los 50 caracteres.',

            'marca.required' => 'El campo marca es obligatorio.',
            'marca.string' => 'El campo marca debe ser una cadena de texto.',
            'marca.max' => 'El campo marca no puede superar los 20 caracteres.',

            'numero.required' => 'El campo número es obligatorio.',
            'numero.digits' => 'El campo número debe tener exactamente 16 dígitos.',
            'numero.unique' => 'El número de tarjeta ya se encuentra registrado.',

            'valido_hasta.required' => 'El campo \'válido hasta\' es obligatorio.',
            'valido_hasta.regex' => 'El campo \'válido hasta\' debe estar en el formato MM/AA.',

            'cupo.required' => 'El campo cupo es obligatorio.',
            'cupo.numeric' => 'El campo cupo debe ser un número entero.',
            'cupo.integer' => 'El campo cupo debe ser un número entero.',
            'cupo.between' => 'El campo cupo debe estar entre 0 y 5.000.000.',

            'monto_utilizado.required' => 'El campo monto utilizado es obligatorio.',
            'monto_utilizado.numeric' => 'El campo monto utilizado debe ser un número entero.',
            'monto_utilizado.integer' => 'El campo monto utilizado debe ser un número entero.',
            'monto_utilizado.min' => 'El campo monto utilizado debe ser al menos 0.',
            'monto_utilizado.lte' => 'El campo monto utilizado no puede ser mayor que el cupo.',
        ];
    }

}
