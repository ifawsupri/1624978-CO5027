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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            // create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            // create user
            var user = new IdentityUser() { UserName = txtboxUsername.Text, Email = txtboxEmail2.Text };
            IdentityResult result = manager.Create(user, txtboxPassword2.Text);
            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the 1 origin page to log in for themselves
            }
            else
            {
                literalRegister.Text = "An error has occured: " + result.Errors.FirstOrDefault();
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
                LogUserIn(userManager, user);  //todo: log user in / instruct user to log in
            }
            else
            {
                literalLogin.Text = "Invalid username or password.";

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