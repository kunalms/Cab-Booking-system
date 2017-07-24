<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="finaldotnetproject.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div>
        <asp:Menu ID="Menu1" runat="server" CssClass="navbar navbar-inverse"  StaticMenuItemStyle-HorizontalPadding="20" StaticMenuStyle-VerticalPadding="10" StaticMenuStyle-CssClass="nav navbar-nav" StaticSelectedStyle-CssClass="active" DynamicMenuStyle-CssClass="dropdown-menu" Orientation="Horizontal">

<DynamicMenuStyle CssClass="dropdown-menu"></DynamicMenuStyle>

            <Items>
                <asp:MenuItem Text="Book a Cab" ToolTip="Book a cab and reach your destination in seconds" NavigateUrl="/book" Value="book"></asp:MenuItem>
                <asp:MenuItem Text="Balance" Value="Balance" NavigateUrl="~/Balance.aspx" ></asp:MenuItem>
                <asp:MenuItem Text="Change Password" Value="Change Password" NavigateUrl="/Account/ManagePassword" ></asp:MenuItem>
                <asp:MenuItem Text="History" Value="History">
                    <asp:MenuItem Text="Confirmed" Value="Confirmed" NavigateUrl="~/confirm.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Canceled" Value="Canceled" NavigateUrl="/Account/ManagePassword"></asp:MenuItem>
                </asp:MenuItem>
            </Items>

<StaticMenuItemStyle HorizontalPadding="20px"></StaticMenuItemStyle>

<StaticMenuStyle VerticalPadding="10px" CssClass="nav navbar-nav"></StaticMenuStyle>

<StaticSelectedStyle CssClass="active"></StaticSelectedStyle>
        </asp:Menu>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />

                    </dd>
                   
                    
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
