using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class escape_room1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userAns = Request.Form["answer"];
                if (userAns == "האור")
                    Response.Redirect("escape_room2.aspx");
            }
        }
    }
}