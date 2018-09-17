<?php

namespace Sandofvega\Bdgeocode;

use Illuminate\Support\ServiceProvider;

class BdgeocodeServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->publishes([
            __DIR__.'/migrations' => database_path('migrations')
        ], 'bdgeocode-migrations');
    }

    public function register()
    {
        //
    }
}
