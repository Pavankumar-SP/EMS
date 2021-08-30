<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
   
    <div class="login">
        <img src="login.png" alt="Alternate Text" width="100px" height="100px" class="logo"/>
         <form id="form1" runat="server" class="form-controls">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="lbl controls" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="lbl controls" ErrorMessage="RequiredFieldValidator" Font-Size="X-Small"></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="controls" placeholder="User Name"></asp:TextBox>
             <br />
             <br />
             <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="controls" placeholder="Password"></asp:TextBox>
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn controls" OnClick="Button1_Click"/>
             <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lbl controls" Font-Size="Small"></asp:Label>
         </form>
    </div>
 
</body>
</html>
