<%@ Page Title="Books" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="CO5027.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">


    <h2>Non-Fiction Novel</h2>
                   
    <!---------------------------------------- BOOK 1 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn1">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal1" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Pattern Maker - Nicholas Lim</h2>
                        </div>
                        <div class="modal-body">
                            <p>Then <s>$29.99</s>, Now $24.99</p>
                            <p>“A gripping read, I enjoyed it very much.” Jill Paton Walsh, Booker Prize shortlisted author of Knowledge of Angels. 
                                How much loyalty does a mother owe to her son? And how does a doctor choose between faith and her science?
                            </p>
                        </div>
                        <div class="modal-footer">
                            <h3>A Creative Workbook - 2015</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal1');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn1");

                        // Get the <span> element that closes the modal
                        var span = document.getElementsByClassName("close")[0];

                        // When the user clicks the button, open the modal 
                        btn.onclick = function() {
                        modal.style.display = "block";
                        }

                        // When the user clicks on <span> (x), close the modal
                        span.onclick = function() {
                        modal.style.display = "none";
                        }

                        // When the user clicks anywhere outside of the modal, close it
                        window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                        }
                        </script>


    <div id="box">
        <asp:Repeater ID="itemsrpt" runat="server">
            <HeaderTemplate>
                <itemtemplate>
                    <div class="books" id="books">
                        <img src=".../images/<%#Eval("BookImageID") %><%# Eval("BookImageExtension") %>" alt="<%#Eval("BookImageAlternateText") %>" />
                    <div class="text">
                        <h5><%#Eval("BookImageName")%></h5>
                        <a class="btnMore" href="Novel.aspx?id=<%#Eval("BookID") %>" title="Description">Description</a>
                        <br />
                        <br />
                        <h5><%#Eval("BookImageName")%></h5>
                        <a class="btnMore" href="Magazine.aspx?id=<%#Eval("BookID") %>" title="Description">Description</a>
                        br />
                        <br />
                        <h5><%#Eval("BookImageName")%></h5>
                        <a class="btnMore" href="Comic.aspx?id=<%#Eval("BookID") %>" title="Description">Description</a>
                    </div>
                    </div>
                </itemtemplate>
            </HeaderTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
