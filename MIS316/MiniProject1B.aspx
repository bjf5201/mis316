<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagebjf5201.master" AutoEventWireup="true" CodeFile="MiniProject1B.aspx.cs" Inherits="MIS316_MiniProject1B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            float: left;
            border-color: #FFFFFF;
        }
        .auto-style5 {
            width: 271px;
        }
        .auto-style6 {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><em>Bagel Shop</em> [Point of Sales System]</h1>
    <asp:Panel ID="pnlOne" runat="server">
        <table align="left" class="auto-style4">
            <tr>
                <td class="auto-style5">Customer Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName0" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">How Many Bagels?:</td>
                <td>
                    <asp:TextBox ID="txtBagelNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvBagelNumber1" runat="server" ControlToValidate="txtBagelNumber" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvBagelRange1" runat="server" ControlToValidate="txtBagelNumber" Display="Dynamic" ErrorMessage="*Please enter a number between 1-25" ForeColor="Red" MaximumValue="25" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RadioButton ID="rbDineIn" runat="server" GroupName="DeliveryMethod" Text="Dine In (7% tax)" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RadioButton ID="rbCarryOut" runat="server" Checked="True" GroupName="DeliveryMethod" Text="Carry Out" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click" Text="Start Order" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </asp:Panel>
    <asp:Panel ID="pnlTwo" runat="server">
        <table align="left" cellspacing="1" class="auto-style4">
            <tr>
                <td class="auto-style6"><strong>Order for:</strong></td>
                <td>
                    <asp:Label ID="lblName1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Order Type:</strong></td>
                <td>
                    <asp:Label ID="lblDeliveryMethod1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Number of Bagels:</strong></td>
                <td>
                    <asp:Label ID="lblBagelNumber1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Base Price:</strong></td>
                <td>
                    <asp:Label ID="lblBasePrice1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Type of Bagel:</strong></td>
                <td>
                    <asp:RadioButton ID="rbPlainBagel" runat="server" Checked="True" GroupName="BagelType" Text="Plain" />
                    &nbsp;<asp:RadioButton ID="rbWheatBagel" runat="server" GroupName="BagelType" Text="Wheat ($1.00)" />
                    &nbsp;<asp:RadioButton ID="rbEverythingBagel" runat="server" GroupName="BagelType" Text="Everything ($1.50)" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Additional Options:</strong>&nbsp;</td>
                <td>
                    <asp:CheckBox ID="cbToasted" runat="server" Text="Toasted ($0.50)" />
                    &nbsp;<asp:CheckBox ID="cbCreamCheese" runat="server" Text="Cream Cheese ($1.00)" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Payment Type:</strong></td>
                <td>
                    <asp:RadioButton ID="rbCash" runat="server" Checked="True" GroupName="PaymentMethod" Text="Cash" />
                    &nbsp;<asp:RadioButton ID="rbCredit" runat="server" GroupName="PaymentMethod" Text="Credit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Charge 7% Tax?</strong></td>
                <td>
                    <asp:Label ID="lblYesNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnFinish" runat="server" OnClick="btnFinish_Click" Text="Finish Order" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        &nbsp;<br />
        &nbsp;
        <br />
        &nbsp;</asp:Panel>
    <asp:Panel ID="pnlThree" runat="server">
        <asp:Label ID="lblDeliveryMethod2" runat="server"></asp:Label>
        order for&nbsp;<asp:Label ID="lblName2" runat="server"></asp:Label>
        &nbsp;<br />
        <br />
        <asp:Label ID="lblBagelNumber2" runat="server"></asp:Label>
        <asp:Label ID="lblBagelType" runat="server"></asp:Label>
        <asp:Label ID="lblPlural" runat="server"></asp:Label>
        <br />
        <br />
        Paying by
        <asp:Label ID="lblPaymentMethod" runat="server"></asp:Label>
        <br />
        <br />
        Subtotal:
        <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
        &nbsp;(<asp:Label ID="lblBasePrice2" runat="server"></asp:Label>
        &nbsp;each) Tax:
        <asp:Label ID="lblTax" runat="server"></asp:Label>
        <br />
        Total due: <strong>
        <asp:Label ID="lblTotal" runat="server"></asp:Label>
        </strong>
        <br />
        <br />
        <asp:Button ID="btnNextCustomer" runat="server" Text="Next Customer" OnClick="btnNextCustomer_Click" />
    </asp:Panel>

</asp:Content>

