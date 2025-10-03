using System;
using System.Data;
using System.Web.UI;

namespace tabaShacharDoronBible
{
    public partial class select : Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        private string sqlSelect;
        private string fileName = "usersDB.mdf";
        private string tableName = "users";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userFName"] == null || Session["userFName"].ToString() != "admin")
            {
                Response.Redirect("accessDenied.aspx");
                return;
            }

            if (!IsPostBack) return;

            string value1 = Request.Form["value1"];
            string value2 = Request.Form["value2"];
            string field1 = Request.Form["field1"];
            string field2 = Request.Form["field2"];
            string op = Request.Form["op"] ?? "and";

            if (!string.IsNullOrEmpty(field1) && !string.IsNullOrEmpty(value1)
             && !string.IsNullOrEmpty(field2) && !string.IsNullOrEmpty(value2))
            {
                if (op == "or")
                    sqlSelect = $"SELECT * FROM {tableName} WHERE {field1} LIKE '{value1}%' OR {field2} LIKE '{value2}%'";
                else
                    sqlSelect = $"SELECT * FROM {tableName} WHERE {field1} LIKE '{value1}%' AND {field2} LIKE '{value2}%'";
            }
            else if (!string.IsNullOrEmpty(field1) && !string.IsNullOrEmpty(value1))
            {
                sqlSelect = $"SELECT * FROM {tableName} WHERE {field1} LIKE '{value1}%'";
            }
            else if (!string.IsNullOrEmpty(field2) && !string.IsNullOrEmpty(value2))
            {
                sqlSelect = $"SELECT * FROM {tableName} WHERE {field2} LIKE '{value2}%'";
            }
            else
            {
                msg = "אנא מלא ערך באחד מהשדות (או בשניהם).";
                return;
            }

            sql = sqlSelect;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            if (table.Rows.Count == 0)
            {
                msg = "לא נמצאו תוצאות מתאימות.";
                return;
            }

            st += "<tr>"
               + "<th>Username</th><th>First Name</th><th>Last Name</th><th>Gender</th>"
               + "<th>Phone</th><th>Email</th><th>City</th><th>Age</th>"
               + "<th>Hobby 1</th><th>Hobby 2</th><th>Hobby 3</th><th>Hobby 4</th>"
               + "<th>Hobby 5</th><th>Birth Year</th>"
               + "</tr>";

            foreach (DataRow row in table.Rows)
            {
                st += "<tr>"
                   + $"<td>{row["uName"]}</td><td>{row["fName"]}</td><td>{row["lName"]}</td>"
                   + $"<td>{row["gender"]}</td><td>{row["phone"]}</td><td>{row["mail"]}</td>"
                   + $"<td>{row["city"]}</td><td>{row["age"]}</td>"
                   + $"<td>{row["hob1"]}</td><td>{row["hob2"]}</td><td>{row["hob3"]}</td>"
                   + $"<td>{row["hob4"]}</td><td>{row["hob5"]}</td><td>{row["YB"]}</td>"
                   + "</tr>";
            }
        }
    }
}
