<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Employee extends Model {
   // use SoftDeletes;

    public $timestamps = true;
    protected $table = 'employee';
    protected $fillable = array('employee_idnumber','employee_name','employee_surname'
    ,'employee_age','employee_address','created_at','updated_at','guesthistory_id');

    public function guesthistory()
    {
        return $this->belongsTo('App\Models\GuestHistory');
    }
    public function nametitle()
    {
        return $this->belongsTo('App\Models\NameTitle');
    }

}