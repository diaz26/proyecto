<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model {

  function __construct(){
    parent::__construct();

  }
  public function comprobar($usuario,$password){
    $sql="SELECT COUNT(*) apodo FROM baseo_usuarios WHERE email='$usuario' AND pass='$password'";
    $query=$this->db->query($sql);
    return $query->row();
  }
  public function actualizar_clave($user,$newpass){
    $this->db->where('user',$user);
    $this->db->update('baseo_usuarios',array('pass'=>$newpass));
  }

  public function verificaCorreo($correo)
	{
		$sql="SELECT count(*) cantidad from baseo_usuarios where email='$correo'";
    $query=$this->db->query($sql);
    return $query->row();
	}

  public function registrar($newUser){
    $this->db->insert('baseo_usuarios',$newUser);
    return $this->db->insert_id();
  }

  public function newPage($newpage){
    $this->db->insert('baseo_ecommerce',$newpage);
    return $this->db->insert_id();
  }

  public function traer($usuario,$password){
    $sql="SELECT * FROM baseo_usuarios WHERE email='$usuario' AND pass='$password'";
    $query=$this->db->query($sql);
    //cuando es un solo registro
    return $query->row();
    // cuando son varios registros
    //  return $query->result();
  }


}
