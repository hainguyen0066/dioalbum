<?php

namespace App\Http\Controllers;

use App\Film;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class FilmsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $filmMedias =  Film::select('*')
                            ->orderBy('order')
                            ->get();
        $filmMedias = $filmMedias->map(function ($item) use ($filmMedias) {

            $item->name  = $item['name'];
            $item->image = Voyager::image($item->image);

            return $item;
        });
        $data = [
            'filmMedias' => $filmMedias,
        ];

        return  view('pages.films',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getVideo(Request $request)
    {
        $data = $request->all();

        return view('partials.modal_video',$data);
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
