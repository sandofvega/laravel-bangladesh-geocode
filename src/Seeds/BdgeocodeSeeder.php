<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;

class BdgeocodeSeeder extends Seeder
{
    public function run()
    {
        $this->call(DivisionsTableSeeder::class);
        $this->call(DistrictsTableSeeder::class);
        $this->call(ThanasTableSeeder::class);
        $this->call(UnionsTableSeeder::class);
    }
}