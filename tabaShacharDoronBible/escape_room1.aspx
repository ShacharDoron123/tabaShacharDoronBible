<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="escape_room1.aspx.cs" Inherits="tabaShacharDoronBible.escape_room1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
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
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
        <form method="post" runat="server">
            <h2>מה נברא ביום הראשון של בריאת העולם?</h2>

            <div class="option">
                <input type="radio" name="answer" value="האדם" /> האדם
            </div>
            <div class="option">
                <input type="radio" name="answer" value="השמש והירח" /> השמש והירח
            </div>
            <div class="option">
                <input type="radio" name="answer" value="האור" /> האור
            </div>
            <div class="option">
                <input type="radio" name="answer" value="החיות" /> החיות
            </div>

            <input type="submit" value="בדוק תשובה" class="submit-btn" />
        </form>
    </div>
</asp:Content>
