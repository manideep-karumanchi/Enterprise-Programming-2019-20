using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StylesThemesMasterpages.masterpages
{
    public partial class TableLayout : System.Web.UI.MasterPage
    {
        public bool ShowStatus {
            get {
                return Calendar1.Visible;
            }
            set {
                Calendar1.Visible = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}