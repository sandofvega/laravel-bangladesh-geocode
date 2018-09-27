<?php

namespace Sandofvega\Bdgeocode;

use Illuminate\Support\ServiceProvider;

class BdgeocodeServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->publishes([
            __DIR__.'/migrations/create_bdgeocode_tables.blade.php' => database_path('migrations/2014_10_12_200000_create_bdgeocode_tables.php')
        ], 'bdgeocode-migrations');
    }

    public function register()
    {
        //
    }
}
