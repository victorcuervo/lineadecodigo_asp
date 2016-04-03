<%

  Dim sFichero
  sFichero = "c:\temp\dir2\a.txt"

  Set fso = Server.CreateObject("Scripting.FileSystemObject")
   
  if (fso.FileExists(sFichero)) then
    fso.DeleteFile sFichero,true
    Response.Write "Borrado el fichero " & sFichero
  else
    Response.Write "No existe el fichero " & sFichero
  end if

%>