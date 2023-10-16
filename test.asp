<!-- #include virtual="/hex-classic-asp/_hex.asp" -->
<%

'// "HEXA" CLASS HAS BEEN ADDED BY THE #INCLUDE STATEMENT (ABOVE.)

dim text
text = "Hello, world!"
response.write "Default = " & text & "<br>"

text = Hexa.Encode(text)
response.write "Encoded = " & text & "<br>"

text = Hexa.Decode(text)
response.write "Decoded = " & text & "<br>"

'// USE READ/WRITE FUNCTION TO INCLUDE "HEX:" AT BEGINNING OF ANY HEX STRING
'// (THIS CAN BE USED TO IDENTIFY A HEX-STRING BEFORE DECODING)

text = Hexa.Write(text)
response.write "Labelled = " & text & "<br>"

text = Hexa.Read(text)
response.write "Identified as hex-string, so decoded = " & text & "<br>"

'// TRUNCATE FUNCTION

text = 	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, " & _
	"sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

response.write "Random sentence = " & text & "<br>"
response.write "Random sentence (length) = " & len(text) & "<br>"

text = Hexa.Truncate(text,32)
response.write "Truncated text (32 chars.) = " & text & "<br>"

'// CLOSE AND FREE MEMORY (ONCE FINISHED WITH CLASS)
set Hexa = nothing

%>
