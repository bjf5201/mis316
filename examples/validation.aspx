<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="validation.aspx.cs" Inherits="MIS316_examples_validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rvfInput" runat="server" ControlToValidate="txtInput" Display="Dynamic" ErrorMessage="Please provide input" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvInput" runat="server" ControlToValidate="txtInput" Display="Dynamic" ErrorMessage="Please input a positive whole number" ForeColor="Red" MaximumValue="999999" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    </p>
    <asp:ValidationSummary ID="vsInput" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" />
    <p>
        <br />
        <asp:Button ID="btnValidate" runat="server" Text="Validate" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

