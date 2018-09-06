<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UnionsTableSeeder extends Seeder
{
    public function run()
    {
        $unions = json_decode(file_get_contents(__DIR__.'/../data/unions.json'), true);
        DB::table('unions')->insert($unions);
    }
}
