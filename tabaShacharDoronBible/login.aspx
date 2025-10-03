<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tabaShacharDoronBible.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .center{
            text-align:center
        }
    </style>
    <script src="register.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="login" method="post" runat="server">
    <label for="userName">שם משתמש:</label>
    <input type="text" name="userName" id="userName" />
    <br /> <br />
    <label for="pass">סיסמה:</label>
    <input type="password" name="pass" id="pass" />
    <br /> <br />
    <input type="submit" value="שלח" name="submit"/>
    <input type="reset" value="אפס" />
    </form>
    <br />
    <a class="center" href="register.aspx">to register</a>
  <% =msg %>
</asp:Content>
