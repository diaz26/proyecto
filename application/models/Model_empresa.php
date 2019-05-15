<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_empresa extends CI_Model {

  function __construct(){
    parent::__construct();

  }
  public function consultPedidosP($id){
    $sql= "SELECT * FROM baseo_pagos WHERE id_usuario=$id and estado_pedido=1 order by fecha_pago asc";
    $query=$this->db->query($sql);
    return $query->result();
  }

  public function productosPedidos(){
    $sql= "SELECT pp.*, bp.Imagen as img, bp.descripcion as descri FROM productos_pedidos pp, baseo_productos bp where pp.id_producto=bp.id";
    $query=$this->db->query($sql);
    return $query->result();
  }

  public function consultPedidosD($id){
    $sql= "SELECT * FROM baseo_pagos WHERE id_usuario=$id and estado_pedido=2 order by fecha_pago asc";
    $query=$this->db->query($sql);
    return $query->result();
  }

  public function consultPedidos($id){
    $sql= "SELECT * FROM baseo_pagos WHERE id_usuario=$id order by fecha_pago desc ";
    $query=$this->db->query($sql);
    return $query->result();
  }

}
