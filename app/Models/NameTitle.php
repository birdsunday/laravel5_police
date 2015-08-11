<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Created by PhpStorm.
 * User: Hp060714
 * Date: 25/3/2558
 * Time: 1:14
 */

class NameTitle  extends Model{
    use SoftDeletes;
    public $timestamps = true;
    protected $table = 'nametitle';

    public function dataspouse()
    {
        return $this->hasMany('App\Models\DataSpouse');
    }
    public function criminalhistory()
    {
        return $this->hasMany('App\Models\CriminalHistory');
    }
    public function datachild()
    {
        return $this->hasMany('App\Models\DataChild');
    }
    public function employee()
    {
        return $this->hasMany('App\Models\Employee');
    }
    public function guesthistory()
    {
        return $this->hasMany('App\Models\GuestHistory');
    }
    public function personfamily()
    {
        return $this->hasMany('App\Models\PersonFamily');
    }



}