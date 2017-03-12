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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            //string con = "Data Source=JIBZY-PC\\MSSQL;Initial Catalog=GISDB;Integrated Security=True;";
            cn = new SqlConnection(conn);
        }


        protected void BtnSend_Click(object sender, EventArgs e)
        {
            // cn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            cn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from  PendingUsers";
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "PendingUsers");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataRow drow = ds.Tables["PendingUsers"].NewRow();

            drow["FName"] = FName.Text;
            drow["LName"] = LName.Text;
            drow["OName"] = OName.Text;
            drow["EMail"] = Email.Text;
            drow["Gender"] = RadioButtonList1.SelectedValue;
            drow["Qualification"] = Diploma.Text;
            drow["Occupation"] = TxtOccupation.Text;
            drow["CompProf"] = RadioButtonList2.SelectedValue;
            drow["course1"] = Course1.Checked;
            drow["course2"] = Course2.Checked;
            drow["course3"] = Course3.Checked;
            drow["course4"] = Course4.Checked;
            drow["course5"] = Course5.Checked;
            drow["course6"] = Course6.Checked;
            drow["course7"] = Course7.Checked;
            drow["course8"] = Course8.Checked;
            drow["course9"] = Course9.Checked;
            drow["course10"] = Course10.Checked;
            drow["course11"] = Course11.Checked;
            drow["Comment"] = Comment.Text;
            ds.Tables["PendingUsers"].Rows.Add(drow);
            da.Update(ds, "PendingUsers");
            string script = @"<script language=""javascript"">
        alert('Registeration Details Submitted, Please await Confirmation Notfication. Thanks..!!!!!.');
       </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

            //Response.Redirect("Default.aspx");
        }

        protected void FName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}