@extends('pages.main-1')
@section('content')
    <div class="fullscreen_block hided">
        <div class="fs_blog_module fw_port_module sorting_block">
          <div class="modal">
          </div>
            @foreach($albums as $key => $album)
            <div class="blogpost_preview_fw fw-portPreview element {{ strtolower($album->tag) }}">
                <div class="fw-portPreview-wrapper mas_style1 pr40 pb40">
                    <a href="/photography/{{ $album->id }}">
                        <img src="{{ $album->thumb }}" alt="" class="fw_featured_image" width="540">
                        <div class="fw-portPreview-fadder"></div>
                        <div class="fw-portPreview-content">
                            <h2 class="fw-portPreview-title">{{ $album->name }}</h2>
                            <div class="block_likes">
                                <div class="fw-portPreview-views">
                                   Ngày Chụp {{  date('d-m-Y', strtotime($album->published_at)) }}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            @endforeach

            <div class="clear"></div>
        </div>
    </div>

    <div class="custom_bg img_bg def_bg"></div>

    <script>
        jQuery(document).ready(function ($) {
            "use strict";
            jQuery('.filter_toggler').click(function(){
                jQuery('.optionset').slideToggle(300);
                jQuery('.filter_toggler').toggleClass('toggled');
            });
            if (window_w < 760) {
                jQuery('.optionset').slideToggle(1);
                jQuery('.filter_toggler').toggleClass('toggled');
            }

            jQuery('.custom_bg').remove();
            port_setup();
        });
        jQuery(window).load(function($){
            "use strict";
            port_setup();
        });
        jQuery(window).resize(function($){
            "use strict";
            port_setup();
        });
        function port_setup() {
            "use strict";
            jQuery('.fw-portPreview-content').each(function(){
                jQuery(this).css('margin-top', -1*jQuery(this).height()/2+'px');
            });
        }
    </script>

    <script type="text/javascript" src="https://livewp.site/html/diamond/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="https://livewp.site/html/diamond/js/sorting.js"></script>
@endsection
