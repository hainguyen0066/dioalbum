const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */
mix.copyDirectory('resources/img', 'public/img')
    .css('resources/css/custom.css', 'public/css')
    .css('resources/css/responsive.css', 'public/css')
    .css('resources/css/theme.css', 'public/css')
    .js('resources/js/bootstrap.js', 'public/js')
    .js('resources/js/jquery.min.js', 'public/js')
    .js('resources/js/jquery-ui.min.js', 'public/js')
    .js('resources/js/jquery.countdown.min.js', 'public/js')
    .js('resources/js/jquery.isotope.min.js', 'public/js')
    .js('resources/js/modules.js', 'public/js')
    .js('resources/js/theme.js', 'public/js')
    .js('resources/js/sorting.js', 'public/js')
    .options({
        processCssUrls: false
    });

if (mix.inProduction()) {
    mix.version();
}