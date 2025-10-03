<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="escape_room3.aspx.cs" Inherits="tabaShacharDoronBible.escape_room3" %>
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
        <h2>באיזה פרקים האתר הזה עוסק בהם?</h2>

        <div class="option">
            <input type="radio" name="answer" value="א" /> א
        </div>
        <div class="option">
            <input type="radio" name="answer" value="ב" /> ב 
        </div>
        <div class="option">
            <input type="radio" name="answer" value="ג" /> ג
        </div>
        <div class="option">
            <input type="radio" name="answer" value="א ב ג" /> א ב ג
        </div>

        <input type="submit" value="בדוק תשובה" class="submit-btn" />
    </form>
</div>
</asp:Content>
