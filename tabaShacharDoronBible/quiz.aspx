<%@ Page Title="Quiz" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="tabaShacharDoronBible.quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p, .question, .result, input, button {
            font-size: 28px;
        }
        .quiz-container {
            padding: 20px;
        }
        input {
            margin: 10px 0;
            transform: scale(1.5);
        }
        button {
            padding: 10px 20px;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>חידון התנך</h2>
    <form class="quiz" id="quiz" method="post" runat="server">
        <!-- שאלה ראשונה -->
        <p class="question">באיזה יום ברא אלוהים את הארץ?</p>
        <input type="radio" name="q1" value="יום ראשון"> יום ראשון<br>
        <input type="radio" name="q1" value="יום שני"> יום שני<br>
        <input type="radio" name="q1" value="יום שישי"> יום שישי<br>
        <input type="radio" name="q1" value="יום חמישי"> יום חמישי<br>

        <!-- שאלה שנייה -->
        <p class="question">על איזה יום נאמר פעמיים כי טוב?</p>
        <input type="radio" name="q2" value="יום ראשון"> יום ראשון<br>
        <input type="radio" name="q2" value="יום שני"> יום שני<br>
        <input type="radio" name="q2" value="יום שלישי"> יום שלישי<br>
        <input type="radio" name="q2" value="יום רביעי"> יום רביעי<br>

        <!-- שאלה שלישית -->
        <p class="question">למה נאמר פעמיים כי טוב?</p>
        <input type="radio" name="q3" value="יום ראשון">מכיוון שביום זה הושלמה בריאת האדם<br>
        <input type="radio" name="q3" value="יום שני">מכיוון שביום זה הושלמה בריאת הירח השמש והחיות<br>
        <input type="radio" name="q3" value="יום שלישי">מכיוון שביום זה הושלמה גם בריאת השמיים והארץ וגם עולם הצומח<br>
        <input type="radio" name="q3" value="לא ידוע">לא ידוע<br>

        <!-- שאלה רביעית -->
        <p class="question">מה הסיבה לכך שאלוהים יצר את האישה מצלעו של האדם</p>
        <input type="radio" name="q4" value="כדי שתהיה לו עזר כנגדו">כדי שתהיה לו עזר כנגדו<br>
        <input type="radio" name="q4" value="כדי להעניש את האדם">כדי להעניש את האדם<br>
        <input type="radio" name="q4" value="כדי להראות שהוא חזק יותר מבעלי החיים">כדי להראות שהוא חזק יותר מבעלי החיים<br>
        <input type="radio" name="q4" value="כדי שהאדם יעבוד את האדמה לבדו">כדי שהאדם יעבוד את האדמה לבדו<br>

        <!-- שאלה חמישית -->
        <p class="question">איזו מצווה נתן אלוהים לאדם בגן עדן?</p>
        <input type="radio" name="q5" value="לא לאכול מעץ החיים">לא לאכול מעץ החיים<br>
        <input type="radio" name="q5" value="לא לאכול מעץ הדעת טוב ורע">לא לאכול מעץ הדעת טוב ורע<br>
        <input type="radio" name="q5" value="לשמור על כל החיות">לשמור על כל החיות<br>
        <input type="radio" name="q5" value="לבנות מזבח ולהקריב קורבנות">לבנות מזבח ולהקריב קורבנות<br>

        <br>
        <button type="submit">Submit</button>
    </form>

    <div class="result">
        <%= msg %>
        <%= msgp %>
    </div>
</asp:Content>