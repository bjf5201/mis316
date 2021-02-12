<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="Prep1Bfanninb.aspx.cs" Inherits="MIS316_Prep1Bfanninb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlName" runat="server">
        Your Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        Do you have any siblings?<br />
        <asp:RadioButton ID="rbSiblingsYes" runat="server" GroupName="siblings" Text="Yes" />
        <br />
        <asp:RadioButton ID="rbSiblingsNo" runat="server" Checked="True" GroupName="siblings" Text="No" />
        <br />
        <br />
        <asp:Button ID="btnNameContinue" runat="server" OnClick="btnNameContinue_Click" Text="Continue" />
    </asp:Panel>
    <asp:Panel ID="pnlSiblings" runat="server" Visible="False">
        How many siblings do you have?<asp:TextBox ID="txtNumberOfSiblings" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNumberOfSiblings" runat="server" ControlToValidate="txtNumberOfSiblings" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvNumberOfSiblings" runat="server" ControlToValidate="txtNumberOfSiblings" Display="Dynamic" ErrorMessage="*1-99" ForeColor="Red" MaximumValue="99" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="btnSiblingsContinue" runat="server" OnClick="btnSiblingsContinue_Click" Text="Continue" />
        <br />
    </asp:Panel>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

