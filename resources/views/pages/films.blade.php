@extends('pages.main-1')
@section('content')
    <div class="fullscreen_block hided">
        <div class="fs_blog_module fw_port_module sorting_block">
            @include('partials.modal_video',['idVideo' => 'bCHqIhiFmEY'])
            @foreach($filmMedias as $key => $film)
                <div class="blogpost_preview_fw fw-portPreview element fashion">
                    <div class="fw-portPreview-wrapper mas_style1 pr40 pb40">
                        <a href="#" class="btn-play-video" data-idvideo="{{ $film->videourl }}"
                           data-url="{{ route('findvideo') }}">
                            <img src="{{ $film->image }}" alt="" class="fw_featured_image" width="540">
                            <div class="fw-portPreview-fadder"></div>
                            <div class="fw-portPreview-content">
                                <h2 class="fw-portPreview-title">{{ $film->name }}</h2>
                                <div class="block_likes">
                                    <div class="fw-portPreview-views">
                                        Ngày Quay {{  date('d-m-Y', strtotime($film->execution_time)) }}
                                        <Quay></Quay>
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
            jQuery('.filter_toggler').click(function () {
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
        jQuery(window).load(function ($) {
            "use strict";
            port_setup();
        });
        jQuery(window).resize(function ($) {
            "use strict";
            port_setup();
        });

        function port_setup() {
            "use strict";
            jQuery('.fw-portPreview-content').each(function () {
                jQuery(this).css('margin-top', -1 * jQuery(this).height() / 2 + 'px');
            });
        }
    </script>
    {{-- center modal --}}
    <style>
        .modal {
            display: none
        }

        .container1 {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: #0000007d;
            text-align: center;
            z-index: 999999;
            display: none;
        }
        .centered1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }


        .box{
            background: #384653;
            border-radius: 2px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.5);
            display: flex;
            justify-content: center; /* align child elements horizontally */
            align-items: center; /* align child elements vertically */
        }
        .ratio-4-3{
            width: 100%;
            height: calc((100vw - 4rem) * (3/4));
            max-height: calc(800px * 3/4);
            max-width: 80vw;

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        @media only screen and (max-width: 600px) {
            .container1:before {
                display: none;
            }
            .container1{
                margin-top: 5rem;
            }
            .container1 iframe{
                width: 300px;
                height: 176px;
            }
        }
    </style>
    <div class="container1">
    </div>

    <script>

        const el = $('.container1');
        const elVideo = el//$('.centered1');

        $('.btn-play-video').click(function (e) {
            e.preventDefault();
            el.show();
            const idvideo = $(this).data('idvideo');
            elVideo.html(`<iframe class="ratio-4-3 box" width="560" height="315" allow='autoplay' src="https://www.youtube.com/embed/${idvideo}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>`);
        });
        $(document).mouseup(function (e) {
            var container = $(".centered1");
            // if the target of the click isn't the container nor a descendant of the container
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                el.hide();
                elVideo.html('')
            }
        });

    </script>
@endsection
