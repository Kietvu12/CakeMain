<%
set connDB = Server.CreateObject("ADODB.Connection")
strConnection = "Provider=SQLOLEDB; Data Source = DESKTOP-P7BQEGE; Initial Catalog = QuanLyTiemBanh; User id=sa; Password=1 "
connDB.ConnectionString=strConnection
connDB.Open
%>

