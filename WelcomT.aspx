<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomT.aspx.cs" Inherits="GISystematix_Asp.WelcomT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
     <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br />
    </div>
    <asp:LinkButton ID="lnk_changepassword" runat="server"
        onclick="lnk_changepassword_Click">Change Password</asp:LinkButton>
    
   
    </form>
</body>
</html>
