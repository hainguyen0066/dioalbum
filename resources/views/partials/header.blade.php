<header class="main_header">
    <div class="header_scroll">
        <div class="header_wrapper">
            <a href="/" class="logo"><img src="/storage/{{ $menuLogo }}" alt="logo" class="logo_retina"></a>
            <nav>
               @include('partials.menu')
            </nav>
            @if(Request::is('photography'))
            <div class="header_filter">
                <a href="javascript:void(0)" class="filter_toggler">Filter</a>
                <ul class="optionset" data-option-key="filter">
                    <li class="selected"><a href="#filter" class="show_all" data-option-value="*">All Works</a></li>
                    @foreach($tags as $item)
                        <li>
                            <a data-option-value=".{{strtolower($item)}}" href="#filter" title="View all post filed under {{strtolower($item)}}">{{$item}}</a>
                            <a href="#filter" data-option-value="*" class="filter_close">×</a>
                        </li>
                    @endforeach

                </ul>
            </div>
            @endif
            <div class="widget_area">
                <div class="span12">
                    <div class="sidepanel widget_text">
                        <div class="textwidget">
                            <div class="center_text">
                                <img src="/storage/{{ $menuAvatar }}" alt="avatar" class="header_widget" />
                                <h6>{{ $menuAvatarTitle }}</h6>
                                    {!! $menuAvatarDes !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Header Wrapper -->
        @include('partials.footer_wrapper')
        </div><!-- footer_wrapper -->
    </div>
</header>

<script type="text/javascript" src="{{ asset('js/jquery.min.js')}}?v={{ config('diamond.asset.version') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery-ui.min.js')}}?v={{ config('diamond.asset.version') }}"></script>
<script type="text/javascript" src="{{ asset('js/modules.js')}}?v={{ config('diamond.asset.version') }}"></script>
<script type="text/javascript" src="{{ asset('js/theme.js')}}?v={{ config('diamond.asset.version') }}"></script>
@if(!Request::is('films'))
    <script type="text/javascript" src="{{ asset('js/fs_gallery.js')}}?v={{ config('diamond.asset.version') }}"></script>
@endif
