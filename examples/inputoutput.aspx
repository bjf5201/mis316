<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="inputoutput.aspx.cs" Inherits="MIS316_examples_inputoutput" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:TextBox ID="txtInputA" runat="server"></asp:TextBox>
        <asp:Label ID="lblOutputA" runat="server"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtInputB" runat="server"></asp:TextBox>
        <asp:Label ID="lblOutputB" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Btn1" runat="server" Text="Process" OnClick="Btn1_Click" />
    </p>

</asp:Content>

