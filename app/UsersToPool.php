<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsersToPool extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'users_to_pools';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'pool_id', 'user_id', 'pool_position'
    ];
}
