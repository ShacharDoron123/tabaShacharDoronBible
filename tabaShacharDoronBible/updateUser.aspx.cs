using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class updateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";

        public string uName, fName, lName, age;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            uName = Session["uName"].ToString();

            string user = Session["uName"].ToString();
            if (uName == "אורח")
            {
                msg = "אינך משתמש רשום במערכת";
                Response.Redirect("main.aspx");
            }
            sqlSelect = $"Select * from users where uName = '{uName}'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length == 0)
                msg = "אינך משתמש רשום במערכת";
            else
            {
                fName = table.Rows[0]["fName"].ToString().Trim();
                lName = table.Rows[0]["lName"].ToString().Trim();
                age = table.Rows[0]["age"].ToString().Trim();
            }
            if (this.IsPostBack)
            {
                fName = Request.Form["fName"];
                lName = Request.Form["lName"];
                age = Request.Form["age"];

                sqlUpdate = $"UPDATE users SET fName = '{fName}', lName = '{lName}', age = '{age}' WHERE uName = '{uName}'";
                Helper.DoQuery(fileName, sqlUpdate);
                msg = "שונה בהצלחה";

            }
        }
    }
}
