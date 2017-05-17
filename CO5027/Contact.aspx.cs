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
                // No everything
                String.IsNullOrWhiteSpace(txtboxName.Text) &&
                String.IsNullOrWhiteSpace(txtboxEmail.Text) &&
                String.IsNullOrWhiteSpace(txtboxMessage.Text)
                )
                {
                    litResult.Text = "Please fill in the empty field(s).";
                }

            else if
                (
                // No email & message
                String.IsNullOrWhiteSpace(txtboxEmail.Text) &&
                String.IsNullOrWhiteSpace(txtboxMessage.Text)
                )
                {
                    litEmail.Text = "Please fill in your email.";
                    litMessage.Text = "Please fill in your message.";
                }

            else if
                (
                // No name & message
                String.IsNullOrWhiteSpace(txtboxName.Text) &&
                String.IsNullOrWhiteSpace(txtboxMessage.Text)
                )
                {
                    litName.Text = "Please fill in your name.";
                    litMessage.Text = "Please fill in your message.";
                }

            else if
                (
                // No name & email
                String.IsNullOrWhiteSpace(txtboxName.Text) &&
                String.IsNullOrWhiteSpace(txtboxEmail.Text)
                )
                {
                    litName.Text = "Please fill in your name.";
                    litEmail.Text = "Please fill in your email.";
                }

            else if
                (
                // No message
                String.IsNullOrWhiteSpace(txtboxMessage.Text)
                )
                {
                    litMessage.Text = "Please fill in your message.";
                }

            else if
                (
                // No email
                String.IsNullOrWhiteSpace(txtboxEmail.Text)
                )
                {
                    litEmail.Text = "Please fill in your email.";
                }

            else if
                (
                // No name
                String.IsNullOrWhiteSpace(txtboxName.Text)
                )
                {
                    litName.Text = "Please fill in your name.";
                }

            else if 
                (
                    // No @ at Email
                    ((!string.IsNullOrWhiteSpace(txtboxName.Text)) &&
                    (!string.IsNullOrWhiteSpace(txtboxEmail.Text)) &&
                    (!string.IsNullOrWhiteSpace(txtboxMessage.Text)) &&
                    (!Regex.IsMatch(txtboxEmail.Text,
                    @"^(>("")("",+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^'\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))))
                        {
                            litEmail.Text = "Invalid email address.";
                        }

            
                
            else { 

                SmtpClient client = new SmtpClient();
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                client.Host = "smtp.gmail.com";
                client.Port = 587;

                // Smtp authentication
                System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("ifaw.supri@gmail.com", "yourpassword");
                client.UseDefaultCredentials = false;
                client.Credentials = userpass;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(txtboxEmail.Text);
                msg.To.Add(new MailAddress("ifaw.supri@gmail.com"));
           
                msg.Subject = txtboxEmail.Text;
                msg.IsBodyHtml = true;
                msg.Body = string.Format
                    ("<br><b>From: </b>" + txtboxName.Text + 
                    "<b>, <br>Email: </b>" + txtboxEmail.Text + 
                    "<b>, <br>From: </b>" + dropdownCountry.SelectedItem.Text + 
                    "<b>, <br>Message:<br> </b>" + txtboxMessage.Text) ;



                


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