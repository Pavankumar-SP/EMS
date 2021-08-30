<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
                <asp:Label ID="Label1" runat="server" Text="Welcome Admin" Font-Size="Larger"></asp:Label><br />
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
          <li><a href="NewEmployee.aspx" target="_self"><i class="bi bi-person-plus-fill" style="font-size:xx-large"></i></a></li>
          <li><a href="EmployeeList.aspx" target="_self"><i class="bi bi-people-fill" style="font-size:xx-large"></i></a></li>
        </ul>
     </div>  
    <div class="Content">
        <div style="text-align:center;position: relative;top: 5%;">
            <p style="font-size:100px">WELCOME<span style="color:red"> TO <b><I>EMS</I></b></span></p>

        </div>
    </div>  
    <div class="footer">
        <div class="foot-text">
            <p>@Employee Management System</p>
        </div>
    </div>
</body>
</html>
