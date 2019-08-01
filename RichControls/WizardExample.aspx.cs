using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RichControls
{
    public partial class WizardExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                String[] colors = Enum.GetNames(typeof(KnownColor));
                lstBackColor.DataSource = colors;
                lstBackColor.DataBind();

                lstForeColor.DataSource = colors;
                lstForeColor.DataBind();

                InstalledFontCollection fonts = new InstalledFontCollection();
                foreach (FontFamily family in fonts.Families)
                {
                    lstFontName.Items.Add(family.Name);
                }

                String[] borders = Enum.GetNames(typeof(BorderStyle));
                foreach (string bs in borders)
                {
                    lstBorder.Items.Add(bs);
                }
                lstBorder.SelectedIndex = 0;
                imgDefault.ImageUrl = "download.jpg";
            }
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            pnlCard.BackColor = Color.FromName(lstBackColor.SelectedValue);
            pnlCard.ForeColor = Color.FromName(lstForeColor.SelectedValue);
            lblGreeting.Font.Name = lstFontName.SelectedValue;
            int fs;
            bool fsf = Int32.TryParse(txtFontSize.Text, out fs);
            if (fsf && fs > 0)
            {
                lblGreeting.Font.Size = fs;
            }

            TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));
            pnlCard.BorderStyle = (BorderStyle)converter.ConvertFromString(lstBorder.SelectedValue);

            lblGreeting.Text = txtGreeting.Text;

            if (chkPicture.Checked)
            {
                imgDefault.Visible = true;
            }
            else
            {
                imgDefault.Visible = false;
            }
        }
    }
}