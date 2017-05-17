using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624978_co5027_asg;Persist Security Info=True;User ID=user_db_1624978_co5027_asg;Password=Co5027-ASG");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Select * from BookDetail INNER JOIN BookImage On BookDetail.BookID = BookImage.BookImageID";
            cmd.ExecuteNonQuery();

            DataTable datatable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(datatable);
            itemsrpt.DataSource = datatable;
            itemsrpt.DataBind();
            con.Close();
        }
    }
}