<%@ Page Title="Book a Cab" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="finaldotnetproject.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br /> 
    <h2><%: Title %>.</h2>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Source</label>
      <div class="col-lg-10">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="Ahmedabad"></asp:ListItem>
        <asp:ListItem Value="Surat"></asp:ListItem>
        <asp:ListItem Value="Mumbai"></asp:ListItem>
        <asp:ListItem Value="Banglore"></asp:ListItem>
        <asp:ListItem Value="Guntur"></asp:ListItem>
    </asp:DropDownList>
      </div>
    </div>
     
    <br />

     <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Destination</label>
      <div class="col-lg-10">
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem Value="Ahmedabad"></asp:ListItem>
        <asp:ListItem Value="Surat"></asp:ListItem>
        <asp:ListItem Value="Mumbai"></asp:ListItem>
        <asp:ListItem Value="Banglore"></asp:ListItem>
        <asp:ListItem Value="Guntur"></asp:ListItem>
    </asp:DropDownList>
      </div>
    </div>


    <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Book" CssClass="btn btn-default" />
            </div>
        </div>

</asp:Content>
