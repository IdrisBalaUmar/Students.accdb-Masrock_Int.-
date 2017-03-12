using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace GISystematix_Asp
{
    public partial class UploadAssignment : System.Web.UI.Page
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
            
            cmd.CommandText = "select * from  Assignments";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "Assignments");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataRow drow = ds.Tables["Assignments"].NewRow();

            drow["AssTitle"] = CourseSelect.SelectedValue;
            drow["AssDesc"] = Desc.Value;
            drow["Name"] = File.Value;
            drow["AssTime"] = System.DateTimeOffset.UtcNow;
            ds.Tables["Assignments"].Rows.Add(drow);
            da.Update(ds, "Assignments");
            string script = @"<script language=""javascript"">
        alert('Assignment Uploaded Successfully.!!!');
       </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

            CourseSelect.SelectedIndex = -1;
            Desc.Value = "";
        }
    }
}