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
            $images = json_decode($album->multy_images);
            $album->thumb = Voyager::image($album->image);
            $dataImg = [];
            if (!empty($images))
            {
                foreach ($images as $key => $image) {
                    array_push($dataImg,Voyager::image($image));
                    $album->multy_images = $dataImg;
                }
            }

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
