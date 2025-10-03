<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="tabaShacharDoronBible.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       body {
           background-color:#f3e4d3;
           width: auto;
           direction: rtl; 
           margin: 20px;
       }
       .gym {
           background-color: #FFDDC1;
       }
       .taba {
           background-color: #FFABAB;
       }
       .hascala {
           background-color: #FFD60A;
       }
       .math {
           background-color: #7FD8B1;
       }
       .pisic {
           background-color: #B9FBC0;
       }
       .bible {
           background-color: #FF677D;
       }
       .ezrchut {
           background-color: #FFB5E8;
       }
       .edd {
           background-color: #D0E8F2;
       }
       .sport {
           background-color: #A2DFF7;
       }
       .ed {
           background-color: #F0C2D7;
       }
       .yesodot {
           background-color: #C4E17F;
       }
       .hebrew {
           background-color: #F5B041;
       }
       .english {
           background-color: #FFC300;
       }

       .table {
           width: 100%;
           border-collapse: collapse;
           margin: 20px auto;
           border: 2px solid #333;
       }

       .th, tr {
           border-bottom: 1px solid #666;
       }
       .th {
           border: 1px solid #666;
           padding: 10px;
           text-align: center;
           font-family: Arial, sans-serif;
           font-size: 14px;
       }

       th {
           font-weight: bold;
       }
   </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>מערכת שעות:</h1>
    <table class="table">
        <tr class="th">
            <th>שעה</th>
            <th>ראשון</th>
            <th>שני</th>
            <th>שלישי</th>
            <th>רביעי</th>
            <th>חמישי</th>
        </tr>
        <tr class="th">
            <td>1</td>
            <td class="gym">פכ"ל</td>
            <td class="taba">תב"א</td>
            <td rowspan="2" class="hascala">השכלה כללית</td>
            <td rowspan="2" class="math">מתמטיקה</td>
            <td rowspan="3" class="pisic">פיזיקה</td>
        </tr>
        <tr class="th">
            <td>2</td>
            <td rowspan="2" class="bible">תנ"ך</td>
            <td class="ezrchut">אזרחות</td>
        </tr>
        <tr class="th">
            <td>3</td>
            <td class="ed">חינוך</td>
            <td rowspan="2" class="math">מתמטיקה</td>
            <td class="edd">חינוך תעבורתי</td>
        </tr>
        <tr class="th">
            <td>4</td>
            <td class="sport">חנ"ג</td>
            <td rowspan="2" class="yesodot">יסודות</td>
            <td rowspan="2" class="hebrew">עברית</td>
            <td rowspan="3" class="hebrew">עברית</td>
        </tr>
        <tr class="th">
            <td>5</td>
            <td class="ed">חינוך</td>
            <td rowspan="4" class="yesodot">יסודות</td>
        </tr>
        <tr class="th">
            <td>6</td>
            <td rowspan="3" class="english">אנגלית</td>
            <td rowspan="2" class="math">מתמטיקה</td>
            <td rowspan="2" class="english">אנגלית</td>
        </tr>
        <tr class="th">
            <td>7</td>
            <td rowspan="2" class="taba">תב"א</td>
        </tr>
        <tr class="th">
            <td>8</td>
            <td class="ed">חינוך</td>
            <td class="sport">חנ"ג</td>
        </tr>
    </table>
</asp:Content>
