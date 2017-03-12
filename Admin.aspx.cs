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

namespace GISystematix_Asp
{
    public partial class Admin : System.Web.UI.Page
    {
        //string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        string strConnString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        string str;
        string str2;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
           // "SELECT count(*) FROM EligibleUsers";
            //SELECT count(*) FROM pendingusers

            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "SELECT count(*) FROM EligibleUsers";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            
            reader.Read();
            Label3.Text = reader[0].ToString();
            
            reader.Close();
            con.Close();

            SqlConnection con2 = new SqlConnection(strConnString);
            con2.Open();
            str2 = "SELECT count(*) FROM pendingusers";
            com = new SqlCommand(str2, con2);
            SqlDataReader reader2 = com.ExecuteReader();
            reader2.Read();
            Label2.Text = reader2[0].ToString();
            reader2.Close();
            con2.Close();

        }

                   
        
    }
}