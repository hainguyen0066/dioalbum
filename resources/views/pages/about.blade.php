@extends('pages.main-1')
@section('content')
    <div class="site_wrapper" style="top: 142px; margin-left: 295.5px; opacity: 1;">
        <div class="main_wrapper">
            <div class="content_wrapper">
                <div class="container">
                    <div class="content_block row no-sidebar">
                        <div class="fl-container">
                            <div class="row">
                                <div class="posts-block">
                                    <div class="contentarea">
                                        <div class="row">
                                            <div class="span6 first-module module_number_1 module_cont pb0 module_text_area">
                                                <div class="module_content">
                                                    <p><img src="/storage/{{ $aboutImage ?? '' }}" alt="{{ $aboutTitle ?? '' }}"
                                                            title="{{ $aboutTitle ?? ''}}" width="460" height="344"/>
                                                    </p>
                                                </div>
                                            </div><!-- .module_cont -->
                                            <div class="span6 module_number_2 module_cont no_margin module_text_area pb0">
                                                @if(request()->has('sent-mail'))
                                                    <div class="bg_title"><h1
                                                                class="headInModule">{{ setting('contacts.contacts_mail_title') }}</h1></div>
                                                    <div class="module_content">
                                                        <p>{{ setting('contacts.constacts_mail_des') ?? '' }}</p>
                                                        <p><a href="/"
                                                              class=" shortcode_button btn_small btn_type1">Back Home</a></p>
                                                    </div>
                                                @else
                                                    <div class="bg_title"><h1
                                                                class="headInModule">{{ $aboutTitle ?? ''}}</h1></div>
                                                    <div class="module_content">
                                                        <p>{{ $aboutDescription ?? ''}}</p>
                                                        <p>&nbsp;</p>
                                                        <p><a href="/contact"
                                                              class=" shortcode_button btn_small btn_type1">Contact
                                                                Us</a></p>
                                                    </div>
                                                @endif
                                            </div><!-- .module_cont -->
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
    <div class="custom_bg img_bg bg_about" style="background-image: url('/storage/{{ $aboutBgImage ?? '' }}')"></div>
    <script>
        jQuery(document).ready(function () {
            "use strict";
            centerWindow();
            body.addClass('centered_page');
        });
        jQuery(window).load(function () {
            "use strict";
            centerWindow();
        });
        jQuery(window).resize(function () {
            "use strict";
            centerWindow();
            setTimeout('centerWindow()', 500);
            setTimeout('centerWindow()', 1000);
        });

        function centerWindow() {
            "use strict";
            var setTop = (window_h - site_wrapper.height() - parseInt(site_wrapper.css('padding-top')) - parseInt(site_wrapper.css('padding-bottom'))) / 2;
            var setLeft = (window_w - header_w - site_wrapper.width() - parseInt(site_wrapper.css('padding-right')) - parseInt(site_wrapper.css('padding-left'))) / 2 + header_w;
            if (setTop < 0) {
                site_wrapper.addClass('fixed');
                site_wrapper.css({'top': 0 + 'px', 'margin-left': setLeft + 'px'});
            } else {
                site_wrapper.css({'top': setTop + 'px', 'margin-left': setLeft + 'px'});
                site_wrapper.removeClass('fixed');
                jQuery('body').removeClass('addPadding');
            }
        }
    </script>
@endsection