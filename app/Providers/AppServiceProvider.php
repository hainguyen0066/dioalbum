<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // SHARE DATA CHO CÁC VIEa

        $dataMenu = [
            'menuLogo'          => setting('menu.menu_logo'),
            'menuAvatar'        => setting('menu.menu_avatar'),
            'menuAvatarTitle'   => setting('menu.avatar_title'),
            'menuCopyright'     => setting('menu.menu_copyright'),
            'menuAvatarDes'     => setting('menu.menu_avatar_description'),
            'menuFacebookLink'  => setting('menu.menu_facebook_link'),
            'menuPinterestLink' => setting('menu.menu_pinterest_link'),
            'menuInstagramLink' => setting('menu.menu_instagram_link')
        ];
        View::share($dataMenu);
    }
}
