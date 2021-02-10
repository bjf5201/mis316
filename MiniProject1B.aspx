<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="MiniProject1B.aspx.cs" Inherits="MIS316_MiniProject1B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><em>Bagel Shop</em> [Point of Sales System]</h1>
    <p>Customer Name:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p>How Many Bagels?: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvBagelNumber" runat="server" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvBagelRange" runat="server" Display="Dynamic" ErrorMessage="*Please enter a number between 1-25" ForeColor="Red" SetFocusOnError="True"></asp:RangeValidator>
    </p>
    <p>
        <asp:RadioButton ID="rbDineIn" runat="server" GroupName="DeliveryMethod" Text="Dine In (7% tax)" />
    </p>
    <p>
        <asp:RadioButton ID="rbCarryOut" runat="server" Checked="True" GroupName="DeliveryMethod" Text="Carry Out" />
    </p>
    <p>
        <asp:Button ID="btnOrder" runat="server" Text="Start Order" />
    </p>
    <p>
    </p>
</asp:Content>

