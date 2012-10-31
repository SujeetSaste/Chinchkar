using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Chinchkar
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Membership.CreateUser("Admin", "Admin123", "sujeet_saste@yahoo.in");
                //Roles.CreateRole("Admin");
                //Roles.AddUserToRole("Admin", "Admin");
            }
        }

        
    }
}