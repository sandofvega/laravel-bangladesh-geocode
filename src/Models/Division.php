<?php

namespace Sandofvega\Bdgeocode\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    public function districts()
    {
        return $this->hasMany(District::class);
    }
}