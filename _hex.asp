<%

'// AUTHOR:	Simon Beal'
'//	UPDATE:	2017-10-23'

'// USAGE: '
'// 	t = Hexa.Encode(t)
'// 	t = Hexa.Decode(t)
'// 	t = Hexa.Write(t)'
'// 	t = Hexa.Read(t)'
'// 	t = Hexa.Truncate(t,size)'

dim Hexa
set Hexa = new Hexing

class Hexing

	public Encoded
	public Decoded

	public function Truncate(byval text, byval size)

		if len(text) > (size - 16) then
			Truncate = left(text, size - 16) & "... [TRUNCATED]"
		else
			Truncate = text
		end if

	end function

	public function Read(byval text)

		Reset

		if len(text) > 0 then

			if isHex(text) = true then
				Read = Decode(mid(text,5))
				Encoded = text
			else
				Read = text
			end if

			Decoded = Read

		end if

	end function

	public function Write(byval Text)

		call Reset

		if len(Text) > 0 then

			if isHex(Text) = false then
				Write = "HEX:" & Encode(Text)
				Decoded = Text
			else
				Write = Text
			end if

			Encoded = Write

		else
			Write = ""
		end if

	end function

	public sub Reset()

		Encoded = ""
		Decoded = ""

	end sub

	public function isHex(byval str)

		isHex = false

		if len(str) > 3 then
			if ucase(left(str,4)) = "HEX:" then isHex = true
		end if

	end function

	public function Encode(byval str)

		Dim charPos
		Dim charMax
		Dim strHex

		charMax = len(str)

		For charPos = 1 To charMax
			strHex = strHex & right("0" & Hex(asc(mid(str, charPos, 1))), 2)
		Next

		Decoded = str
		Encoded = strHex

		Encode = strHex

	end function

	public function Decode(byval strHex)

		Dim charPos
		Dim charMax
		Dim str

		charMax = Len(strHex)

		For charPos = 1 To charMax Step 2
			str = str & Chr("&h" & Mid(strHex, charPos, 2))
		Next

		Encoded = strHex
		Decoded = str

		Decode = str

	end function

end class

%>