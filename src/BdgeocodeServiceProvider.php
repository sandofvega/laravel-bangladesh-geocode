<?php

namespace Sandofvega\Bdgeocode;

use Illuminate\Support\ServiceProvider;

class BdgeocodeServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->mergeConfigFrom(
            __DIR__.'/config/bdgeocode.php', 'bdgeocode'
        );

        $this->publishes([
            __DIR__.'/config/bdgeocode.php' => config_path('bdgeocode.php'),
        ], 'bdgeocode-config');

        $this->publishes([
            __DIR__.'/Models/Division.blade.php' => config('bdgeocode.models_path').'/Division.php',
            __DIR__.'/Models/District.blade.php' => config('bdgeocode.models_path').'/District.php',
            __DIR__.'/Models/Thana.blade.php' => config('bdgeocode.models_path').'/Thana.php',
            __DIR__.'/Models/Union.blade.php' => config('bdgeocode.models_path').'/Union.php'
        ], 'bdgeocode-models');

        $this->publishes([
            __DIR__.'/migrations/create_bdgeocode_tables.blade.php' => database_path('migrations/2014_10_12_200000_create_bdgeocode_tables.php')
        ], 'bdgeocode-migrations');
    }

    public function register()
    {
        //
    }
}
