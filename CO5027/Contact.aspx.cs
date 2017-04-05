﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
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

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            // Sends email using a mail server that requires login credentials and a secure connection, e.g. gmail

            //create mail client and message with to and from address, and set message subject and body

            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("wafi.supri@gmail.com", txtboxEmail.Text);


            //settings sepcific to the mail service, e.g. server location, port number and that ssl is required

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g. username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("wafi.supri@gmail.com", "blackeditionI3");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("wafi.supri@gmail.com", txtboxEmail.Text);
            msg.Subject = "comment from " + txtboxName.Text;
            msg.Body = txtboxMessage.Text;


            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}