<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="finaldotnetproject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="active item">
      <img src="images/onthego.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Bula cabs</h3>
      </div>
    </div>
    <div class="item">
      <img src="images/taxi.jpg" alt="...">              
      <div class="carousel-caption">
        <h3>Get Cabs instantly on the go !</h3>
      </div>
    </div>
    <div class="item">
      <img src="images/farm-house.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Easy to use and is accessible any where on earth</h3>
      </div>
    </div>
  </div>
</div>
    <div class="jumbotron">
        <h1>Bula Cabs</h1>
        <h5>Bula Ke toh dekho</h5>
        <br />
        <p class="lead">Whether you’re headed to work, the airport, or out on the town, Bula Cabs connects you with a reliable ride in minutes. One tap and a car comes directly to you. Your driver knows exactly where to go. And you can pay with either cash or card.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Convenience</h2>
            <p>
            Book within seconds and get instant confirmations. Easy online payments or cash on delivery. Booking car rentals will never be a headache again!
            </p>
          </div>
        <div class="col-md-4">
            <h2>Quality</h2>
            <p>
                Our cars are audited for cleanliness, safety and comfort. Our drivers are well trained and reliable. Sit back and enjoy the Bula experience!
            </p>
         </div>
        <div class="col-md-4">
            <h2>Control</h2>
            <p>
                We have clear and transparent pricing listed online. Never haggle with drivers again on payments and be confident and assured of what you are being charged for!
            </p>
         </div>
    </div>
         <script>
             $('.carousel').carousel({
                 interval: 4000 //changes the speed
             })

         </script>

     </div>
    </div>
</asp:Content>
