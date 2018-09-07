<?php

namespace Sandofvega\Bdgeocode\Models;

use Illuminate\Database\Eloquent\Model;

class Thana extends Model
{
    public function unions()
    {
        return $this->hasMany(Union::class);
    }

    public function district()
    {
        return $this->belongsTo(District::class);
    }
}