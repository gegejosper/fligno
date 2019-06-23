<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    //
    protected $fillable = [
        'userid', 'address', 'profileimage', 'contactnum',
    ];

    public function user(){
        return $this->belongsTo('App\User', 'userid', 'id');
    }
}
