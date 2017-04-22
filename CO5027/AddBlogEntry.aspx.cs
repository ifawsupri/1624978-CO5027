using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class AddBlogEntry : System.Web.UI.Page
    {
        public string Body { get; internal set; }
        public DateTime Date { get; internal set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEntry_Click(object sender, EventArgs e)
        {
          

            Image_Table entry = new Image_Table();
            entry.ImageName = txtboxBody.Text;
            BookSisEntities db = new BookSisEntities();
            db.Image_Table.Add(entry);
            db.SaveChanges();




        }
    }
}