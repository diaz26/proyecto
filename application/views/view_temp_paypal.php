<?php
if (1==1){
  //if (isset($_REQUEST['id'])){

  //URL Paypal Modo pruebas.
  //$paypal_url = 'https://www.sandbox.paypal.com/cgi-bin/webscr';
  //URL Paypal para Recibir pagos

  $paypal_url = 'https://www.sandbox.paypal.com/cgi-bin/webscr';
  //$paypal_url = 'https://www.paypal.com/cgi-bin/webscr';
  //Correo electronico del comercio.
  //Pon aqui la URL para redireccionar cuando el pago es completado
  $cancel_return = base_url()."index.php/welcome/to/$pageee"; //."index.php/payments/reparte/".$cod_pedido."/".$id_usuario."/".$valor_pago; //$codpedido,$idusuario,$value
  //Colocal la URL donde se redicciona cuando el pago fue completado con exito.
  $success_return = base_url()."index.php/welcome/to/$pageee"; //."index.php/payments/reparte/".$cod_pedido."/".$id_usuario."/".$valor_pago; //$codpedido,$idusuario,$value


  $notify_url = base_url()."index.php/carrito/insertPago/".$cod_pedido."/".$id_usuario."/".$valor_pago; //$codpedido,$idusuario,$value
  //Pon aqui la URL para redireccionar cuando el pago es completado

  ?>
  <div style="margin-left: 40%"><img src="<?php echo base_url(); ?>images/giphy.gif"/>
    <form name="myform" action="<?php echo $paypal_url; ?>" method="post" target="_top">
      <input type="hidden" name="cmd" value="_xclick">
      <input type="hidden" name="cancel_return" value="<?php echo $cancel_return ?>">
      <input type="hidden" name="return" value="<?php echo $success_return; ?>">
      <input type="hidden" name="notify_url" value="<?php echo $notify_url; ?>">
      <input type="hidden" name="business" value="<?php echo $cuenta_paypal; ?>">
      <input type="hidden" name="item_name" value="<?php echo $nombre_producto; ?>">
      <input type="hidden" name="amount" value="<?php echo $valor_pago; ?>">
      <input type="hidden" name="currency_code" value="<?php echo $moneda; ?>">
      <input type="hidden" name="button_subtype" value="services">
      <input type="hidden" name="no_note" value="0">
    </form>
    <script type="text/javascript">
    document.myform.submit();
    </script>
    <?php

  } else {
    //header("location:productos.php");
    exit;
  }
  ?>
