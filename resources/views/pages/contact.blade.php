@extends('pages.about')
@section('content')
    <div class="site_wrapper">
        <div class="main_wrapper">
            <div class="content_wrapper">
                <div class="container">
                    <div class="content_block row no-sidebar">
                        <div class="fl-container">
                            <div class="row">
                                <div class="posts-block">
                                    <div class="page_title_block">
                                        <h1 class="title">{{ $title ?? '' }}</h1>
                                    </div>
                                    <div class="contentarea">
                                        <div class="row">
                                            <div class="span12 first-module module_number_1 module_cont pb40 module_text_area">
                                                <div class="module_content">
                                                    <p>{{ $description ?? '' }}</p>
                                                </div>
                                            </div><!-- .module_cont -->
                                        </div>
                                        <div class="row">
                                            <div class="span9 module_number_2 module_cont pb30 module_html">
                                                <div class="module_content contact_form">
                                                    <div id="note"></div>
                                                    <div id="fields">
                                                        <form id="ajax-contact-form1" action="/contact" method="post">
                                                            <input type="text"  required name="name" value="" placeholder="name *" />
                                                            <input type="email"  required name="email" value="" placeholder="email *" />
                                                            <input type="text" required name="subject" value="" placeholder="subject" />
                                                            <textarea name="message" id="message" placeholder="message *"></textarea>
                                                            <input type="submit" value="send message!" >
                                                            @csrf
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span3 module_number_3 module_cont no_bg pb40 module_contact_info">
                                                <ul class="contact_info_list">
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="fas fa-map-marker-alt"></i></span>
                                                            <div class="contact_info_text">{{ $address ?? '' }}</div>
                                                        </div>
                                                    </li>
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="fas fa-phone-volume"></i></span>
                                                            <div class="contact_info_text">{{ $phone ?? '' }}</div>
                                                        </div>
                                                    </li>
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="far fa-envelope"></i></span>
                                                            <div class="contact_info_text"><a href="mailto:{{ $mail }}">{{ $mail ?? '' }}</a></div>
                                                        </div>
                                                    </li>
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="fab fa-facebook-f"></i></span>
                                                            <div class="contact_info_text"><a href="{{ $facebook ?? '' }}">facebook</a></div>
                                                        </div>
                                                    </li>
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="fab fa-youtube"></i></span>
                                                            <div class="contact_info_text"><a href="{{ $youtube ?? '' }}">youtube</a></div>
                                                        </div>
                                                    </li>
                                                    <li class="contact_info_item">
                                                        <div class="contact_info_wrapper">
                                                            <span class="contact_info_icon"><i class="fab fa-instagram"></i></span>
                                                            <div class="contact_info_text"><a href="{{ $instagram ?? '' }}">instagram</a></div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="span12 module_number_4 module_cont pb0 module_google_map">
                                                <div class="module_content">
                                                    {!! $map !!}
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- .main_wrapper -->
    </div>

    <div class="custom_bg img_bg def_bg"></div>
    <script>
        jQuery(document).ready(function(){
            "use strict";
            setUpWindow();
        });
        jQuery(window).load(function(){
            "use strict";
            setUpWindow();
        });
        jQuery(window).resize(function(){
            "use strict";
            setUpWindow();
            setTimeout('setUpWindow()',500);
            setTimeout('setUpWindow()',1000);
        });
        function setUpWindow() {
            "use strict";
            main_wrapper.css('min-height', window_h-parseInt(site_wrapper.css('padding-top')) - parseInt(site_wrapper.css('padding-bottom'))+'px');
        }
    </script>
@endsection