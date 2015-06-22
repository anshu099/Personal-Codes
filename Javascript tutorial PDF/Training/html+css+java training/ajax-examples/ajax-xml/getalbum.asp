<%
response.expires=-1
q=request.querystring("q")
set xmlDoc=Server.CreateObject("Microsoft.XMLDOM")
xmlDoc.async="false"
xmlDoc.load(Server.MapPath("catalog.xml"))
set nodes=xmlDoc.selectNodes("CATALOG/ALBUM[TITLE='" & q & "']")
for each x in nodes
  for each y in x.childnodes
    response.write("<b>" & y.nodename & ":</b> ")
    response.write(y.text)
    response.write("<br />")
  next
next
%>
