<%@ Page Title="" Language="VB" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="false" CodeFile="SingleSelectionList.aspx.vb" Inherits="MIS316_examples_SingleSelectionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="ddlStates" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
        <asp:ListItem Value="GA">Georgia</asp:ListItem>
        <asp:ListItem Value="FL">Florida</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnSubmit" runat="server" Text="Button" />
    <br />
    <table>
        <tr>
            <td class="auto-style1">.SelectedValue</td>
            <td class="auto-style1">
                <asp:Label ID="lblSelectedValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>.SelectedIndex</td>
            <td>
                <asp:Label ID="lblSelectedIndex" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>.SelectedItem</td>
            <td>
                <asp:Label ID="lblSelectedItem" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>.SelectedItem.Text</td>
            <td>
                <asp:Label ID="lblSelectedItemTxt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>.SelectedItem.Value</td>
            <td>
                <asp:Label ID="lblSelectedItemValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>.Items.Count</td>
            <td>
                <asp:Label ID="lblItemsCount" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

