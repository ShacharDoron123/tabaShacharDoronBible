<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="showTable.aspx.cs" Inherits="tabaShacharDoronBible.showTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
  body {
      direction: ltr;
      background-color: #f3e4d3;
      width: auto;
      margin: 20px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User Table</h1>
    <a href="deleteUser.aspx">מחיקת משתמש</a>
    <h2><%= sqlselect %></h2>
    <table style="border: 1px solid blue; margin: 0px auto;">
        <%= st %>
    </table>
    <h3><%= msg %></h3>
</asp:Content>
