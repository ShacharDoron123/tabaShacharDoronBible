using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class deleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlDelete = "";
        public string sqlselect = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"] == null || Session["uName"].ToString() != "admin")
            {
                msg = "<div style='text-align: center;'>";
                msg += "<h3>אינך מנהל, אין לך הרשאה לפתוח דף זה</h3>";
                msg += "<a href='main.aspx'>המשך</a>";
                msg += "</div>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "users";

                sqlselect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlselect);
                int length = table.Rows.Count;

                if (length == 0)
                {
                    msg = "אין נרשמים";
                }
                else
                {
                    st += "<tr>";
                    st += "<th class='tb1th' style='width: 140px;'>id</th>";
                    st += "<th class='tb1th' style='width: 100px;'>uName</th>";
                    st += "<th class='tb1th' style='width: 80px;'>fName</th>";
                    st += "<th class='tb1th' style='width: 60px;'>lName</th>";
                    st += "<th class='tb1th' style='width: 140px;'>password</th>";
                    st += "<th class='tb1th' style='width: 60px;'>gender</th>";
                    st += "<th class='tb1th' style='width: 100px;'>phone</th>";
                    st += "<th class='tb1th'>hob1</th>";
                    st += "<th class='tb1th' style='width: 100px;'>hob2</th>";
                    st += "<th class='tb1th' style='width: 100px;'>hob3</th>";
                    st += "<th class='tb1th' style='width: 100px;'>hob4</th>";
                    st += "<th class='tb1th' style='width: 100px;'>hob5</th>";
                    st += "<th class='tb1th' style='width: 100px;'>YB</th>";
                    st += "<th class='tb1th' style='width: 100px;'>mail</th>";
                    st += "<th class='tb1th' style='width: 100px;'>city</th>";
                    st += "</tr>";
                }

                for (int i = 0; i < length; i++)
                {
                    string userToDelete = table.Rows[i]["uName"].ToString();

                    st += "<tr>";
                    st += "<td class='tb1th'>" + table.Rows[i]["id"] + "</td>";
                    st += "<td class='tb1th'>" + userToDelete + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["password"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["gender"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["phone"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["hob1"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["hob2"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["hob3"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["hob4"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["hob5"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["YB"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["mail"] + "</td>";
                    st += "<td class='tb1th'>" + table.Rows[i]["city"] + "</td>";

                    
                    st += "<td style='text-align: center; border: 1px solid black;'>";
                    st += "<a href='deleteRecord.aspx?uName=" + userToDelete + "'>מחיקה</a>";
                    st += "</td>";

                    st += "</tr>";
                }

                msg = length > 0 ? "נרשמו " + length + " אנשים" : "אין נרשמים";
            }
        }
    }
}
