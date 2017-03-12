using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using GISystematix_Asp;
using System.Net.Mail;
using System.Net;

namespace GISystematix_Asp
{
    public partial class AdminViewStudents : System.Web.UI.Page
    {
        SqlConnection cn;
        public static string course;
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            cn = new SqlConnection(conn);

            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                //html.Append("<table border = '1'>");

                //Building the Header row.
                /*html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");*/

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    int count = 0;
                    foreach (DataColumn column in dt.Columns)
                    {
                        if (count < 3)
                        {
                            html.Append("<td>");
                            html.Append(row[column.ColumnName]);
                            html.Append("</td>");
                        }
                        count++;
                    }
                    html.Append("<td><a href=\"#info\" data-toggle=\"modal\" data-target=\"#info\"");
                    //id
                    html.Append("data-id=\"");
                    html.Append(row["UserID"]);
                    html.Append("\"");

                    //FName
                    html.Append("data-f_name=\"");
                    html.Append(row["FName"]);
                    html.Append("\"");

                    //LName
                    html.Append("data-l_name=\"");
                    html.Append(row["LName"]);
                    html.Append("\"");

                    //OName
                    html.Append("data-o_name=\"");
                    html.Append(row["OName"]);
                    html.Append("\"");

                    //Email
                    html.Append("data-email=\"");
                    html.Append(row["Email"]);
                    html.Append("\"");

                    //Gender
                    html.Append("data-gender=\"");
                    html.Append(row["Gender"]);
                    html.Append("\"");

                    //Qualification
                    html.Append("data-qualify=\"");
                    html.Append(row["Qualification"]);
                    html.Append("\"");

                    //Occupation
                    html.Append("data-occupy=\"");
                    html.Append(row["Occupation"]);
                    html.Append("\"");

                    //CompProf
                    html.Append("data-comp_proc=\"");
                    html.Append(row["CompProf"]);
                    html.Append("\"");

                    //course1
                    html.Append("data-course1=\"");
                    html.Append(row["course1"]);
                    html.Append("\"");

                    //course2
                    html.Append("data-course2=\"");
                    html.Append(row["course2"]);
                    html.Append("\"");

                    //course3
                    html.Append("data-course3=\"");
                    html.Append(row["course3"]);
                    html.Append("\"");

                    //course4
                    html.Append("data-course4=\"");
                    html.Append(row["course4"]);
                    html.Append("\"");

                    //course5
                    html.Append("data-course5=\"");
                    html.Append(row["course5"]);
                    html.Append("\"");

                    //course6
                    html.Append("data-course6=\"");
                    html.Append(row["course6"]);
                    html.Append("\"");

                    //course7
                    html.Append("data-course7=\"");
                    html.Append(row["course7"]);
                    html.Append("\"");

                    //course8
                    html.Append("data-course8=\"");
                    html.Append(row["course8"]);
                    html.Append("\"");

                    //course9
                    html.Append("data-course9=\"");
                    html.Append(row["course9"]);
                    html.Append("\"");

                    //course10
                    html.Append("data-course10=\"");
                    html.Append(row["course10"]);
                    html.Append("\"");

                    //course11
                    html.Append("data-course11=\"");
                    html.Append(row["course11"]);
                    html.Append("\"");

                    //Comment
                    html.Append("data-comment=\"");
                    html.Append(row["Comment"]);
                    html.Append("\"");

                    //end
                    html.Append(">View</a></td>");
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM PendingUsers"))
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

        protected string PasswordGenerator()
        {
            string allowedChars = "";
            allowedChars = "a,b,c,d,e,f,g,h,i,j,";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,";
            allowedChars += "1,2,3,4,5,6,7,8,9,0,";
            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);
            string passwordString = "";
            string temp = "";
            Random rand = new Random();
            for (int i = 0; i < 10; i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                passwordString += temp;
            }
            return passwordString;
        }

        //protected static void SendMail()
        //{
        //    string HostAdd;
        //    string FromEmailid;
        //    string Pass;
        //    string Subject = "";
        //    string Body = "";
        //    //Reading sender Email fil from web.config file
        //    HostAdd = ConfigurationManager.AppSettings["Host"].ToString();
        //    FromEmailid = ConfigurationManager.AppSettings["FromMail"].ToString();
        //    Pass = ConfigurationManager.AppSettings["Password"].ToString();

        //    //creating the object of the mail message
        //    MailMessage mm = new MailMessage();
        //    mm.From = new MailAddress(FromEmailid);
        //    mm.Subject = Subject;
        //    mm.Body = Body;
        //    mm.To.Add(new MailAddress(Email.Value));

        //    //creating an object of smtp client
        //    SmtpClient sc = new SmtpClient();
        //    sc.Host = HostAdd;

