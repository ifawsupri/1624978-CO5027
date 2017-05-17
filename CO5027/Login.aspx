<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/master.css" type="text/css" />
</head>
<body>

    <form id="form1" runat="server">

    <div id="loginform">
        <div class="loginform">
                Log In
                <p>
                    Username:
                </p>
                <asp:TextBox ID="txtboxEmail1" runat="server"></asp:TextBox>
                <asp:Literal ID="litEmail1" runat="server"></asp:Literal>
                <br />
                <br />
                Password:
                <p>
                    <asp:TextBox ID="txtboxPassword1" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Literal ID="litPassword1" runat="server"></asp:Literal>
                </p>
                <asp:Button ID="btnLogin" 
                    runat="server" 
                    CommandName="MoveNExt"
                    OnClick="btnLogin_Click" 
                    Text="Login" 
                    OnClientClick="window.location.href('Default.aspx', 'Default');"
                    PostBackUrl="~/Default.aspx" />
                <asp:Literal ID="litLogin" runat="server"></asp:Literal>
         </div>
    </div>

    <div id="registerform">
        <div class="registerform">
            Register
            <p>
                Email:
            </p>
            <asp:Textbox ID="txtboxEmail2" runat="server"></asp:Textbox>
            <span class="required">*</span>
            <asp:Literal ID="litEmail2" runat="server"></asp:Literal>
            <br />
            <br />
            Password:
            <p>
                <asp:TextBox ID="txtboxPassword2" TextMode="Password" runat="server"></asp:TextBox>
                <span class="required">*</span>
                <asp:Literal ID="litPassword2" runat="server"></asp:Literal>
            </p>
            Confirm Password:
            <p>
                <asp:TextBox ID="txtboxConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                <span class="required">*</span>
                <asp:Literal ID="litConfirmPassword" runat="server"></asp:Literal>
            </p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" style="height: 26px" />
            <asp:Literal ID="litRegister" runat="server"></asp:Literal>
        </div>
    </div>

    

        <p>
            &nbsp;</p>
    </form>

    

</body>
</html>
