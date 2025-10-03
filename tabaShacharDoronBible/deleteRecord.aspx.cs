using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class deleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";

            if (Session["uName"] != null && Session["uName"].ToString() == "admin")
            {
                if (Request.QueryString["uName"] != null)
                {
                    string uName = Request.QueryString["uName"].ToString();
                    string sqlDelete = "DELETE FROM users WHERE uName='" + uName + "'";
                    Helper.DoQuery(fileName, sqlDelete);
                }
            }
            Response.Redirect("deleteUser.aspx");
        }
    }
}
