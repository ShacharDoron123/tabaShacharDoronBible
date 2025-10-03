<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteUser.aspx.cs" Inherits="tabaShacharDoronBible.deleteUser" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
    <style>
body {
   direction: ltr;
 }
 h1 {
   color: red; 
   text-align: center;
 }
 h2 {
   text-align: center; 
   direction: ltr;
 }
 h3 {
   text-align: center;
 }
 .tb1th {
   font-weight: bold;
   text-align: center;
   border: 1px solid black;
   padding: 5px;
 }
    </style>
</head>
<body>
    <h1>User Table</h1>
<h2><%= sqlselect %></h2>
<table style="border: 1px solid blue; margin: 0px auto;">
    <%= st %>
</table>
<h3><%= msg %></h3>
<a href="main.aspx">דף הבית</a>
</body>

