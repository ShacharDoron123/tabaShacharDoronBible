using System;
using System.Web.UI;

namespace tabaShacharDoronBible
{
    public partial class quiz : Page
    {
        protected string msg = "";
        protected string msgp = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                CheckAnswers();
            }
        }

        private void CheckAnswers()
        {
            int score = 0;
            int grade = 0;
            int totalQuestions = 5;

            string q1Answer = Request.Form["q1"] ?? "";
            string q2Answer = Request.Form["q2"] ?? "";
            string q3Answer = Request.Form["q3"] ?? "";
            string q4Answer = Request.Form["q4"] ?? "";
            string q5Answer = Request.Form["q5"] ?? "";

            if (q1Answer == "יום ראשון") score++;
            if (q2Answer == "יום שלישי") score++;
            if (q3Answer == "מכיוון שביום זה הושלמה גם בריאת השמיים והארץ וגם עולם הצומח") score++;
            if (q4Answer == "כדי שתהיה לו עזר כנגדו") score++;
            if (q5Answer == "לא לאכול מעץ הדעת טוב ורע") score++;

            msg = $"קיבלת {score} מתוך {totalQuestions} תשובות נכונות!";
            grade = score * 20;
            msgp = $"ציון {grade}";
        }
    }
}
