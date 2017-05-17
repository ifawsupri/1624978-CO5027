<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="bookdetails">
        <h5>Book Details || Add Book</h5>
        <br />
            <div class="bookdetails">
                
                <br />
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" DataKeyNames="BookID">
                    <EditItemTemplate>
                        BookID:
                        <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                        <br />
                        BookName:
                        <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        <br />
                        BookCategory:
                        <asp:TextBox ID="BookCategoryTextBox" runat="server" Text='<%# Bind("BookCategory") %>' />
                        <br />
                        BookGenre:
                        <asp:TextBox ID="BookGenreTextBox" runat="server" Text='<%# Bind("BookGenre") %>' />
                        <br />
                        BookPrice:
                        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
                        <br />
                        BookLanguage:
                        <asp:TextBox ID="BookLanguageTextBox" runat="server" Text='<%# Bind("BookLanguage") %>' />
                        <br />
                        BookAuthor:
                        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
                        <br />
                        BookPublish:
                        <asp:TextBox ID="BookPublishTextBox" runat="server" Text='<%# Bind("BookPublish") %>' />
                        <br />
                        BookPages:
                        <asp:TextBox ID="BookPagesTextBox" runat="server" Text='<%# Bind("BookPages") %>' />
                        <br />
                        BookDescription:
                        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        
                        BookName:
                        <br />
                        &nbsp;<asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        <br />
                        BookCategory:
                        <br />
                        <asp:TextBox ID="BookCategoryTextBox" runat="server" Text='<%# Bind("BookCategory") %>' />
                        <br />
                        BookGenre:
                        <br />
                        <asp:TextBox ID="BookGenreTextBox" runat="server" Text='<%# Bind("BookGenre") %>' />
                        <br />
                        BookPrice:
                        <br />
                        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
                        <br />
                        BookLanguage:
                        <br />
                        <asp:TextBox ID="BookLanguageTextBox" runat="server" Text='<%# Bind("BookLanguage") %>' />
                        <br />
                        BookAuthor:
                        <br />
                        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
                        <br />
                        BookPublish:
                        <br />
                        <asp:TextBox ID="BookPublishTextBox" runat="server" Text='<%# Bind("BookPublish") %>' />
                        <br />
                        BookPages:
                        <br />
                        <asp:TextBox ID="BookPagesTextBox" runat="server" Text='<%# Bind("BookPages") %>' />
                        <br />
                        BookDescription:
                        <br />
                        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        BookID:
                        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                        <br />
                        BookName:
                        <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>' />
                        <br />
                        BookCategory:
                        <asp:Label ID="BookCategoryLabel" runat="server" Text='<%# Bind("BookCategory") %>' />
                        <br />
                        BookGenre:
                        <asp:Label ID="BookGenreLabel" runat="server" Text='<%# Bind("BookGenre") %>' />
                        <br />
                        BookPrice:
                        <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
                        <br />
                        BookLanguage:
                        <asp:Label ID="BookLanguageLabel" runat="server" Text='<%# Bind("BookLanguage") %>' />
                        <br />
                        BookAuthor:
                        <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' />
                        <br />
                        BookPublish:
                        <asp:Label ID="BookPublishLabel" runat="server" Text='<%# Bind("BookPublish") %>' />
                        <br />
                        BookPages:
                        <asp:Label ID="BookPagesLabel" runat="server" Text='<%# Bind("BookPages") %>' />
                        <br />
                        BookDescription:
                        <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624978_co5027_asgConnectionString2 %>" DeleteCommand="DELETE FROM [BookDetail] WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookGenre] = @original_BookGenre) OR ([BookGenre] IS NULL AND @original_BookGenre IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookLanguage] = @original_BookLanguage) OR ([BookLanguage] IS NULL AND @original_BookLanguage IS NULL)) AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookPublish] = @original_BookPublish) OR ([BookPublish] IS NULL AND @original_BookPublish IS NULL)) AND (([BookPages] = @original_BookPages) OR ([BookPages] IS NULL AND @original_BookPages IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL))" InsertCommand="INSERT INTO [BookDetail] ([BookName], [BookCategory], [BookGenre], [BookPrice], [BookLanguage], [BookAuthor], [BookPublish], [BookPages], [BookDescription]) VALUES (@BookName, @BookCategory, @BookGenre, @BookPrice, @BookLanguage, @BookAuthor, @BookPublish, @BookPages, @BookDescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BookDetail]" UpdateCommand="UPDATE [BookDetail] SET [BookName] = @BookName, [BookCategory] = @BookCategory, [BookGenre] = @BookGenre, [BookPrice] = @BookPrice, [BookLanguage] = @BookLanguage, [BookAuthor] = @BookAuthor, [BookPublish] = @BookPublish, [BookPages] = @BookPages, [BookDescription] = @BookDescription WHERE [BookID] = @original_BookID AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([BookCategory] = @original_BookCategory) OR ([BookCategory] IS NULL AND @original_BookCategory IS NULL)) AND (([BookGenre] = @original_BookGenre) OR ([BookGenre] IS NULL AND @original_BookGenre IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookLanguage] = @original_BookLanguage) OR ([BookLanguage] IS NULL AND @original_BookLanguage IS NULL)) AND (([BookAuthor] = @original_BookAuthor) OR ([BookAuthor] IS NULL AND @original_BookAuthor IS NULL)) AND (([BookPublish] = @original_BookPublish) OR ([BookPublish] IS NULL AND @original_BookPublish IS NULL)) AND (([BookPages] = @original_BookPages) OR ([BookPages] IS NULL AND @original_BookPages IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookCategory" Type="String" />
                        <asp:Parameter Name="original_BookGenre" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="String" />
                        <asp:Parameter Name="original_BookLanguage" Type="String" />
                        <asp:Parameter Name="original_BookAuthor" Type="String" />
                        <asp:Parameter Name="original_BookPublish" Type="String" />
                        <asp:Parameter Name="original_BookPages" Type="String" />
                        <asp:Parameter Name="original_BookDescription" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookCategory" Type="String" />
                        <asp:Parameter Name="BookGenre" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="String" />
                        <asp:Parameter Name="BookLanguage" Type="String" />
                        <asp:Parameter Name="BookAuthor" Type="String" />
                        <asp:Parameter Name="BookPublish" Type="String" />
                        <asp:Parameter Name="BookPages" Type="String" />
                        <asp:Parameter Name="BookDescription" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BookName" Type="String" />
                        <asp:Parameter Name="BookCategory" Type="String" />
                        <asp:Parameter Name="BookGenre" Type="String" />
                        <asp:Parameter Name="BookPrice" Type="String" />
                        <asp:Parameter Name="BookLanguage" Type="String" />
                        <asp:Parameter Name="BookAuthor" Type="String" />
                        <asp:Parameter Name="BookPublish" Type="String" />
                        <asp:Parameter Name="BookPages" Type="String" />
                        <asp:Parameter Name="BookDescription" Type="String" />
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_BookName" Type="String" />
                        <asp:Parameter Name="original_BookCategory" Type="String" />
                        <asp:Parameter Name="original_BookGenre" Type="String" />
                        <asp:Parameter Name="original_BookPrice" Type="String" />
                        <asp:Parameter Name="original_BookLanguage" Type="String" />
                        <asp:Parameter Name="original_BookAuthor" Type="String" />
                        <asp:Parameter Name="original_BookPublish" Type="String" />
                        <asp:Parameter Name="original_BookPages" Type="String" />
                        <asp:Parameter Name="original_BookDescription" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                    <br />
                  
            </div>
     </div>





     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" InsertVisible="False" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="BookCategory" HeaderText="BookCategory" SortExpression="BookCategory" />
                <asp:BoundField DataField="BookGenre" HeaderText="BookGenre" SortExpression="BookGenre" />
                <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                <asp:BoundField DataField="BookLanguage" HeaderText="BookLanguage" SortExpression="BookLanguage" />
                <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
                <asp:BoundField DataField="BookPublish" HeaderText="BookPublish" SortExpression="BookPublish" />
                <asp:BoundField DataField="BookPages" HeaderText="BookPages" SortExpression="BookPages" />
                <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" />
                <asp:HyperLinkField DataNavigateUrlFields="BookID" DataNavigateUrlFormatString="UploadPicture.aspx?Id={0}" HeaderText="Image" Text="Upload" />
            </Columns>
        </asp:GridView>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
