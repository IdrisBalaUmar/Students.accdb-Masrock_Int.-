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
    public partial class AdminUploadMaterial : System.Web.UI.Page
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
            cmd.CommandText = "select * from  CourseWares";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "CourseWares");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataRow drow = ds.Tables["CourseWares"].NewRow();

            drow["CourseName"] = DropDownList1.SelectedValue;
            drow["CourseDesc"] = CDesc.Value;
            drow["Name"] = File.Value;
            ds.Tables["CourseWares"].Rows.Add(drow);
            da.Update(ds, "CourseWares");
            string script = @"<script language=""javascript"">
        alert('Course Ware Uploaded Successfully.!!!');
       </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

            DropDownList1.SelectedIndex = -1;
            CDesc.Value = "";
        }
    }
}