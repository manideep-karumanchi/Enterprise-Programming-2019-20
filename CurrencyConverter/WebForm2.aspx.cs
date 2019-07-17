using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace CurrencyConverter
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void img1_ServerClick(object sender, ImageClickEventArgs e)
        {
            Response.Write("User Clicked at (" + e.X + "," + e.Y + ")");
        }
        
    }
}