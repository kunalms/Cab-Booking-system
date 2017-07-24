using finaldotnetproject.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace finaldotnetproject.Account
{
    public partial class Register : Page
    {
        SqlConnection conn;

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=(local);Initial Catalog=cab_booking;Integrated Security=SSPI");
            conn.Open();
            String email = Email.Text;
            SqlCommand cmd = new SqlCommand("insert into [user] (password,user_name,user_email,user_contact,gender) values(@a,@b,@c,@d,@e)", conn);
            cmd.Parameters.AddWithValue("a", Password.Text);
            cmd.Parameters.AddWithValue("b", uname.Text);
            cmd.Parameters.AddWithValue("c", Email.Text);
            cmd.Parameters.AddWithValue("d", contact.Text);
            String gen = null;
            if (gender.SelectedIndex == 0)
            {
                gen = "Male";
            }
            else
            {
                gen = "Female";
            }
            cmd.Parameters.AddWithValue("e", gen);
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand("select * FROM [cab_booking].[dbo].[user] where user_email='" + email + "'", conn);
            SqlDataReader dr = cmd1.ExecuteReader();


            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };

            while (dr.Read())
            {
                Session.RemoveAll();
                Session["username"] = dr["user_name"];
                Session["id"] = dr["user_id"];
            }
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}