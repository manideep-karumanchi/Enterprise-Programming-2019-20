using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StylesThemesMasterpages
{
    public partial class p2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void show_Click(object sender, EventArgs e)
        {
            StylesThemesMasterpages.masterpages.TableLayout mpage = (StylesThemesMasterpages.masterpages.TableLayout)this.Master;
            mpage.ShowStatus = true;
        }

        protected void hide_Click(object sender, EventArgs e)
        {
            StylesThemesMasterpages.masterpages.TableLayout mpage = (StylesThemesMasterpages.masterpages.TableLayout)this.Master;
            mpage.ShowStatus = false;
        }
    }
}