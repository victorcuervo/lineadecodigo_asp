<%

On Error Resume Next

Set fso = Server.CreateObject("Scripting.FileSystemObject")


'Copiar A en B. Includidos subdirectorios
fso.CopyFolder "c:\temp\dir1","c:\temp\dir2",true

'Crea el directorio A en el directorio B con todo su contenido
'fso.CopyFolder "c:\temp\dir1","c:\temp\dir2\",true

'Copia todos los directorios de A a partir de B
'fso.CopyFolder "c:\temp\dir1\*","c:\temp\dir2",true


'Copia todos los directorios de A que empiezen por V a partir de B
fso.CopyFolder "c:\temp\dir1\v*","c:\temp\dir2",true
   
if (Err.Number <> 0) then
 Response.Write "Se ha producido un error copiando los directorios "
    & Err.description & "<br>"
end if

%>