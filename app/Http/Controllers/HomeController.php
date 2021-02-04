<?php

namespace App\Http\Controllers;

use App\Album;
use App\AlbumMedia;
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
        $albumsId    = array_keys( Album::select('*')->get()->keyBy('id')->toArray());

        $albumMedias = AlbumMedia::whereIn('album_id',$albumsId)->orderBy('order')->limit(10)->get();
        $albumMedias = $albumMedias->map(function ($item) use ($albumMedias) {

            $item->name  = $item['name'];
            $item->thumb = Voyager::image($item->thumbnail('small', 'image'));
            $item->image = Voyager::image($item->image);

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
