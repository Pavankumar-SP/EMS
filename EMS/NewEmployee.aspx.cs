using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class NewEmployee : System.Web.UI.Page
{
    MyDataBase mdb = new MyDataBase();
    String st = "";
    int result;
    protected void Page_Load(object sender, EventArgs e)
    {
        mdb.connectDataBase();
        DropDownList1.AutoPostBack = true;
        DropDownList2.AutoPostBack = true;
        DropDownList3.AutoPostBack = true;
        if (IsPostBack == false)
        {
            DropDownList2.Items.Add("-- Select Department --");
            DropDownList2.Items.Add("Development");
            DropDownList2.Items.Add("Testing");
            DropDownList2.Items.Add("Accounting");
            DropDownList1.Items.Add("-- Select Role --");
            DropDownList1.Items.Add("HR");
            DropDownList1.Items.Add("Project Manager");
            DropDownList1.Items.Add("Team Lead");
            DropDownList3.Items.Add("-- Select Supervisor --");
            DropDownList3.Items.Add("Vikas");
            DropDownList3.Items.Add("Abhishek");
            DropDownList3.Items.Add("Pavankumar");
        }

        RequiredFieldValidator1.ControlToValidate = "TextBox1";
        RequiredFieldValidator1.Text = "*Require";
        RequiredFieldValidator1.ErrorMessage = "*Require";
        RequiredFieldValidator1.ForeColor = Color.Red;

        RequiredFieldValidator2.ControlToValidate = "TextBox2";
        RequiredFieldValidator2.Text = "*Require";
        RequiredFieldValidator2.ErrorMessage = "*Require";
        RequiredFieldValidator2.ForeColor = Color.Red;

        RequiredFieldValidator3.ControlToValidate = "TextBox3";
        RequiredFieldValidator3.Text = "*Require";
        RequiredFieldValidator3.ErrorMessage = "*Require";
        RequiredFieldValidator3.ForeColor = Color.Red;

        RequiredFieldValidator4.ControlToValidate = "TextBox4";
        RequiredFieldValidator4.Text = "*Require";
        RequiredFieldValidator4.ErrorMessage = "*Require";
        RequiredFieldValidator4.ForeColor = Color.Red;

        RequiredFieldValidator5.ControlToValidate = "TextBox5";
        RequiredFieldValidator5.Text = "*Require";
        RequiredFieldValidator5.ErrorMessage = "*Require";
        RequiredFieldValidator5.ForeColor = Color.Red;

        RequiredFieldValidator8.ControlToValidate = "TextBox8";
        RequiredFieldValidator8.Text = "*Require";
        RequiredFieldValidator8.ErrorMessage = "*Require";
        RequiredFieldValidator8.ForeColor = Color.Red;

        RequiredFieldValidator9.ControlToValidate = "TextBox9";
        RequiredFieldValidator9.Text = "*Require";
        RequiredFieldValidator9.ErrorMessage = "*Require";
        RequiredFieldValidator9.ForeColor = Color.Red;

        RequiredFieldValidator7.ControlToValidate = "DropdownList1";
        RequiredFieldValidator7.InitialValue = "0";
        RequiredFieldValidator7.ErrorMessage = "*Select an Option";
        

        RequiredFieldValidator6.ControlToValidate = "DropdownList2";
        RequiredFieldValidator6.InitialValue = "0";
        RequiredFieldValidator6.ErrorMessage = "*Select an Option";
        

        RequiredFieldValidator10.ControlToValidate = "DropdownList3";
        RequiredFieldValidator10.InitialValue = "0";
        RequiredFieldValidator10.ErrorMessage = "*Select an Option";
        

        RegularExpressionValidator1.ControlToValidate = "TextBox4";
        RegularExpressionValidator1.Text = "*";
        RegularExpressionValidator1.ForeColor = Color.Red;
        RegularExpressionValidator1.ErrorMessage = "Invalid";

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            st = "insert into Employee values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList2.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList3.SelectedItem + "')";
            result = mdb.saveRecord(st);
            if (result == 1)
            {
                Label2.Text = "Record Saved Successfully";
                Label2.ForeColor = Color.Green;
            }
        }
        catch(Exception ex)
        {
            Label2.Text = ex.Message;
            Label2.ForeColor = Color.DarkRed;
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        DropDownList3.ClearSelection();
        TextBox1.Focus();
    }
}