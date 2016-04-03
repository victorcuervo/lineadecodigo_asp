<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hora del Servidor</title>
<script type="text/javascript">
// Recogemos la fecha del servidor.
var fecha = "<%=Now()%>";
// Pasamos la fecha a javascript
var fecha_js = new Date(fecha);

var segundos = fecha_js.getSeconds();
var hora = fecha_js.getHours(); 
var minutos = fecha_js.getMinutes();

function mostrar() { 
   
   // Ha pasado un segundo
   segundos++;
   
   if (segundos == 60) {
     segundos = 0;
     minutos++;
     if (minutos == 60) {
       minutos = 0;
       hora++;
       if (hora == 24) {
         hora = 0;
       }
     }
   }

   if ((hora >= 0)&&(hora <= 9)){ 
     hora="0"+hora; 
	  	if (hora == 0)
			hora = "00";
   }

   if ((minutos >= 0)&&(minutos <= 9)){ 
     minutos="0"+minutos; 
   }

   if ((segundos >= 0)&&(segundos <= 9)){ 
     segundos="0"+segundos; 
   }

   document.getElementById("hora").value =  " "  + hora + ":" + minutos + ":" + segundos; 
    
   window.setTimeout("mostrar()",1000); 
}
</script>
</head>
<body onLoad="window.setTimeout('mostrar()',1000);">

<h1>Hora del Servidor</h1>


<form id="formulario"> 
<label for="hora">En estos momentos son las...</label> 
<input type='text' id='hora' size=10/> 
</form>



<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/reloj-con-la-hora-del-servidor/">http://lineadecodigo.com/asp/reloj-con-la-hora-del-servidor/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>