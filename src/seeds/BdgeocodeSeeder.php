<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;

class BdgeocodeSeeder extends Seeder
{
    public function run()
    {
        $this->call(DivisionsTableSeeder::class);
    }
}