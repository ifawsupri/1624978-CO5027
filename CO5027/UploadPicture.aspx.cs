using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class UploadPicture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            //get the extension of our image file 
            string extension = (System.IO.Path.GetExtension(FileUpload1.FileName).ToLower());

            //check the extension is valid
            if (extension == ".jpeg" || extension == ".png" || extension == ".gif" || extension == ".jpg")

              {
                //load the image in memory so we can determine it's dimensions
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;
                //save the image data
                db_1624978_co5027_asgEntities db = new db_1624978_co5027_asgEntities();
                BookImage imageData = new BookImage();
                imageData.BookImageAlternateText = txtboxAltText.Text;
                imageData.BookImageWidth = width;
                imageData.BookImageHeight = height;
                imageData.BookImageExtension = extension;
                db.BookImages.Add(imageData);
                db.SaveChanges();
                //assemble the filename
                string filename = imageData.BookImageID.ToString() + extension;

                //save the image file (we could have alternatively saved the posted file,
                //but this would save any modifications we may have made to the image)
                img.Save(Server.MapPath("~/images/" + filename));
                //inform the user
                litUploadedImageResult.Text = "<p>Your file was uploaded as " + filename + " in the UploadedImages folder</p>";
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btnBackToAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void btnGoToUploadedBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }
    }
}