        //    //network security related credentials
        //    sc.EnableSsl = true;
        //    NetworkCredential nc = new NetworkCredential();
        //    nc.UserName = mm.From.Address;
        //    nc.Password = Pass;
        //    sc.UseDefaultCredentials = true;
        //    sc.Credentials = nc;
        //    sc.Port = 587;
        //    sc.Send(mm); // sending mail message


        //}

        protected void acceptbtn_Click(object sender, EventArgs e)
        {
            PasswordGenerator();

            string UserID = Sid.Value;
            //Assigning course code
            if (C1.Value.Equals("True"))
            {
                course += "C001,";
            }
            if (C2.Value.Equals("True"))
            {
                course += "C002,";
            }
            if (C3.Value.Equals("True"))
            {
                course += "C003,";
            }
            if (C4.Value.Equals("True"))
            {
                course += "C004,";
            }
            if (C5.Value.Equals("True"))
            {
                course += "C005,";
            }
            if (C6.Value.Equals("True"))
            {
                course += "C006,";
            }
            if (C7.Value.Equals("True"))
            {
                course += "C007,";
            }
            if (C8.Value.Equals("True"))
            {
                course += "C008,";
            }
            if (C9.Value.Equals("True"))
            {
                course += "C009,";
            }
            if (C10.Value.Equals("True"))
            {
                course += "C010,";
            }
            if (C11.Value.Equals("True"))
            {
                course += "C011,";
            }


            cn.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from  EligibleUsers";
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "EligibleUsers");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataRow drow = ds.Tables["EligibleUsers"].NewRow();

            drow["UserID"] = Sid.Value;
            drow["FirstName"] = FName.Value;
            drow["LastName"] = LName.Value;
            drow["OtherName"] = OName.Value;
            drow["Email"] = Email.Value;
            drow["UPassword"] = PasswordGenerator();
            drow["Gender"] = Gender.Value;
            drow["Qualification"] = Quali.Value;
            drow["Occupation"] = Occup.Value;
            drow["CompProf"] = CompProf.Value;
            drow["Courses"] = course;
            drow["Comment"] = Comment.Value;
            ds.Tables["EligibleUsers"].Rows.Add(drow);
            da.Update(ds, "EligibleUsers");
            

            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "delete from  PendingUsers where UserID=@UserID";
            cmd2.Connection = cn;
            cmd2.Parameters.AddWithValue("@UserId", UserID);
            cmd2.ExecuteNonQuery();
            cn.Close();

            string p = PasswordGenerator();
            //Success Message
            string script = @"<script language=""javascript"">
        alert('Applicant Approved Successfully!!!!!.+p+');
       </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
            

            //creating a mailing service
            //string p = PasswordGenerator();
            //string HostAdd;
            //string FromEmailid;
            //string Pass;
            //string Subject = "GISystematix Acceptance Information!!!";
            //string Body = "Welcome to GISystematix Nigeria.\n Your Details has been processed and you now have access to our online training Institute.\n Your Portal Password is '"+p+ "'.\n You have access to change to your desired password anytime. Welcom!!!";
            ////Reading sender Email fil from web.config file
            //HostAdd = ConfigurationManager.AppSettings["Host"].ToString();
            //FromEmailid = ConfigurationManager.AppSettings["FromMail"].ToString();
            //Pass = ConfigurationManager.AppSettings["Password"].ToString();

            ////creating the object of the mail message
            //MailMessage mm = new MailMessage();
            //mm.From = new MailAddress(FromEmailid);
            //mm.Subject = Subject;
            //mm.Body = Body;
            //mm.To.Add(new MailAddress(Email.Value));

            ////creating an object of smtp client
            //SmtpClient sc = new SmtpClient();
            //sc.Host = HostAdd;

            ////network security related credentials
            //sc.EnableSsl = true;
            //NetworkCredential nc = new NetworkCredential();
            //nc.UserName = mm.From.Address;
            //nc.Password = Pass;
            //sc.UseDefaultCredentials = true;
            //sc.Credentials = nc;
            //sc.Port = 587;
            //sc.Send(mm); // sending mail message



            Server.Transfer("AdminViewStudents.aspx");

        }

        protected void declinebtn_Click(object sender, EventArgs e)
        {
            cn.Open();
            string UserID = Sid.Value;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from  PendingUsers where UserID=@UserID";
            cmd.Connection = cn;
            cmd.Parameters.AddWithValue("@UserId", UserID);
            cmd.ExecuteNonQuery();
            cn.Close();

            string script = @"<script language=""javascript"">
        confirm('Applicant Declined Successfully!!!!!.');
       </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

            Server.Transfer("AdminViewStudents.aspx");
            
        }
    }
}