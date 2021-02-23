@extends('pages.main-1')
@section('content')
    <div class="gallery_post_controls">
        <a href="javascript:history.back()" class="gallery_post_close"></a>
        <a href="javascript:void(0)" class="gallery_post_like gallery_likes gallery_likes_add"><i class="stand_icon icon-heart-o"></i></a>
    </div>

    <div class="custom_bg img_bg def_bg"></div>

    <script>
        gallery_set = [
                @foreach($AlbumMedia as $key => $item)
            {type: "image", image: "{{ $AlbumMedia[$key]['image'] }}", thmb: "{{ $AlbumMedia[$key]['thumb'] }}", alt: "", title: "", description: "", titleColor: "#000000", descriptionColor: "#000000",href :"#"},
            @endforeach
        ]
        jQuery(document).ready(function(){
            "use strict";
            jQuery('.custom_bg').remove();
            jQuery('.main_header').removeClass('hided');
            jQuery('html').addClass('single-gallery');

            jQuery('.control_toggle').click(function(){
                jQuery('html').toggleClass('hide_controls');
            });

            jQuery('html').addClass('hasPag');
            jQuery('body').fs_gallery({
                fx: 'fade', /*fade, zoom, slide_left, slide_right, slide_top, slide_bottom*/
                fit: 'no_fit',
                slide_time: 3000, /*This time must be < then time in css*/
                autoplay: false,
                show_controls: true,
                slides: gallery_set
            });
            jQuery('.fs_share').click(function(){
                jQuery('.fs_fadder').removeClass('hided');
                jQuery('.fs_sharing_wrapper').removeClass('hided');
                jQuery('.fs_share_close').removeClass('hided');
            });
            jQuery('.fs_share_close').click(function(){
                jQuery('.fs_fadder').addClass('hided');
                jQuery('.fs_sharing_wrapper').addClass('hided');
                jQuery('.fs_share_close').addClass('hided');
            });
            jQuery('.fs_fadder').click(function(){
                jQuery('.fs_fadder').addClass('hided');
                jQuery('.fs_sharing_wrapper').addClass('hided');
                jQuery('.fs_share_close').addClass('hided');
            });

            jQuery('.fs_controls').addClass('up_me');
            jQuery('.fs_title_wrapper ').addClass('up_me');

            jQuery('.close_controls').click(function(){
                if (jQuery(this).hasClass('open_controls')) {
                    jQuery('.fs_controls').removeClass('hide_me');
                    jQuery('.fs_title_wrapper ').removeClass('hide_me');
                    jQuery('.fs_thmb_viewport').removeClass('hide_me');
                    jQuery('header.main_header').removeClass('hide_me');
                    jQuery(this).removeClass('open_controls');
                } else {
                    jQuery('header.main_header').addClass('hide_me');
                    jQuery('.fs_controls').addClass('hide_me');
                    jQuery('.fs_title_wrapper ').addClass('hide_me');
                    jQuery('.fs_thmb_viewport').addClass('hide_me');
                    jQuery(this).addClass('open_controls');
                }
            });
        });
    </script>
@endsection
