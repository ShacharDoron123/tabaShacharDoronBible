using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tabaShacharDoronBible
{
  public partial class SiteMaster : MasterPage
  {
    public string loginMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
      loginMsg = "<h3>שלום ";
      loginMsg += Session["userFName"].ToString();
      loginMsg += "<h3/>";
    }
  }
}