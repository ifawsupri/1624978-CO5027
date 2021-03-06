﻿<%@ Page Title="Novel" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Novel.aspx.cs" Inherits="CO5027.novel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">

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
                            <p><s>$29.99</s> $24.99</p>
                            <p>“A gripping read, I enjoyed it very much.” Jill Paton Walsh, Booker Prize shortlisted author of Knowledge of Angels. 
                                How much loyalty does a mother owe to her son? And how does a doctor choose between faith and her science?
                                Christine Garrett is investigating an unusual malaria outbreak on the south coast of England. 
                                As she threads the connections between the dead she discovers links to her son and the charismatic leader he follows. 
                                In finding the source of the spreading plague, she is forced to decide between her old faith and the reason that has brought her to a lightless place. 
                                Frightening, gripping and with unexpected twists, The Pattern Maker is a timely story of the dangers that arise when ideals, technology and human talents are perverted by absolute belief. 
                                It explores the human cost when people are seen as means not ends, asking questions with no easy answers.
                                She has lost her son. Then three unusual deaths mark a trail that only she can follow...</p>
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




    <!---------------------------------------- BOOK 2 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn2">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal2" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Suami Aku Bukan Mat KPOP - Anonymouse</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal2');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn2");

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




    <!---------------------------------------- BOOK 3 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn3">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal3" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal3');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn3");

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




    <!---------------------------------------- BOOK 4 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn4">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal4" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal4');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn4");

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


                   
    <!---------------------------------------- BOOK 5 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn5">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal5" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal5');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn5");

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




    <!---------------------------------------- BOOK 6 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn6">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal6" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal6');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn6");

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




    <!---------------------------------------- BOOK 7 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn7">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal7" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal7');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn7");

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




    <!---------------------------------------- BOOK 8 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn8">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal8" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal8');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn8");

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




     <!---------------------------------------- BOOK 9 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn9">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal9" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal9');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn9");

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




    <!---------------------------------------- BOOK 10 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn10">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal10" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal10');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn10");

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




     <!---------------------------------------- BOOK 11 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn11">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal11" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal11');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn11");

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




    <!---------------------------------------- BOOK 12 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn12">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal12" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal12');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn12");

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



     <h2>Fiction Novel</h2>





    <!---------------------------------------- BOOK 13 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn13">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal13" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal13');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn13");

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




    <!---------------------------------------- BOOK 14 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn14">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal14" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal14');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn14");

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




    <!---------------------------------------- BOOK 15 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn15">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal15" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal15');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn15");

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




    <!---------------------------------------- BOOK 16 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn16">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal16" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal16');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn16");

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


                   
    <!---------------------------------------- BOOK 17 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn17">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal17" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal17');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn17");

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




    <!---------------------------------------- BOOK 18 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn18">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal18" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal18');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn18");

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




    <!---------------------------------------- BOOK 19 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn19">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal19" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal19');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn19");

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




    <!---------------------------------------- BOOK 20 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn20">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal20" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal20');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn20");

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




     <!---------------------------------------- BOOK 21 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn21">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal21" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal21');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn21");

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




    <!---------------------------------------- BOOK 22 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn22">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal22" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal22');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn22");

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




     <!---------------------------------------- BOOK 23 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn23">
                            <img src="images/patternmakernovel.jpg" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal23" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal23');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn23");

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




    <!---------------------------------------- BOOK 24 ---------------------------------------->

                        <!-- Trigger/Open The Modal -->
                        <button id="myModalBtn24">
                             <img src="images/matkpopnovelcover.png" alt="Novel"/>
                        </button>

                        <!-- The Modal -->
                        <div id="myModal24" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Modal Header</h2>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the Modal Body</p>
                            <p>Some other text...</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Modal Footer</h3>
                        </div>
                        </div>

                        </div>

                        <script>
                        // Get the modal
                        var modal = document.getElementById('myModal24');

                        // Get the button that opens the modal
                        var btn = document.getElementById("myModalBtn24");

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


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">

    <button onclick="topFunction()" id="myGoTopBtn" title="Go to top">Top</button>
                <script>
                // When the user scrolls down 20px from the top of the document, show the button
                window.onscroll = function() {scrollFunction()};
                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("myGoTopBtn").style.display = "block";
                    } else {
                        document.getElementById("myGoTopBtn").style.display = "none";
                    }
                }
                // When the user clicks on the button, scroll to the top of the document
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
                </script>

</asp:Content>
