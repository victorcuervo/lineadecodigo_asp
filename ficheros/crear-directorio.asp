<%
 dim fso, carpeta
 carpeta = "c:\miCarpeta"

 Set fso = CreateObject("Scripting.FileSystemObject")

 'Comprobamos  si existe la carpeta. Si no existe la creamos
 if (Not fso.FolderExists(carpeta)) then
    Set fol = fso.CreateFolder(carpeta)
 end if
%>