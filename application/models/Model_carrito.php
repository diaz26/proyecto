<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_carrito extends CI_Model {

  function __construct(){
    parent::__construct();

  }

  function con_carrito_pro($id= NULL){
    $sql = "SELECT bp.cod_producto AS codigo, bp.Precio AS precio, bp.Nombre AS nombre, bp.Imagen AS foto
    from baseo_productos bp WHERE bp.cod_producto='$id'";
    $query = $this->db->query($sql);
    return $query->row();
  }

  function buscaPedido($pedido){
    $sql = "SELECT bp.* from baseo_pedidos bp WHERE bp.cod_pedido='$pedido'";
    $query = $this->db->query($sql);
    return $query->row();
  }

  public function insertaPedido($new_pedido){
    $this->db->insert('baseo_pedidos',$new_pedido);
    return $this->db->insert_id();
  }

  public function insertPago($new_pago){
    $this->db->insert('baseo_pagos',$new_pago);
    return $this->db->insert_id();
  }

  public function inserta_pru($new_pru){
    $this->db->insert('prueba_pago',$new_pru);
    return $this->db->insert_id();
  }


}
