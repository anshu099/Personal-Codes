<%
response.expires=-1
sql="SELECT * FROM CUSTOMERS WHERE NAME="
sql=sql & "'" & request.form("name") & "'"

set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("customer.mdb"))
'conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("customer.mdb")
set rs = Server.CreateObject("ADODB.recordset")
rs.open sql, conn

Dim myRecordCount
myRecordCount = 0
do while not rs.EOF
myRecordCount = myRecordCount + 1
rs.MoveNext
loop

if myRecordCount > 0 then
	response.write("Username not available.")
else
	response.Write("Username available.")
end if
%>
