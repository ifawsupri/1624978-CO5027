<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBlogEntry.aspx.cs" Inherits="CO5027.AddBlogEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/AddBlogEntry.css" type="html/sandboxed" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="txtboxTitle">
        </asp:Label>
        <asp:Textbox ID="txtboxTitle" runat="server" MaxLength="100"></asp:Textbox>
    </div>
    <div>
        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
        <asp:TextBox ID="txtboxBody" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblBody2" runat="server" Text="Body2"></asp:Label>
        <asp:TextBox ID="txtboxBody2" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>
        <p>
        <asp:Button ID="btnAddEntry" runat="server" Text="Add Blog Entry" OnClick="btnAddEntry_Click" />
        </p>
    </form>
</body>
</html>
