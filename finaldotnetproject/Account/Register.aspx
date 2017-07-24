<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="finaldotnetproject.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>

        <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="uname" CssClass="col-md-2 control-label">Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="uname" CssClass="form-control" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="uname" CssClass="text-danger" ErrorMessage="Please Enter a username." />
                    <asp:Label runat="server" AssociatedControlID="uname" CssClass="text-danger" ID="Label1"></asp:Label>
                </div>
        </div>


        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="contact" CssClass="col-md-2 control-label">Contact</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="contact" CssClass="form-control" TextMode="Number" Width="275px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="contact"
                    CssClass="text-danger" ErrorMessage="Contact fiield is required." />
                <asp:RangeValidator ControlToValidate="contact" 
                    ErrorMessage="Enter a valid number" CssClass="text-danger" 
                    MaximumValue="9999999999" MinimumValue="5555555555" runat="server" />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="gender" CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-10">
                <asp:RadioButtonList ID="gender" runat="server" >
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="gender"
                    CssClass="text-danger" ErrorMessage="Dont feel shy to share your gender" />
            </div>
        </div>



        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>


    </div>
</asp:Content>
