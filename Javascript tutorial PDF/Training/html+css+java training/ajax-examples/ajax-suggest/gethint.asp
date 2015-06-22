<%
response.expires=-1
'dim a(10)
dim a, mystring, mycountries
'Fill up array with names
'a=Array("Anne", "Beyonce", "Catherine", "Deshmukh", "Eliza", "Fardeen", "Geesha", "Hamid", "Ira", "John")
mystring="Anne, Beyonce, Catherine, Deshmukh, Eliza, Fardeen, Geesha, Hamid, Ira, John"
mycountries = "Afghanistan,Albania,Algeria,American Samoa,Andorra,Angola,Anguilla,Antarctica,Antigua and Barbuda,Argentina,Armenia,Aruba,Australia,Austria,Azerbaijan,Bahamas,Bahrain,Bangladesh,Barbados,Belarus,Belgium,Belize,Benin,Bermuda,Bhutan,Bolivia,Bosnia and Herzegovina,Botswana,Bouvet Island,Brazil,British Indian Ocean Territory,British Virgin Islands,Brunei,Bulgaria,Burkina Faso,Burma,Burundi,Cambodia,Cameroon,Canada,Cape Verde,Cayman Islands,Central African Republic,Chad,Chile,China,Christmas Island,Cocos (Keeling) Islands,Colombia,Comoros,Congo Democratic Republic,Congo Republic (Middle Congo),Cook Islands,Costa Rica,Croatia,Cuba,Cyprus,Czech Republic,Denmark,Djibouti,Dominica,Dominican Republic,East Timor,Ecuador,Egypt,El Salvador,Equitorial Guinea,Eritrea,Estonia,Ethiopia,Falkland Islands,Faroe Islands,Fiji,Finland,France,French Guiana,French Polinesia,French Southern and Antarctic Territories,Gabon,Gambia,Georgia,Germany,Ghana,Gibraltar,Great Britain,Greece,Greenland,Grenada,Guadeloupe,Guam,Guatemala,Guernsey,Guinea,Guinea Bissau,Guyana,Haiti,Heard Island and McDonald Islands,Honduras,Hong Kong,Hungary,Iceland,India,Indonesia,Iran,Iraq,Ireland,Isle of Man,Israel,Italy,Ivory Coast,Jamaica,Japan,Jersey,Jordan,Kazakhstan,Kenya,Kiribati,Korea, North,Korea, South,Kuwait,Kyrgystan,Laos,Latvia,Lebanon,Lesotho,Liberia,Libya,Liechtenstein,Lithuania,Luxembourg,Macau,Macedonia,Madagascar,Malawi,Malaysia,Maldives,Mali,Malta,Marshall Islands,Martinique,Mauritania,Mauritius,Mayotte,Mexico,Micronesia Federal States,Moldova,Monaco,Mongolia,Montserrat,Morocco,Mozambique,Myanmar,Namibia,Nauru,Nepal,Netherlands,Netherlands Antilles,New Caledonia,New Zeland,Nicaragua,Niger,Nigeria,Niue,Norfolk Island,Northern Mariana Islands,North Korea,Norway,Oman,Pakistan,Palau,Palestine,Panama,Papua New Guinea,Paraguay,Peru,Philippines,Pitcairn Island,Poland,Portugal,Puerto Rico,Qatar,Reunion,Romania,Russia,Rwanda,Saint Helena,Saint Lucia,Saint Pierre and Miquelon,Saint Vincent and The Grenadines,Samoa,San Marino,Sao Tome and Principe,Saudi Arabia,Senegal,Serbia and Montenegro (Yugoslavia),Seychelles,Sierra Leone,Singapore,Slovakia,Slovenia,Solomon Islands,Somalia,South Africa,South Korea,South Georgia and the South Sandwich Islands,Spain,Sri Lanka,Sudan,Suriname,Svalbard (Spitzbergen) and Jan Mayen Islands,Swaziland,Sweden,Switzerland,Syria,Taiwan,Tajikistan,Tanzania,Thailand,Togo,Tokelau,Tonga,Trinidad-Tobago,Tromelin Island,Tunisia,Turkey,Turkmenistan,Turks and Caicos Islands,Tuvalu,Uganda,Ukraine,United Arab Emirates,United Kingdom (Great Britain),United States of America (USA),United States Minor Outlying Islands,Uruguay,Uzbekistan,Vanuatu,Vatican City,Venezuela,Vietnam,Virgin Islands (British),Virgin Islands (United States),Wallis and Futuna Islands,Western Sahara,Yemen,Zambia,Zimbabwe"
a=Split(mycountries,",")


'a(0)="Anne"
'a(1)="Beyonce"
'a(2)="Catherine"
'a(3)="Deshmukh"
'a(4)="Eliza"
'a(5)="Fardeen"
'a(6)="Geesha"
'a(7)="Hamid"
'a(8)="Ira"
'a(9)="John"
'get the q parameter from URL
q=ucase(request.querystring("q"))
'lookup all hints from array if length of q>0
  Dim i
if len(q)>0 then
  hint=""
  for i=0 to 248
  	if q=ucase(mid(a(i),1,len(q))) then
      if hint="" then
        hint="<span class='suggestions'>" & a(i) & "</span>"
      else
        hint=hint & ", <span class='suggestions'>" & a(i) & "</span>"
      end if
end if
  next
end if
'Output "no suggestion" if no hint were found
'or output the correct values
if hint="" then 
  response.write("no suggestion")
else
  response.write(hint)
end if
%>
