using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CurrencyConverter
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            p1.Height = Unit.Percentage(50);
            p1.Width = Unit.Pixel(400);

            p1.BackColor = Color.FromArgb(255, 100, 0, 255);
            p1.ForeColor = Color.Black;//ColorTranslator.FromHtml("Red");

            t1.Font.Name = "Angsana New";


        }
    }
}