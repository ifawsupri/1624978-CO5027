using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }     

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            // create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            // create user store and user manager
            var roleStore = new RoleStore<IdentityRole >(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(roleStore);
            // create user
            var user = new IdentityUser() { UserName = txtboxEmail2.Text};
            IdentityResult result = manager.Create(user, txtboxPassword2.Text);

            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the 1 origin page to log in for themselves
                litRegister.Text = "<br>User created. You can now login.";
            }
            else
            {
                litRegister.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }

            IdentityRole userRole = new IdentityRole("usesr");
            rolemanager.Create(userRole);
            manager.AddToRole(user.Id, "user");
            manager.Update(user); 


            if
                (
                // No everything
                String.IsNullOrWhiteSpace(txtboxEmail2.Text) &&
                String.IsNullOrWhiteSpace(txtboxPassword2.Text) &&
                String.IsNullOrWhiteSpace(txtboxConfirmPassword.Text)
                )
            {
                litRegister.Text = "Please fill in the empty field(s).";
            }

            else if
               (
               // No email & password
               String.IsNullOrWhiteSpace(txtboxEmail2.Text) &&
               String.IsNullOrWhiteSpace(txtboxPassword2.Text)
               )
            {
                litEmail2.Text = "Please fill in your email.";
                litPassword2.Text = "Please fill in your password.";
            }

            else if
               (
               // No email & confirm password
               String.IsNullOrWhiteSpace(txtboxEmail2.Text) &&
               String.IsNullOrWhiteSpace(txtboxConfirmPassword.Text)
               )
            {
                litEmail2.Text = "Please fill in your email.";
                litConfirmPassword.Text = "Please confirm your password.";
            }

            else if
               (
               // No password & cofnrim password
               String.IsNullOrWhiteSpace(txtboxPassword2.Text) &&
               String.IsNullOrWhiteSpace(txtboxConfirmPassword.Text)
               )
            {
                litPassword2.Text = "Please fill in your password.";
                litConfirmPassword.Text = "Please confirm your password.";
            }

            else if
               (
               // No email
               String.IsNullOrWhiteSpace(txtboxEmail2.Text)
               )
            {
                litEmail2.Text = "Please fill in your email.";
            }

            else if
               (
               // No password
               String.IsNullOrWhiteSpace(txtboxPassword2.Text)
               )
            {
                litPassword2.Text = "Please fill in your password.";
            }

            else if
               (
               // No confirm password
               String.IsNullOrWhiteSpace(txtboxConfirmPassword.Text)
               )
            {
                litConfirmPassword.Text = "Please confirm your password.";
            }



        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtboxEmail1.Text, txtboxPassword1.Text);
            if (user != null)
            {
                Response.Redirect("Default.aspx");
                LogUserIn(userManager, user);  //todo: log user in / instruct user to log in
                litLogin.Text = "<br>Welcome";
            }
            else
            {
                litLogin.Text = "Invalid username or password.";

            }


            if
               (
               // No (username)email & password
               String.IsNullOrWhiteSpace(txtboxEmail1.Text) &&
               String.IsNullOrWhiteSpace(txtboxPassword1.Text)
               )
            {
                litEmail1.Text = "Please fill in your username(email).";
                litPassword1.Text = "Please fill in your password.";
            }

            else if
               (
               // No email
               String.IsNullOrWhiteSpace(txtboxEmail1.Text)
               )
            {
                litEmail1.Text = "Please fill in your email.";
            }

            else if
               (
               // No password
               String.IsNullOrWhiteSpace(txtboxPassword1.Text)
               )
            {
                litPassword1.Text = "Please fill in your email.";
            }


        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
                {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
                //Note: user is automatically redirected if trying to access another page
                }
    }
}