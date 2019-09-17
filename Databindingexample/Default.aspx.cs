using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Databindingexample
{
    public partial class Default : System.Web.UI.Page
    {
        protected String expression;
        protected void Page_Load(object sender, EventArgs e)
        {
             expression = "Images/1.png";
            DataBind();
        }
    }
}