using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace DisconnectedDataAccess
{
    class Program
    {
        static void Main(string[] args)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver");
            adapter.SelectCommand=new SqlCommand("select * from authors",con);

            adapter.Fill(ds,"authors");
            DataTable authorstable=ds.Tables["authors"];
            foreach(DataRow row in authorstable.Rows){
                Console.WriteLine(row[0]+"\t"+row[1]);
            }
            Console.Read();
        }
    }
}
