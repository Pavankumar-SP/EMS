using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        RequiredFieldValidator1.ControlToValidate = "TextBox1";
        RequiredFieldValidator1.Text = "Email ID Must";
        RequiredFieldValidator1.ErrorMessage = "Email ID Must";
        RequiredFieldValidator1.ForeColor = Color.Red;

        RequiredFieldValidator2.ControlToValidate = "TextBox2";
        RequiredFieldValidator2.Text = "Password is Must";
        RequiredFieldValidator2.ErrorMessage = "Password is Must";
        RequiredFieldValidator2.ForeColor = Color.Red;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text.Equals("Admin") && TextBox2.Text.Equals("12345"))
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Username and Password is incorrect";
            Label1.ForeColor = Color.Red;
            TextBox1.Text = "";
            TextBox2.Text = "";
            
        }
    }
}