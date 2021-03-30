@extends('pages.main-1')
@section('content')
    <a href="javascript:void(0)" class="control_toggle"></a>
    <script>
        // Đổ Dữ Liệu Hình Ảnh Ra Ngoài view
        gallery_set = [
                @foreach($albumMedias as $key => $item)
            {type: "image", image: "{{ Voyager::image($item->image) }}", thmb: "{{ Voyager::image($item->image) }}", alt: "{{ $item->name }}", title: "{{ $item->name }}", description: "{{ $item->name }}", titleColor: "#ffffff", descriptionColor: "#ffffff",href : '/photography/' + "{{ $item->id }}" },
            @endforeach
        ]

        jQuery(document).ready(function(){
            "use strict";
            jQuery('html').addClass('hasPag');
            jQuery('.custom_bg').remove();
            jQuery('body').fs_gallery({
                fx: 'fade', /*fade, zoom, slide_left, slide_right, slide_top, slide_bottom*/
                fit: 'no_fit',
                slide_time: 3300, /*This time must be < then time in css*/
                autoplay: 1,
                show_controls: 1,
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

            jQuery('.main_header').removeClass('hided');
            jQuery('html').addClass('single-gallery');
            jQuery('.control_toggle').click(function(){
                jQuery('html').toggleClass('hide_controls');
            });
        });
    </script>

@endsection