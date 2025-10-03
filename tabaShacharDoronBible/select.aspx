<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master"
    AutoEventWireup="true" CodeBehind="select.aspx.cs"
    Inherits="tabaShacharDoronBible.select" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: "Segoe UI", Tahoma, sans-serif;
            color: #333;
            margin: 0; padding: 20px;
        }
        .login-container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            padding: 30px;
        }
        .User-table {
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
            margin-top: 20px;
        }
        .User-table th, .User-table td {
            border: 1px solid #ccd6e0;
            padding: 12px 15px;
            text-align: left;
            background-color: #fff;
        }
        .User-table th {
            color: #2a4365;
            font-weight: bold;
        }
        input[type="submit"], .btn {
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color .2s;
        }
        input[type="submit"]:hover, .btn:hover {
            background-color: #357ac1;
        }
        select, input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #cbd5e0;
            border-radius: 4px;
        }
        label {
            font-weight: 600;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function detectField1() {
            document.getElementById("query1").innerHTML = "<input type='text' name='value1' />";
        }
        function detectField2() {
            document.getElementById("query2").innerHTML = "<input type='text' name='value2' />";
        }
    </script>

    <div class="login-container">
        <form id="form1" method="post" runat="server">
            <table>
                <tr>
                    <td style="width:20%">
                        <select name="field1" id="field1" onclick="detectField1();">
                            <option value="fName">First Name</option>
                            <option value="lName">Last Name</option>
                            <option value="uName">Username</option>
                            <option value="gender">Gender</option>
                            <option value="phone">Phone</option>
                            <option value="mail">Email</option>
                            <option value="city">City</option>
                            <option value="age">Age</option>
                        </select>
                    </td>
                    <td style="width:150px; text-align:center;">
                        <div id="query1"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <label for="and">or</label>
                        <input type="radio" id="and" name="op" value="and" checked="checked" />
                        <label for="or">and</label>
                        <input type="radio" id="or" name="op" value="or" />
                    </td>
                </tr>
                <tr>
                    <td style="width:20%">
                        <select name="field2" id="field2" onclick="detectField2();">
                            <option value="fName">First Name</option>
                            <option value="lName">Last Name</option>
                            <option value="uName">Username</option>
                            <option value="gender">Gender</option>
                            <option value="phone">Phone</option>
                            <option value="mail">Email</option>
                            <option value="city">City</option>
                            <option value="age">Age</option>
                        </select>
                    </td>
                    <td style="width:150px; text-align:center;">
                        <div id="query2"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" name="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <h2><%= sql %></h2>

    <table class="User-table">
        <%= st %>
    </table>

    <br /><br />
    <%= msg %>
</asp:Content>
