<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreGameRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'game_id'   => 'required|unique:games|integer',
            'name'      => 'required|string|max:255|min:3',
            'link'      => 'required|url|max:1000|min:3',
            'image'     => 'required|url'
        ];
    }

    public function messages()
    {
        return [
            'game_id.required'  => 'El campo ID es obligatorio',
            'game_id.unique'    => 'El campo ID es unico',
            'game_id.integer'   => 'El campo ID es númerico',
            'name.required'     => 'El campo Nombre es obligatorio',
            'name.string'     => 'El campo Nombre es de texto',
            'name.max'     => 'El campo Nombre acepta maximo :max caracteres',
            'name.min'     => 'El campo Nombre acepta minimo :min caracteres',
            'link.required'     => 'El campo Url es obligatorio',
            'link.url'     => 'El campo Url debe ser una url valida',
            'link.max'     => 'El campo Url acepta minimo :max caracteres',
            'link.min'     => 'El campo Url acepta minimo :min caracteres',
            'image.required' => 'El campo Imagen es obligatorio',
            'image.url' => 'El campo Imagen debe ser una url valida'
        ];
    }
}
