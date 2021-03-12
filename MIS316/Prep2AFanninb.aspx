<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="Prep2AFanninb.aspx.cs" Inherits="MIS316_Prep2AFanninb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Colors</h1>
    <table>
        <tr>
            <td style="vertical-align: top">
                <asp:RadioButtonList ID="rblColors" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblColors_SelectedIndexChanged" BackColor="#CCCCCC" RepeatColumns="2" RepeatDirection="Horizontal">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Purple</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btnRemoveSelected" runat="server" CausesValidation="False" Text="Remove Selected" Visible="False" OnClick="btnRemoveSelected_Click" />
            </td>
            <td class="auto-style1" style="vertical-align: top">Add new color:<asp:TextBox ID="txtNewColor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewColor" runat="server" ControlToValidate="txtNewColor" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
</table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

