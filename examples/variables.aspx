<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="variables.aspx.cs" Inherits="MIS316_examples_variables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Input a number:
        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnCalculate" runat="server" CausesValidation="False" OnClick="btnCalculate_Click" Text="Calculate" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
    </p>
</asp:Content>

