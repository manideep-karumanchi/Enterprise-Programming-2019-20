using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ADODisconnectedmodel
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
            
            adapter.SelectCommand = new SqlCommand("select * from authors",con);
            adapter.Fill(ds, "authors");

            adapter.SelectCommand = new SqlCommand("select * from titleauthor", con);
            adapter.Fill(ds, "titleauthor");

            adapter.SelectCommand = new SqlCommand("select * from titles", con);
            adapter.Fill(ds, "titles");

            DataRelation authors_titleauthor = new DataRelation("authors_titleauthor", ds.Tables["authors"].Columns["au_id"], ds.Tables["titleauthor"].Columns["au_id"]);
            DataRelation titles_titleauthor = new DataRelation("titles_titleauthor", ds.Tables["titles"].Columns["title_id"], ds.Tables["titleauthor"].Columns["title_id"]);

            ds.Relations.Add(authors_titleauthor);
            ds.Relations.Add(titles_titleauthor);

            foreach (DataRow authorsrow in ds.Tables["authors"].Rows) {
                Response.Write("<br /><b>" + authorsrow["au_fname"] + " " + authorsrow["au_lname"] + "</b>");

                foreach (DataRow row in authorsrow.GetChildRows(authors_titleauthor)) {
                    DataRow Titlerow = row.GetParentRow(titles_titleauthor);
                    Response.Write("<br />" + Titlerow["title"]);
                }
            }
        }
    }
}