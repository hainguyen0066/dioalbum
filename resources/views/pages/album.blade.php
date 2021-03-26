@extends('pages.main-1')
@section('content')
    <div class="fullscreen_block hided">
        <div class="fs_blog_module fw_port_module2 mt0 ml0">

            @foreach($AlbumMedia as $key => $item)
                <div class="blogpost_preview_fw fw-portPreview">
                    <div class="fw-portPreview-wrapper featured_items pr0 pb0">
                        <div class="img_block wrapped_img">
                            <a class="featured_ico_link prettyPhoto" href="{{ $AlbumMedia[$key]['image'] }}" data-rel="prettyPhoto[gallery111]" title="">
                                <img width="540" src="{{ $AlbumMedia[$key]['image'] }}" alt="" />
                                <div class="featured_item_fadder"></div>
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="clear"></div>
    </div>
@endsection