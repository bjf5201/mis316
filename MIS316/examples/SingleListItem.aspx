<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="SingleListItem.aspx.cs" Inherits="MIS316_examples_SingleListItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
        <asp:ListItem Value="GA">Georgia</asp:ListItem>
        <asp:ListItem Value="FL">Florida</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvStates" runat="server" ControlToValidate="ddlStates" Display="Dynamic" ErrorMessage="*required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <table>
        <tr>
            <td>.SelectedValue</td>
            <td>
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
                <asp:Label ID="lblSelectedItemText" runat="server"></asp:Label>
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
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnClearAll" runat="server" ForeColor="Black" OnClick="btnClearAll_Click" Text="Clear All Items" />
    <br />
    <br />
    <asp:Button ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" Text="Add New Item" />
&nbsp;Text:
    <asp:TextBox ID="txtNewText" runat="server"></asp:TextBox>
&nbsp; Value:
    <asp:TextBox ID="txtNewValue" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnRemove" runat="server" Text="Remove Selected Item" OnClick="btnRemove_Click" />
    <br />
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Monkey</asp:ListItem>
        <asp:ListItem>Cat</asp:ListItem>
        <asp:ListItem>Dog</asp:ListItem>
        <asp:ListItem>Horse</asp:ListItem>
    </asp:RadioButtonList>
    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
</asp:Content>

