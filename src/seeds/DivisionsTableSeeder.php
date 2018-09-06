<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DivisionsTableSeeder extends Seeder
{
    public function run()
    {
        $divisions = json_decode(file_get_contents(__DIR__.'/../data/divisions.json'), true);
        DB::table('divisions')->insert($divisions);
    }
}
