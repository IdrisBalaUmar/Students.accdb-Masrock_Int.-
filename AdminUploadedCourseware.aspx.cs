using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace GISystematix_Asp
{
    public partial class AdminUploadCourseware : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    html.Append("CourseName=\"");
                    html.Append(row["CourseName"]);
                    html.Append("\"");

                    //Name
                    html.Append("Name=\"");
                    html.Append(row["Name"]);
                    html.Append("\"");

                    //CourseDesc
                    html.Append("CourseDesc=\"");
                    html.Append(row["CourseDesc"]);
                    html.Append("\"");

                                        //end
                    html.Append(">Delete</a></td>");
                    html.Append("</tr>");
                }

                //Table end.
                //html.Append("</table>");

                //Append the HTML string to Placeholder.
                Panel1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private DataTable GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT CourseName,Name,CourseDesc FROM CourseWares"))
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