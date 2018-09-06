<?php

namespace Sandofvega\Bdgeocode;

use Illuminate\Support\ServiceProvider;

class BdgeocodeServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->loadMigrationsFrom(__DIR__.'/migrations');
    }

    public function register()
    {
        //
    }
}
