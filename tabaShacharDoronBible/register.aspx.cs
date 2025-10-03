using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace tabaShacharDoronBible
{
    public partial class register : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string uName = Request.Form["userName"];
                string password = Request.Form["pass"];  
                string fName = Request.Form["fname"];
                string lName = Request.Form["lname"];
                string mail = Request.Form["email"];  
                string gender = Request.Form["gender"];
                string phone = Request.Form["phone"];
                string YB = Request.Form["yearOfBirth"];
                string city = Request.Form["city"];


                string fileName = "usersDB.mdf";
                string tableName = "users";
                string sqlSelect = $"SELECT * FROM {tableName} WHERE uName = '{uName}'";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "שם המשתמש תפוס, נסה שוב עם שם אחר";
                    sqlMsg = sqlSelect;
                }
                else
                {

                    string sqlInsert = $"INSERT INTO {tableName} (uName, fName, lName, password, gender, phone, YB, mail, city) ";
                    sqlInsert += $"VALUES ('{uName}', '{fName}', '{lName}', '{password}', ";
                    sqlInsert += $"'{gender}', '{phone}', '{YB}', '{mail}', '{city}')";

                    sqlMsg = sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "הרשומה התווספה בהצלחה";
                }
            }
        }
    }
}
