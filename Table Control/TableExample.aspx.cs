using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListControls
{
    public partial class TableExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                tbl.BorderStyle = BorderStyle.None;
        }

        protected void cmdgt_Click(object sender, EventArgs e)
        {
            tbl.Controls.Clear();

            int rows = Int32.Parse(txtrows.Text);
            int cols = Int32.Parse(txtcols.Text);

            for (int r = 0; r < rows; r++) {
                TableRow  tr = new TableRow();
                for (int c = 0; c < cols; c++) {
                    TableCell tc = new TableCell();
                    tc.Text = "Table Cell(" + (r + 1) + "," + (c + 1) + ")";
                    tr.Controls.Add(tc);
                }
                tbl.Controls.Add(tr);
            }
            if (chkborder.Checked) {
                tbl.BorderStyle = BorderStyle.Inset;
            }
        }
    }
}