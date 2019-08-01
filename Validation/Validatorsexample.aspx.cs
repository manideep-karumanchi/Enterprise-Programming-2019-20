using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class Validatorsexample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valcap_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try { 
                
                int num = Int32.Parse(args.Value.Substring(0, 3));
                if (num % 7 == 0)
                {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }
            }
            catch(Exception){
                args.IsValid = false;
            }
        }

        protected void cmdsub_Click(object sender, EventArgs e)
        {
            if (IsValid) {
                Response.Write("All the controls contain valid data");
            }
        }
    }
}