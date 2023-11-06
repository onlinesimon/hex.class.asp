# hex-classic-asp
<strong>Small hex string encode &amp; decode Class written for Classic ASP</strong>

Include the _hex.asp class at the beginning of your Classic ASP page: <br>
```vbnet
<!-- #include virtual="/hexa.class.asp" -->
```

The <b>Hexa</b> class will be created with the following functions: <br>

```vbnet
Hexa.Encode(t)
```
Encode the contents of the 't' string. 

```vbnet
Hexa.Decode(t)
```
Decode the contents of the 't' string from hex to ASCII.

```vbnet
Hexa.Write(t)
```
Same as Hexa.Encode but also includes "HEX:" at beginning of output to identify string as being hex.

```vbnet
Hexa.Read(t)
```
Same as Hexa.Decode but will check for "HEX:" to verfy that string is hex, and only decode if necessary.

code>Hexa.Encoded</code> and <code>Hexa.Decoded</code> are two additional public variables that store the previously encoded and decoded strings. 

```vbnet
Hexa.Reset
```
Use this command to clear the above strings.

```vbnet
Hexa.Truncate(text,size)
```
Additional function used to truncate string <b>text</b> to a maximum <b>size</b>. If string length is greater than <b>size</b> then <b>text</b> will be truncated (clipped), with a "... [TRUNCATED]" message appended to the end of the string.

```vbnet
set Hexa = nothing
```
Close and free-up memory after using (only needed once, at the end of your code.)

