<%

'Creamos el objeto
Set Mail = Server.CreateObject("Persits.MailSender")

'Servidor SMTP
Mail.Host = "mail.aulambra.com"

'Cabecera del mensaje
Mail.From = Request("From")
Mail.FromName = "Víctor Cuervo"
Mail.AddAddress Request("To")

'Tema del mensaje
Mail.Subject = "Email de aulambra.com"

'Cuerpo del mensaje
Mail.Body = "Mensaje enviado desde aulambra.com"

'Capturamos el posible error
On Error Resume Next

'Mandamos el mensaje
Mail.Send

If Err <> 0 Then
     Response.Write(Err.Description)
else
     Response.Write("Mensaje enviado satisfactoriamente")
End If

%>