<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="HTMLForms.aspx.cs" Inherits="MIS316_examples_HTMLForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Example of Output</p>
    <p>
        First Name:
        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
    </p>
    <p>
        Last Name:<asp:Label ID="lblLastName" runat="server"></asp:Label>
    </p>
    <p>
        Address:
        <asp:Label ID="lblStreetAddress" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblCity" runat="server"></asp:Label>
        ,<asp:Label ID="lblState" runat="server"></asp:Label>
        ,<asp:Label ID="lblZip" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

