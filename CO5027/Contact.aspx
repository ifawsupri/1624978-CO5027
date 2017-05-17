<%@ Page Title="Contact" Language="C#" MasterPageFile="master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="ContactPage">
    
             <h2>We Would Love to Hear From You</h2>
    
             <div class="newitemwrapper-contactform">
                    <p style="text-align: center">
                        <asp:label id="lblName" runat="server" text="Name:" style="font-weight: 700"></asp:label>
                        <asp:TextBox ID="txtboxName" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        <span class="required">*</span>
                            
                        <asp:Literal ID="litName" runat="server"></asp:Literal>
                            
                    </p>
                    <p style="text-align: center">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:" style="font-weight: 700"></asp:Label>
                        <asp:TextBox ID="txtboxEmail" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        <span class="required">*</span>
                            
                        <asp:Literal ID="litEmail" runat="server"></asp:Literal>
                            
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
                        <span class="required">*</span>
                            
                        <asp:Literal ID="litMessage" runat="server"></asp:Literal>
                            
                    </p>
                        <p style="text-align: center">
                        <asp:Button ID="btnSubmit" runat="server" style="font-weight: 700; text-align: center" Text="Submit" Width="100px" OnClick="btnSubmit_Click" />

                 <asp:Literal ID="litResult" runat="server"></asp:Literal>

                    </p>

             </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

    <div class="newitemwrapper-contactmap">
            <h3>Where We Based at:</h3>
            <div id="map"></div>
            <script>
              function initMap() {
                var uluru = { lat: 4.88571, lng: 114.93150 };
                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 17,
                  center: uluru
                }); 
                var marker = new google.maps.Marker({
                  position: uluru,
                  map: map
                });
              }
            </script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-_4gLPJX0zw5rSuS523SPU5H1P-tt3a4&callback=initMap"></script>

           <div id="map-static">
            <img src="images/GoogleMapsStatic.png" alt="Where We Based at"/>
            </div>
    </div>


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">


</asp:Content>