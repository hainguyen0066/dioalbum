<?php

namespace App\Http\Controllers;

use App\Album;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $albumMedias = Album::select('*')->orderBy('order','DESC')->limit(10)->get();

        $albumMedias = $albumMedias->map(function ($item) use ($albumMedias) {
            $item->name  = $item['name'];
            $image = json_decode($item->multy_images)['0'];
            $item->image = Voyager::image($image);
            $item->thumb = Voyager::image($item->getThumbnail($image, 'small'));

            return $item;
        });

        $data = [
            'albumMedias' => $albumMedias,
        ];

        return  view('pages.home', $data);
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
