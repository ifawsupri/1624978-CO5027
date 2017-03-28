<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="ContactPage">


    <p style="text-align: center">
        <asp:Label ID="lblName" runat="server" Text="Name:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtboxName" runat="server" Height="25px" Width="200px"></asp:TextBox>
</p>
    <p style="text-align: center">
        <asp:Label ID="lblEmail" runat="server" Text="Email:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtboxEmail" runat="server" Height="25px" Width="200px"></asp:TextBox>
</p>
    <p style="text-align: center">
        <asp:Label ID="lblCountry" runat="server" Text="Country:" style="font-weight: 700"></asp:Label>
        <asp:DropDownList ID="dropdownCountry" runat="server" Height="25px" Width="200px">
            <asp:ListItem>Brunei Darussalam</asp:ListItem>
            <asp:ListItem>Cambodia</asp:ListItem>
            <asp:ListItem>East Timor</asp:ListItem>
            <asp:ListItem>Indonesia</asp:ListItem>
            <asp:ListItem>Laos</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Myanmar</asp:ListItem>
            <asp:ListItem>Philippines</asp:ListItem>
            <asp:ListItem>Singapore</asp:ListItem>
            <asp:ListItem>Thailand</asp:ListItem>
            <asp:ListItem>Vietnam</asp:ListItem>
        </asp:DropDownList>
</p>
    <p style="text-align: center">
        <asp:Label ID="lblMessage" runat="server" Height="110px" style="font-weight: 700" Text="Message:"></asp:Label>
        <asp:TextBox ID="txtboxMessage" runat="server" Height="100px" Width="500px"></asp:TextBox>
    </p>
        <p style="text-align: center">
        <asp:Button ID="btnSubmit" runat="server" style="font-weight: 700; text-align: center" Text="Submit" Width="100px" />
    </p>


        </div>
</asp:Content>
