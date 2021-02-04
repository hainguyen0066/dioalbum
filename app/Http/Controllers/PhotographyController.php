<?php

namespace App\Http\Controllers;

use App\Album;
use App\AlbumMedia;
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
            ->has('album_media')
            ->orderBy('order')
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
        $AlbumMedias = AlbumMedia::where('album_id',$id)->orderBy('id', 'desc')->get();
        if($AlbumMedias->isEmpty()){
            return redirect('/photography');
        }
        $AlbumMedia = $AlbumMedias->map(function ($AlbumMedia) {
            $AlbumMedia->thumb = Voyager::image($AlbumMedia->thumbnail('small', 'image'));
            $AlbumMedia->image = Voyager::image($AlbumMedia->image);

            return $AlbumMedia;
        });
        $data = [
            'AlbumMedia' => $AlbumMedia,
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
