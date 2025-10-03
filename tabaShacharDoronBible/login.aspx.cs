using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace tabaShacharDoronBible
{
    public partial class login : System.Web.UI.Page
    {
     public string msg;
     public string sqlLogin;
     protected void Page_Load(object sender, EventArgs e)
     {
      if (Request.Form["submit"] != null)
      {
        string uName = Request.Form["userName"];
        string pw = Request.Form["pass"];

        string fileName = "usersDB.mdf";
        string tableName = "users";

        sqlLogin = $"Select * from {tableName} where uName = '{uName}' AND password = '{pw}'";
        DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
        
        int length = table.Rows.Count;
        if (length == 0)
        {
          msg = "משתמש לא נמצא";
          Response.Redirect("register.aspx");
        }
        else
        {
          Session["uName"] = table.Rows[0]["uName"];
          Session["userfName"] = table.Rows[0]["fName"];
          Response.Redirect("main.aspx");
        }
      }
      }
    }
}
