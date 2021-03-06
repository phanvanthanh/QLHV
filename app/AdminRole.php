<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminRole extends Model
{
    protected $table='admin_role';
    protected $fillable=['id','role_name', 'id_don_vi', 'state'];
    public $timestamps=false;
    public function User(){
    	return $this->hasMany('App\User');
    }

    public function AdminRule(){
    	return $this->hasMany('App\AdminRule');
    }

    public static function layDanhSachNhomQuyen(){
    	$data=AdminRole::select('admin_role.id', 'admin_role.role_name','admin_role.state')
            ->where('admin_role.state','=',1)
            ->get()->toArray(); // điều kiện nhóm quyền còn hoạt động
         return $data;
    }
}
