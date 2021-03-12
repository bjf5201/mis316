<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="foreachloops.aspx.cs" Inherits="MIS316_examples_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ListBox ID="lstNumbers" runat="server" BackColor="#99FFCC" ForeColor="#666666" Height="178px" Rows="8" Width="100px">
            <asp:ListItem>125</asp:ListItem>
            <asp:ListItem>237</asp:ListItem>
            <asp:ListItem>900</asp:ListItem>
            <asp:ListItem>42</asp:ListItem>
            <asp:ListItem>71</asp:ListItem>
            <asp:ListItem>680</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
        </asp:ListBox>
        <br />
    </p>
    <table>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnAdd" runat="server" BackColor="#00CC99" OnClick="btnAdd_Click" Text="Add Them All" ValidationGroup="add" />
            </td>
            <td class="auto-style1">Sum:<asp:Label ID="lblRunningTotal" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnHighest" runat="server" BackColor="#00CC99" Text="Find Highest" OnClick="btnHighest_Click" ValidationGroup="find" />
            </td>
            <td>Highest:<asp:Label ID="lblHighest" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnNumberExist" runat="server" BackColor="#00CC99" Text="Does Number Exist?" ValidationGroup="which" OnClick="btnNumberExist_Click" />
            </td>
            <td>Which Number?
                <asp:TextBox ID="txtWhichNumber" runat="server" ValidationGroup="which"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvWhichNumber" runat="server" ControlToValidate="txtWhichNumber" Display="Dynamic" ErrorMessage="*required 1-1000" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                Was it found? <asp:Label ID="lblFoundOrNot" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnOddEven" runat="server" BackColor="#00CC99" Text="How Many Odd/Even?" ValidationGroup="oddeven" OnClick="btnOddEven_Click" />
            </td>
            <td>Odd:
                <asp:Label ID="lblOdd" runat="server"></asp:Label>
                <br />
                Even:
                <asp:Label ID="lblEven" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

