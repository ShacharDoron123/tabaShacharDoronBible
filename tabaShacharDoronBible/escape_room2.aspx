<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="escape_room2.aspx.cs" Inherits="tabaShacharDoronBible.escape_room2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style>
        .quiz-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 30px;
            background-color: #f0f0f0;
            border-radius: 12px;
            direction: rtl;
            font-family: Arial, sans-serif;
        }

        .quiz-container h2 {
            text-align: center;
        }

        .option {
            margin: 10px 0;
            font-size: 18px;
        }

        .submit-btn {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            border: 1px solid #ccc;
            padding: 16px;
            text-align: center;
            font-size: 16px;
        }

        input[type="text"] {
            width: 90%;
            padding: 6px;
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <form method="post" runat="server">
        <div class="quiz-container">
            <h2>מה נברא בכל אחד מימי הבריאה?</h2>
            <table>
                <tr>
                    <td>יום ראשון</td>
                    <td>האור</td>
                </tr>
                <tr>
                    <td>יום שני</td>
                    <td>
                        <input type="text" name="day2" placeholder="מה נברא ביום שני?" required />
                    </td>
                </tr>
                <tr>
                    <td>יום שלישי</td>
                    <td>היבשה והצמחים</td>
                </tr>
                <tr>
                    <td>יום רביעי</td>
                    <td>השמש, הירח והכוכבים</td>
                </tr>
                <tr>
                    <td>יום חמישי</td>
                    <td>הדגים והעופות</td>
                </tr>
                <tr>
                    <td>יום שישי</td>
                    <td>החיות והאדם</td>
                </tr>
            </table>
            <input type="submit" value="שלח תשובה" class="submit-btn" />
        </div>
    </form>
</asp:Content>
