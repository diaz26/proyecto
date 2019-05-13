<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Carrito extends CI_Controller {


  public function __construct()
  {
    parent::__construct();
    $this->load->model('model_carrito');
    $this->load->model('model_informacion');
    $this->load->model('model_header');
  }

  public function carga_carrito($ban=NULL){
    $result['Subtotalcar']= $this->caculo_Subtotal_carrito();
    $head['page']=$this->model_informacion->consultPageO($ban);
    $head['head']=$this->model_header->consultOficial(1);
    $this->load->view('header_ecommerce',$head);
    $this->load->view('view_carrito',$result);
    //$this->load->view('footer_ecommerce');
  }


  public function empresa(){

    if(isset($_SESSION['emp'])){
      $id=$_SESSION['emp'];
      $paa=$id->page;
      return $paa;
    }
  }

  public function caculo_Subtotal_carrito(){

    if(isset($_SESSION['carrito'])){
      $subtotal=0;
      $datos=$_SESSION['carrito'];
      for($i=0;$i<count($datos);$i++){
        $subtotal= $subtotal + ($datos[$i]['Cantidad']*$datos[$i]['Precio']);
      }
      return $subtotal;
    }
  }

  public function agrega_item_carrito(){
    if(isset($_SESSION['carrito']) and isset($_GET['id'])){
      $arreglo=$_SESSION['carrito'];
      $encontro=false;
      $numero=0;
      for($i=0;$i<count($arreglo);$i++){
        if($arreglo[$i]['Id']==$_GET['id'] ){
          $encontro=true;
          $numero=$i;
        }
      }
      if($encontro==true and $_GET['ban']=="agrega"){
        $arreglo[$numero]['Cantidad']= $arreglo[$numero]['Cantidad']+1;
        $_SESSION['carrito']=$arreglo;
        redirect("carrito/carga_carrito/",  'refresh');
      }elseif($encontro==true and $_GET['ban']=="delete" ){
        $arreglo[$numero]['Cantidad']= $arreglo[$numero]['Cantidad']-1;
        if ($arreglo[$numero]['Cantidad']==0){
          unset($arreglo[$numero]);
          $arreglo = array_values($arreglo);
        }
        $_SESSION['carrito']=$arreglo;
        $page=$_GET['page'];
        redirect("carrito/carga_carrito/$page",  'refresh');
      }else{
        $nombre="";
        $precio=0;
        $urlimagen="";
        $producto=$this->model_carrito->con_carrito_pro($_GET['id']);
        $nombre=$producto->nombre;
        $precio=$producto->precio;
        $urlimagen=$producto->foto;
        //$descuento=$producto->descuento;
        $datosNuevos=array('Id'=>$_GET['id'],
        'Nombre'=>$nombre,
        'Precio'=>$precio,
        'Cantidad'=>1,
        'Urlimagen'=>$urlimagen,
      );
      array_push($arreglo,$datosNuevos);
      $_SESSION['carrito']=$arreglo;
      $page=$_GET['page'];
      redirect("carrito/carga_carrito/$page",  'refresh');
    }
  }else{
    if(isset($_GET['id'])){
      $nombre="";
      $precio=0;
      $urlimagen="";
      $producto=$this->model_carrito->con_carrito_pro($_GET['id']);
      $nombre=$producto->nombre;
      $precio=$producto->precio;
      $urlimagen=$producto->foto;
      //$descuento=$producto->descuento;
      $arreglo[]=array('Id'=>$_GET['id'],
      'Nombre'=>$nombre,
      'Precio'=>$precio,
      'Cantidad'=>1,
      'Urlimagen'=>$urlimagen,
    );
    $page=$_GET['page'];
    $_SESSION['carrito']=$arreglo;
    redirect("carrito/carga_carrito/$page",  'refresh');
  }
}
}


}
?>
