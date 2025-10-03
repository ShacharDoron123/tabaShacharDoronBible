using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class escape_room3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userAns = Request.Form["answer"];
                if (userAns == "א ב ג")
                    Response.Redirect("main.aspx");
            }
        }
    }
}