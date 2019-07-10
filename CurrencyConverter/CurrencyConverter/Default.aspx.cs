using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CurrencyConverter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tct.Items.Add(new ListItem("JPY", "40"));
                sci.Visible = false;
            }
        }

        protected void cb_ServerClick(object sender, EventArgs e)
        {
            decimal inr;
            bool success = decimal.TryParse(inrtb.Value,out inr);
            if (success)
            {
                output.Style["color"] = "black";
                ListItem item = tct.Items[tct.SelectedIndex];
                decimal tc = inr / decimal.Parse(item.Value);
                output.InnerText = "INR " + inr + " = " + item.Text + "" + tc;
            }
            else {
                output.Style["color"] = "red";
                output.InnerText = "Wrong input. Please enter number only.";
            }
        }

        protected void si_ServerClick(object sender, EventArgs e)
        {
            sci.Src = "images/" + tct.Items[tct.SelectedIndex].Text.ToLower()+".png";
            sci.Visible = true;
        }
    }
}