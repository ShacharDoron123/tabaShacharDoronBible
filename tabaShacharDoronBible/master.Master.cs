using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
  public partial class master : System.Web.UI.MasterPage
  {
    public static string loginMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
      loginMsg = "<h3>שלום ";
      loginMsg += Session["userFName"].ToString();
      loginMsg += "</h3>";

      if (Session["uName"] == "אורח")
      {
        loginMsg += "[<a href = 'login.aspx'>התחבר</a]<br/>";
        loginMsg += "[<a href = 'register.aspx'>הרשם</a]<br/>";
      }
      else
      {
        loginMsg += "[<a href = 'updateUser.aspx'>עדכון פרטים</a]<br/>";
        loginMsg += "[<a href = 'logOut.aspx'>התנתק</a]<br/>";
      }
    }
  }
}