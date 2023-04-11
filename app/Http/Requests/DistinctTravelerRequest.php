<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

use Illuminate\Http\Exceptions\HttpResponseException;

use Illuminate\Contracts\Validation\Validator;



class DistinctTravelerRequest extends FormRequest

{

    public function rules()

    {

        return [
            'from_date' => 'required',
            'to_date' => 'required'

        ];

    }



    public function failedValidation(Validator $validator)

    {

        throw new HttpResponseException(response()->json([

            'success'   => false,

            'message'   => 'Validation errors',

            'data'      => $validator->errors()

        ]));

    }



    public function messages()

    {

        return [

            'from_date.required' => 'from_date is required',
            'to_date.required' => 'to_date is required',

        ];

    }

}