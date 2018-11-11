<?php

namespace Sandofvega\Bdgeocode;

use Illuminate\Support\ServiceProvider;

class BdgeocodeServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->publishes([
            __DIR__.'/Models/Division.txt' => app_path('Division.php'),
            __DIR__.'/Models/District.txt' => app_path('District.php'),
            __DIR__.'/Models/Thana.txt' => app_path('Thana.php'),
            __DIR__.'/Models/Union.txt' => app_path('Union.php')
        ], 'bdgeocode-models');

        $this->publishes([
            __DIR__.'/migrations/create_bdgeocode_tables.txt' => database_path('migrations/2014_10_12_200000_create_bdgeocode_tables.php')
        ], 'bdgeocode-migrations');
    }

    public function register()
    {
        //
    }
}
