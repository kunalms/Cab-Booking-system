<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="finaldotnetproject.Balance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


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
<div class="form-horizontal">
 <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="curbal" CssClass="col-md-2 control-label">Current Balance</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="curbal" CssClass="form-control" TextMode="SingleLine" Enabled="false" />
            </div>
        </div>

 <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="addbalance" CssClass="col-md-2 control-label">Add Money</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="addbalance" CssClass="form-control" TextMode="Number" />
            </div>
        </div>
    

     <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
            <asp:Button ID="RECHARGE" runat="server" Text="Recharge" OnClick="RECHARGE_Click"></asp:Button>
            </div>
     </div>
</div>
</asp:Content>
