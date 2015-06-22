<%
'Sub Pause(intSeconds)
'startTime = Time()
'Do Until DateDiff("s", startTime, Time(), 0, 0) > intSeconds
'Loop
'End Sub

'Pause(5)
response.write(request.form("f1"))
response.write(" is " & request.form("f2") & " years old.")
%>