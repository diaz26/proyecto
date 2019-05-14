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
    $this->load->view('header_carrito',$head);
    $this->load->view('view_carrito',$result);
    $this->load->view('footer_ecommerce');
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
        $page=$_GET['page'];
        redirect("carrito/carga_carrito/$page",  'refresh');
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
public function generapedido(){
  $totalpagar= $this->caculo_Subtotal_carrito();
  $cant_pro=$_POST["cant_pro"];
  $valor_pago=$_POST["valorpago"];

  if ($cant_pro>0){
    if($valor_pago>0){
      $cadena_seguridadt=$this->genera_cod_pedido();
      $data_pedido = array(
        "nombre" 		 => $_POST["nombre"],
        "correo" 	     		=> $_POST["correo"],
        "celular" 	 		  => $_POST["celular"],
        "cedula" 	 		=> $_POST["cedula"],
        "direccion" 	 		=> $_POST["direccion"],
        "departamento" 	 	=> $_POST["departamento"],
        "ciudad" 	 				=> $_POST["ciudad"],
        "fecha_pedido" 	=> date("Y-m-d H:i:s"),
        "cod_pedido"		 		=> $cadena_seguridad,
        "monto"		 		=> $_POST["valorpago"],
        "pageee"		 		=> $_POST["page"],

      );
      $this->model_carrito->insertaPedido($data_pedido);
      $id_user=$this->model_informacion->idUser($this->input->post('id_page'));
      $pedido=array(
        "id_usuario" 	=> $id_user->id,
        "valor_pago" 	=> $_POST["valorpago"],
        "moneda" 	=> "USD",
        "nombre_producto" 	=> "Factura",
      );
      //	$id_pedido=$this->model_payments->inserta_pago_pedido($pedido);
      $cuenta_paypal=$this->model_informacion->consul_cuenta_paypal($this->input->post('id_page'));
      $paypal =	array( "cuenta_paypal" =>$cuenta_paypal);
      $pago= $pedido+$paypal+$data_pedido;
      $this->load->view('view_temp_paypal', $pago);
    }
  }else{
    $pagee=$this->input->post('page');
    $this->session->set_flashdata('reco', '<div class="alert alert-danger text-center">carrito vacío</div>');
    redirect(base_url()."index.php/carrito/carga_carrito/$pagee");
  }
}

public function genera_cod_pedido(){
  #cosulta consecutivo
  $consecutivo= $this->model_informacion->consultConsec(1);
  $data_update = array("pr900"	=> $consecutivo+1,);
  $this->model_informacion->alteraConsec($data_update);
  //Genera número de pedido
  $cod_pedido ="COD_PED".$this->generateRandomString(6).$consecutivo;
  return $cod_pedido;
}

function generateRandomString($length) {
  return substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
}

public function insertPago($cod_pedido,$id_usuario,$valor_pago){
  if($_POST['payment_status']=='Completed'){
    log_message('error', "pago exitoso");
    $pago=$this->model_carrito->buscaPedido($cod_pedido);

    if ($pago->cod_pedido==$cod_pedido) {
      $insertarPago=array(
        'cod_pedido'=>$pago->cod_pedido,
        'monto'=>$pago->monto,
        'fecha_pago'=>date("Y-m-d H:i:s"),
        'fecha_pedido'=>$pago->fecha_pedido,
        'id_usuario'=> $pago->id_usuario,
      );
      $this->model_carrito->insertPago($insertPago);
    }
  }else{

  log_message('error', "error en el pago");
}
}

}
