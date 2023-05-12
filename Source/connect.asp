<%
set connDB = Server.CreateObject("ADODB.Connection")
strConnection ="Provider=DOBC; Data Source=;Initia Catalog=;User id=;Password="
connDB.ConnectionString = strConnection
connDB.Open
%>