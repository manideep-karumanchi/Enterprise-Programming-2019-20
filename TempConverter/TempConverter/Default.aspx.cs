using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cb_ServerClick(object sender, EventArgs e)
        {
            double ft;
            bool c = double.TryParse(ftb.Value,out ft);
            if (c)
            {
                double ct = 0, kt = 0;

                if (crb.Checked)
                {
                    ct = ftoc(ft);
                    output.InnerText = ft + " Fahrenheit Temp = " + ct + " Celsius Temp";
                }
                if (krb.Checked)
                {
                    kt = ftok(ft);
                    output.InnerText = ft + " Fahrenheit Temp = " + kt + " Celsius Temp";
                }
            }
            else {
                output.InnerText = "Unable to parse the given value. Please provide a number in the input textbox";
            }
        }
        double ftoc(double ft) {
            return (ft - 32) * 5 / 9;
        }
        double ftok(double ft)
        {
            return (ft - 32) * (5 / 9)+273;
        }
        
    }
}