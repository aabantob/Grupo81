<?php

date_default_timezone_set('America/Lima');
header('Content-type:application/json;charset=UTF-8');

include_once('nfig/database.php');

if($_SERVER['REQUEST_METHOD'] === 'POST'){

  $nombres = htmlspecialchars(strip_tags(trim($_POST['txt_nombres'])));
  $apellidos = htmlspecialchars(strip_tags(trim($_POST['txt_apellidos'])));
  $telefono = strip_tags(trim($_POST['txt_phone']));
  $email = htmlspecialchars(strip_tags(trim($_POST['txt_email'])));
  $mensaje = htmlspecialchars(strip_tags(trim($_POST['txt_mensaje'])));


  $stmt = $con->prepare("INSERT INTO contact (firstname,lastname,telephone,correo,mensaje) VALUES (:nombres,:apellidos,:telefono,:mail,:mensaje)");
  $stmt->bindParam(":nombres", $nombres);
  $stmt->bindParam(":apellidos", $apellidos);
  $stmt->bindParam(":telefono", $dni);
  $stmt->bindParam(":fecha_nac", $fecha_nac);
  $stmt->bindParam(":email", $email);
  $stmt->bindParam(":celular", $celular);
  $stmt->bindParam(":departamento", $departamento);
  $stmt->bindParam(":provincia", $provincia);
  $stmt->bindParam(":distrito", $distrito);
  $stmt->bindParam(":promociones", $promociones);
  $stmt->bindParam(":createdat", $fecha_hora);
  $stmt->bindParam(":ipaddress", $ip_address);
  $stmt->bindParam(":user_agent", $user_agent);

  if($stmt->execute()){
    http_response_code(201);
    echo json_encode(array("message" => "¡Ya te encuentras registrado! Recuerda que todas estas funciones también las podrás realizar muy pronto en los nuevos equipo LG K50 y LG Q60"));
  }else{
    http_response_code(200);
    echo json_encode(array("message" => "Error al registrar el participante"));
  }


}else{

  http_response_code(405);
  echo json_encode(array("message" => "Method not allowed"));

}

?>