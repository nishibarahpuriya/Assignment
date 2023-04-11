<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cityTravelHistory extends Model
{
    use HasFactory;

    public static function travelerList($request)
    {
        $travelerId = $request->get('traveler_id');
        $travelerListData = cityTravelHistory::select('cities.city_name','city_travel_histories.from_date','city_travel_histories.to_date');
        $travelerListData = $travelerListData->leftJoin('cities', 'city_travel_histories.city_id', '=', 'cities.id');
        $travelerListData = $travelerListData->where('traveler_id', $travelerId);
        $travelerListData = $travelerListData->orderBy('city_travel_histories.from_date', 'asc');
        $travelerListData = $travelerListData->get();
        if($request->get('from_date') != ''){
            //can write where clouse here
        }
        if($request->get('to_date') != ''){
            //can write where clouse here
        }
        return $travelerListData;

    }

    public static function distinctTravellers($request){
        $fromDate = $request->get('from_date');
        $toDate = $request->get('to_date');
        $distinctTravelerListData = cityTravelHistory::select('cities.city_name','city_travel_histories.from_date','city_travel_histories.to_date');
        $distinctTravelerListData = $distinctTravelerListData->leftJoin('cities', 'city_travel_histories.city_id', '=', 'cities.id');
        $distinctTravelerListData = $distinctTravelerListData->where('from_date', '>=', $fromDate);
        $distinctTravelerListData = $distinctTravelerListData->where('to_date', '<=', $toDate);
        $distinctTravelerListData = $distinctTravelerListData->get();
        return $distinctTravelerListData;

        

    }

}
