<?php

namespace App\Http\Controllers;

use App\Album;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class PhotographyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $albums = Album::select('*')
            ->orderBy('order','DESC')
            ->get();

        $albums = $albums->map(function ($album) {
            $album->thumb = Voyager::image($album->thumbnail('small', 'image'));
            $album->image = Voyager::image($album->image);
            return $album;
        });
        $tags = $albums->pluck('tag')->unique();

        $data = [
            'albums' => $albums,
            'tags' => $tags,
        ];

        return view('pages.photography', $data);
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
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $AlbumMedias = Album::where('id',$id)->orderBy('id', 'desc')->get();
        $data = [];

        if($AlbumMedias->isEmpty()){
            return redirect('/photography');
        }

        foreach ($AlbumMedias as $Item)
        {
            $images = json_decode($Item->multy_images);
            $i = 0;
            foreach ($images as $image)
            {
                $data[$i]['image'] = Voyager::image($image);
                $data[$i]['thumb'] = Voyager::image($Item->getThumbnail($image, 'small'));
                $i++;
            }
        }

        $data = [
            'AlbumMedia' => $data
        ];

        return view('pages.album', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
