@extends('pages.main-1')
@section('content')
    <div class="fullscreen_block hided">
        <div class="fs_blog_module fw_port_module sorting_block">
          <div class="modal">
          </div>
            @foreach($albums as $key => $album)
            <div class="blogpost_preview_fw element {{ strtolower($album->tag) }}">
                <div class="fw-portPreview-wrapper mas_style1 pr40 pb40" >
                    <div style="position: relative">
                        <img src="{{ $album->thumb }}" alt="" class="fw_featured_image">
                        <div class="fw-portPreview-fadder"></div>
                        <div class="fw-portPreview-content">
                            <h2 class="fw-portPreview-title">{{ $album->name }}</h2>
                        </div>
                        <div class="wrapper-pretyimg">
                            @if(!empty($album['multy_images']))
                                @foreach($album['multy_images'] as $key => $image)
                                    <a class="prety-img featured_ico_link prettyPhoto" href="{{ $image }}"  data-rel="prettyPhoto[{{ $album->id }}]"  title=""></a>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            <div class="clear"></div>
        </div>
    </div>

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
