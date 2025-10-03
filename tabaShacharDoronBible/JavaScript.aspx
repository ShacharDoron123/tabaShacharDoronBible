<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScript.aspx.cs" Inherits="tabaShacharDoronBible.JavaScript" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
  <script>
    function myDetails() {
      var name = "shachar";
      var lastName = "doron";
      var age = 16;
      var phone = 539238369;

      document.write("my name: " + name + " last name: " + lastName + " my age: " + age + " my phone: " + phone);
    }
    function msg() {
      var msg = "גודל הדף שונה";
      document.write(msg);
    }
    function color(color) {
      document.body.style.backgroundColor = color;
    }
  </script>
</head>
<body onresize="msg()">  
  <input type="button" onclick="myDetails()" value="my details" />
  <input type="button" onclick="color('red')" value="red" />
  <input type="button" onclick="color('green')" value="green" />
  <input type="button" onclick="color('blue')" value="blue" />
</body>
</html>
