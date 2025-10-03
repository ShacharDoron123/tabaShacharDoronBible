using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
    public partial class escape_room2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string answer = Request.Form["day2"];
                string trimmedAnswer = answer.Trim();

                if (trimmedAnswer == "הרקיע")
                {
                    Response.Redirect("escape_room3.aspx");
                }
            }
        }
    }
}
