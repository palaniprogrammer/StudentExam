using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["timeout"]!=null)
        {
            lbstatus.Text = "You test time expired, please try again!";
        }
    }

   

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        SqlConnection SQLConn = new SqlConnection(@"Data Source=LKB-L-071\SQLEXPRESS;Initial Catalog=OnlineExam;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into UserMst values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", SQLConn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);


        SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from UserMst", SQLConn);
        DataTable DTT = new DataTable();
        SQLAAdapter.Fill(DTT);

        //GridView1.DataSource = DTT;
        //GridView1.DataBind();

        lblmsg.Text = "User Profile Submit Successfully!!";
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtfname.Focus();

        Response.Redirect("default2.aspx");

        //ClientScript.RegisterStartupScript(GetType(), "myscript", "StartTest('default2.aspx');", true);
    }
}