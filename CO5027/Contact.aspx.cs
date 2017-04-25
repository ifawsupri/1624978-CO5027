using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Contact : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if
                (
                String.IsNullOrWhiteSpace(txtboxName.Text) ||
                String.IsNullOrWhiteSpace(txtboxEmail.Text) ||
                String.IsNullOrWhiteSpace(txtboxMessage.Text)
                )
            {
                litResult.Text = "Please fill in the empty field.";
            }

            else if 
                (
                    // Test Email
                    ((!string.IsNullOrWhiteSpace(txtboxName.Text)) &&
                    (!string.IsNullOrWhiteSpace(txtboxEmail.Text)) &&
                    (!string.IsNullOrWhiteSpace(txtboxMessage.Text)) &&
                    (!Regex.IsMatch(txtboxEmail.Text,
                    @"^(>("")("",+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^'\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))))
                        {
                            litResult.Text = "Invalid email address.";
                        }
                
            else { 

                SmtpClient client = new SmtpClient();
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                client.Host = "smtp.gmail.com";
                client.Port = 587;

                // Smtp authentication
                System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("ifaw.supri@gmail.com", "blackeditionI3");
                client.UseDefaultCredentials = false;
                client.Credentials = userpass;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(txtboxEmail.Text);
                msg.To.Add(new MailAddress(txtboxEmail.Text));
           
                msg.Subject = txtboxEmail.Text;
                msg.IsBodyHtml = true;
                msg.Body = string.Format
                    ("<br><b>From: </b>" + txtboxName.Text + 
                    "<b>, <br>Email: </b>" + txtboxEmail.Text + 
                    "<b>, <br>From: </b>" + dropdownCountry.SelectedItem.Text + 
                    "<b>, <br>Message: </b>" + txtboxMessage.Text);



                


                try
                {
                    client.Send(msg);
                    litResult.Text = "Your message has been successfully sent.";
                }
                catch (Exception ex)
                {
                    litResult.Text = "Error occured while sending your message." + ex.Message;
                }

            }
        }
    }
}