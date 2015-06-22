<%
response.expires=-1
response.contenttype="text/xml"
sql="SELECT * FROM CUSTOMERS "
sql=sql & " WHERE name='" & request.querystring("q") & "'"
on error resume next
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("customer.mdb"))
set rs=Server.CreateObject("ADODB.recordset")
rs.Open sql, conn
if err <> 0 then
response.write(err.description)
set rs=nothing
set conn=nothing
else
response.write("<?xml version='1.0' encoding='iso-8859-1'?>")
response.write("<customer>")
response.write("<name>" &rs.fields("name")& "</name>")
response.write("<age>" &rs.fields("age")& "</age>")
response.write("<city>" &rs.fields("city")& "</city>")
response.write("<value>" &rs.fields("value")& "</value>")
response.write("</customer>")
end if
on error goto 0
%>