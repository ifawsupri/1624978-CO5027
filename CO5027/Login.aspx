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
                <asp:RequiredFieldValidator 
                    ID="reqValUsername" 
                    runat="server" 
                    ErrorMessage="RequiredFieldValidator">
                </asp:RequiredFieldValidator>
                <br />
                <br />
                Password:
                <p>
                    <asp:TextBox ID="txtboxPassword1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator2" 
                        runat="server" 
                        ErrorMessage="RequiredFieldValidator">
                    </asp:RequiredFieldValidator>
                </p>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Literal ID="literalLogin" runat="server"></asp:Literal>
         </div>
    </div>

    <div id="registerform">
        <div class="registerform">
            Register
            <p>
                Email:
            </p>
            <asp:Textbox ID="txtboxEmail2" runat="server"></asp:Textbox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ErrorMessage="RequiredFieldValidator">
            </asp:RequiredFieldValidator>
            <br />
            <br />
            Username
            <p>
                <asp:TextBox ID="txtboxUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator4" 
                    runat="server" 
                    ErrorMessage="RequiredFieldValidator">
                </asp:RequiredFieldValidator>
            </p>
            Password:
            <p>
                <asp:TextBox ID="txtboxPassword2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator5" 
                    runat="server" 
                    ErrorMessage="RequiredFieldValidator">
                </asp:RequiredFieldValidator>
            </p>
            Confirm Password:
            <p>
                <asp:TextBox ID="txtboxConfirmPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator6" 
                    runat="server" 
                    ErrorMessage="RequiredFieldValidator">
                </asp:RequiredFieldValidator>
            </p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" style="height: 26px" />
            <asp:Literal ID="literalRegister" runat="server"></asp:Literal>
        </div>
    </div>

    

        <p>
            &nbsp;</p>
    </form>

    

</body>
</html>
