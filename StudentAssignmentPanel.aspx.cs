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
using System.Text;

namespace GISystematix_Asp
{
    public partial class StudentAssignmentPanel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = conn;

            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    int count = 0;
                    foreach (DataColumn column in dt.Columns)
                    {
                        if (count < 4)
                        {
                            html.Append("<td>");
                            html.Append(row[column.ColumnName]);
                            html.Append("</td>");
                        }
                        count++;
                    }
                    html.Append("<td><a href=\"#info\" data-toggle=\"modal\" data-target=\"#info\"");
                    //courseName
                    html.Append("AssTitle=\"");
                    html.Append(row["AssTitle"]);
                    html.Append("\"");

                    //Assignment Description
                    html.Append("AssDesc=\"");
                    html.Append(row["AssDesc"]);
                    html.Append("\"");

                    //Name
                    html.Append("Name=\"");
                    html.Append(row["Name"]);
                    html.Append("\"");

                    //Submission Time
                    html.Append("AssTime=\"");
                    html.Append(row["AssTime"]);
                    
                    html.Append("\"");
                    html.Append("</tr>");
                }

                //Table end.
                //html.Append("</table>");

                //Append the HTML string to Placeholder.
                Panel1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            cmd.CommandText = "select AssTitle,AssDesc,Name,AssTime from  Assignments";
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

        private DataTable GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT AssTitle,AssDesc,Name,AssTime FROM Assignments"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}