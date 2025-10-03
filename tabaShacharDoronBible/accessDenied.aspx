<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accessDenied.aspx.cs" Inherits="tabaShacharDoronBible.accessDenied" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Access Denied</title>
    <style>
        body {
            background-color: red;
            color: white;
            font-size: 48px;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            flex-direction: column;
        }
        .button {
            margin-top: 20px;
            padding: 15px 30px;
            font-size: 24px;
            font-weight: bold;
            color: black;
            background-color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s, color 0.3s;
        }
        .button:hover {
            background-color: black;
            color: white;
        }
    </style>
</head>
<body>
    <div>
        <h1>Access Denied!</h1>
    </div>
</body>
</html>
