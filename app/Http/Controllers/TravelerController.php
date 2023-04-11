<?php

namespace App\Http\Controllers;

use App\Models\traveler;
use App\Models\cityTravelHistory;
use Illuminate\Http\Request;
use App\Http\Requests\TravelHistoryRequest;
use App\Http\Requests\DistinctTravelerRequest;

class TravelerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function travelHistory(TravelHistoryRequest $request)
    {
       $travelerList = cityTravelHistory::travelerList($request);
       return response()->json([
        "success" => true,
        "message" => "Traveler Histtory",
        "data" => $travelerList
        ]);


    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function distinctTravellers(DistinctTravelerRequest $request){
        $distinctTravellersList = cityTravelHistory::distinctTravellers($request);
        return response()->json([
         "success" => true,
         "message" => "Traveler Histtory",
         "data" => $distinctTravellersList
         ]);
    } 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\traveler  $traveler
     * @return \Illuminate\Http\Response
     */
    public function show(traveler $traveler)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\traveler  $traveler
     * @return \Illuminate\Http\Response
     */
    public function edit(traveler $traveler)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\traveler  $traveler
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, traveler $traveler)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\traveler  $traveler
     * @return \Illuminate\Http\Response
     */
    public function destroy(traveler $traveler)
    {
        //
    }
}
