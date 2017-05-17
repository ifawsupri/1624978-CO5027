<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="UploadPicture.aspx.cs" Inherits="CO5027.UploadPicture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <asp:FileUpload runat="server" Width="250px" ID="FileUpload1"></asp:FileUpload>
    <br />
    <br />
    <asp:label runat="server" text="Alternate Text:" ID="lblAltText"></asp:label> 
     &nbsp;&nbsp;&nbsp; 
     <asp:textbox runat="server" Width="135px" ID="txtboxAltText"></asp:textbox>
    <br />
    <br />
    <asp:button runat="server" text="Upload" Width="250px" ID="btnUpload_Click" OnClick="Unnamed4_Click" />
    <asp:Literal ID="litUploadedImageResult" runat="server"></asp:Literal>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="btnRefresh" runat="server" OnClick="btnRefresh_Click" Text="Refresh" Width="250px" />
    <asp:Button ID="btnBackToAdmin" runat="server" OnClick="btnBackToAdmin_Click" Text="Back to Admin" Width="145px" />
    <asp:Button ID="btnGoToUploadedBooks" runat="server" OnClick="btnGoToUploadedBooks_Click" Text="Go to Uploaded Books" Width="145px" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookImageID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BookImageID" HeaderText="BookImageID" InsertVisible="False" ReadOnly="True" SortExpression="BookImageID" />
            <asp:BoundField DataField="BookImageAlternateText" HeaderText="BookImageAlternateText" SortExpression="BookImageAlternateText" />
            <asp:BoundField DataField="BookImageWidth" HeaderText="BookImageWidth" SortExpression="BookImageWidth" />
            <asp:BoundField DataField="BookImageHeight" HeaderText="BookImageHeight" SortExpression="BookImageHeight" />
            <asp:BoundField DataField="BookImageExtension" HeaderText="BookImageExtension" SortExpression="BookImageExtension" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624978_co5027_asgConnectionString2 %>" DeleteCommand="DELETE FROM [BookImage] WHERE [BookImageID] = @original_BookImageID AND [BookImageAlternateText] = @original_BookImageAlternateText AND [BookImageWidth] = @original_BookImageWidth AND [BookImageHeight] = @original_BookImageHeight AND [BookImageExtension] = @original_BookImageExtension" InsertCommand="INSERT INTO [BookImage] ([BookImageAlternateText], [BookImageWidth], [BookImageHeight], [BookImageExtension]) VALUES (@BookImageAlternateText, @BookImageWidth, @BookImageHeight, @BookImageExtension)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BookImage]" UpdateCommand="UPDATE [BookImage] SET [BookImageAlternateText] = @BookImageAlternateText, [BookImageWidth] = @BookImageWidth, [BookImageHeight] = @BookImageHeight, [BookImageExtension] = @BookImageExtension WHERE [BookImageID] = @original_BookImageID AND [BookImageAlternateText] = @original_BookImageAlternateText AND [BookImageWidth] = @original_BookImageWidth AND [BookImageHeight] = @original_BookImageHeight AND [BookImageExtension] = @original_BookImageExtension">
        <DeleteParameters>
            <asp:Parameter Name="original_BookImageID" Type="Int32" />
            <asp:Parameter Name="original_BookImageAlternateText" Type="String" />
            <asp:Parameter Name="original_BookImageWidth" Type="Int32" />
            <asp:Parameter Name="original_BookImageHeight" Type="Int32" />
            <asp:Parameter Name="original_BookImageExtension" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookImageAlternateText" Type="String" />
            <asp:Parameter Name="BookImageWidth" Type="Int32" />
            <asp:Parameter Name="BookImageHeight" Type="Int32" />
            <asp:Parameter Name="BookImageExtension" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookImageAlternateText" Type="String" />
            <asp:Parameter Name="BookImageWidth" Type="Int32" />
            <asp:Parameter Name="BookImageHeight" Type="Int32" />
            <asp:Parameter Name="BookImageExtension" Type="String" />
            <asp:Parameter Name="original_BookImageID" Type="Int32" />
            <asp:Parameter Name="original_BookImageAlternateText" Type="String" />
            <asp:Parameter Name="original_BookImageWidth" Type="Int32" />
            <asp:Parameter Name="original_BookImageHeight" Type="Int32" />
            <asp:Parameter Name="original_BookImageExtension" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
