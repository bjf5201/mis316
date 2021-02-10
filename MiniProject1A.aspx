<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="MiniProject1A.aspx.cs" Inherits="MIS316_MiniProject1A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Value A:
        <asp:TextBox ID="txtValueA" runat="server"></asp:TextBox>
        <br />
        ValueB:
        <asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Them" />
        <asp:Label ID="lblAdd" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract Them" OnClick="btnSubtract_Click" />
        <asp:Label ID="lblSubtract" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply Them" OnClick="btnMultiply_Click" />
        <asp:Label ID="lblMultiply" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnDivide" runat="server" Text="Divide Them" OnClick="btnDivide_Click" />
        <asp:Label ID="lblDivide" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnCompleteAll" runat="server" Text="Complete All Calculations" OnClick="btnCompleteAll_Click" />
    </p>
    <p>
        <asp:Button ID="btnClearAll" runat="server" Text="Clear All Values" OnClick="btnClearAll_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

