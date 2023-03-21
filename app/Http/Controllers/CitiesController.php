<?php

namespace App\Http\Controllers;

use App\Models\cities;
use Illuminate\Http\Request;

class CitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos['cities']=cities::paginate(5);
        return view('cities.index', $datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datosCities = request()->except('_token');
        cities::insert($datosCities);
        return redirect('cities');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\cities  $cities
     * @return \Illuminate\Http\Response
     */
    public function show(cities $cities)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\cities  $cities
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cities=cities::findOrFail($id);
        return view('cities.edit', compact('cities'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\cities  $cities
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        $datosCities = request()->except(['_token', '_method']);
        cities::where('id', '=', $id)->update($datosCities);

        $cities=cities::findOrFail($id);
        return view('cities.edit', compact('cities'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\cities  $cities
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cities=cities::findOrFail($id);
        cities::destroy($id);
        return redirect('cities');
    }
}
