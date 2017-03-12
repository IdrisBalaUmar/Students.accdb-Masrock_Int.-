using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace GISystematix_Asp
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = conn;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = LoginTxt.Value;
            string pass = PassTxt.Value;

            cmd.CommandText = "select * from AdminLogin where Email = '" + email + "' and AdPass = '" + pass + "'";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "AdminLogin");

            if (ds.Tables[0].Rows.Count > 0)
            {
                if ((email.Equals(" ") && pass.Equals(" ")))
                {
                    string script = @"<script language=""javascript"">
                        alert('Please insert valid Login Details.');
                        </script>;";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
                    //RequiredFieldValidator1.Validate();
                    
                }
                else
                {
                    Response.Redirect("Admin.aspx");
                    //Welcome wc = new Welcome();
                    //wc.Visible = true;
                }


            }
            else
            {

            }
        }
    }
}