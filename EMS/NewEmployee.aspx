<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewEmployee.aspx.cs" Inherits="NewEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"/>
</head>
<body>
     <div class="top_menubar">
        <div class="profile">
           <div class="profile-details">
                <asp:Label ID="Label3" runat="server" Text="Welcome Admin" Font-Size="Larger"></asp:Label><br />
                <a href="Login.aspx">LogOut</a>
            </div>
            <div class="picture">
                <img src="login.png" alt="Profile Image" width="50px" height="100%"/></div>
        </div>
    </div>
     <div class="side_menubar">
        <ul>
          <li><a href="" class="active"><i class="bi bi-list" style="font-size:xx-large;"></i></a></li>
            <br />
            <br />
          <li><a href="Home.aspx"><i class="bi bi-house-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="NewEmployee.aspx" ><i class="bi bi-person-plus-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="EmployeeList.aspx"><i class="bi bi-people-fill" style="font-size:xx-large"></i></a></li>
        </ul>
     </div>  
    <div class="Content">
        
        <form id="form1" runat="server" class="add-employee">
            <asp:Label ID="Label1" runat="server" Text="New Employee Details" Font-Size="X-Large"></asp:Label>
            <br />
            <hr />
            <br />
           
            <table>
                <tr>
                    <td>Employee ID<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                    <td>First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" TextMode="Number" CssClass="textbox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                    <td>Email<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="textbox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                    <td>Department<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox5" TextMode="Number" CssClass="textbox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" CssClass="drpdwn" runat="server"></asp:DropDownList></td>
                </tr>

                 <tr>
                    <td>Role<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                    <td>Salary<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" CssClass="drpdwn" runat="server"></asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="TextBox8" TextMode="Number" CssClass="textbox" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>Start Date(MM/DD/YYYY)<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                    <td>Supervisor<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox9" CssClass="textbox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" CssClass="drpdwn" runat="server"></asp:DropDownList></td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="Button1" CssClass="frm-btn" runat="server" Text="Add Employee" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" CssClass="frm-btn" runat="server" Text="Clear" OnClick="Button2_Click" /></td>
                    <td> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                </tr>

            </table>
           
        </form>
       
      </div>
    <div class="footer">
        <div class="foot-text">
            <p>@Employee Management System</p>
        </div>
    </div>
</body>
</html>
