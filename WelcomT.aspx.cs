using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GISystematix_Asp
{
    public partial class WelcomT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "WELLCOME :: " + Session["Email"];
        }
 
        protected void lnk_changepassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("Changepassword.aspx");
        }
        }
    }
}