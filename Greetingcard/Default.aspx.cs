using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreetingCard
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                lstBackColor.Items.Add("Red");
                lstBackColor.Items.Add("white");
                lstBackColor.Items.Add("Blue");
                lstBackColor.Items.Add("Yellow");

                lstFontName.Items.Add("Times New Roman");
                lstFontName.Items.Add("Verdana");
                lstFontName.Items.Add("Calibri");
                lstFontName.Items.Add("Old English Text MT");

                ListItem item = new ListItem();
                item.Text = "None";
                item.Value = ((int)BorderStyle.None).ToString();
                lstBorder.Items.Add(item);

                item = new ListItem();
                item.Text = "Double";
                item.Value = ((int)BorderStyle.Double).ToString();
                lstBorder.Items.Add(item);

                item = new ListItem();
                item.Text = "Dotted";
                item.Value = ((int)BorderStyle.Dotted).ToString();
                lstBorder.Items.Add(item);

                imgDefault.ImageUrl = "download.jpg";
            }
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            pnlCard.BackColor = Color.FromName(lstBackColor.SelectedValue);

            lblGreeting.Font.Name = lstFontName.SelectedValue;
            int fs;
            bool fsf = Int32.TryParse(txtFontSize.Text, out fs);
            if (fsf && fs > 0) {
                lblGreeting.Font.Size = fs;
            }
            int borderstyle = Int32.Parse(lstBorder.SelectedValue);
            pnlCard.BorderStyle = (BorderStyle)borderstyle;

            lblGreeting.Text = txtGreeting.Text;

            if (chkPicture.Checked)
            {
                imgDefault.Visible = true;
            }
            else {
                imgDefault.Visible = false;
            }
        }
    }
}