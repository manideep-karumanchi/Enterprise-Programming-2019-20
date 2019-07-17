using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CurrencyConverter
{
    public partial class Redirection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("To <b>bold</b> text use"+Server.HtmlEncode(" <b> tag"));
        }

        protected void anchor1_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void anchor2_ServerClick(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }
    }
}