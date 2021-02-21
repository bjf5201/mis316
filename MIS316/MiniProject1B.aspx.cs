using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MiniProject1B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Make pnlTwo and pnlThree invisible on PageLoad
        pnlTwo.Visible = false;
        pnlThree.Visible = false;
    }

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        //declare variables
        double basePrice = 2.00;


        // Make pnlOne invisible when user clicks "Order" button and make
        // pnlTwo visible
        pnlOne.Visible = false;
        pnlTwo.Visible = true;

        // create if/else statement for if user chooses dine in/carry out
        // if the user chooses one or the other it affects:
        // 1. lblDeliveryMethod1.Text
        // 2. lblYesNo.text
        // 3. whether the tax will be added to the subtotal for the total
        // We will only perform the first two operations here, the third action will
        // happen with the second button.
        if (rbCarryOut.Checked == true)
        {
            lblDeliveryMethod1.Text = "Carry Out";
            lblYesNo.Text = "No";

        }
        else if (rbDineIn.Checked == true)
        {
            lblDeliveryMethod1.Text = "Dine In";
            lblYesNo.Text = "Yes";
        }

        // Create the rest of the output for pnlTwo
        lblName1.Text = txtName.Text;
        lblBagelNumber1.Text = txtBagelNumber.Text;
        lblBasePrice1.Text = basePrice.ToString("C");
    }


    protected void btnFinish_Click(object sender, EventArgs e)
    {
        // declare variables
        decimal basePrice = 2.00m;
        decimal subTotal = 0m;
        decimal taxes = 0m;
        decimal total = 0m;

        // hide pnlTwo and show pnlThree
        pnlTwo.Visible = false;
        pnlThree.Visible = true;

        // Take base price and add on plain/wheat/everything option prices
        // Also add lblBagelType text
        if (rbWheatBagel.Checked == true)
        {
            basePrice = basePrice + 1.00m;
            lblBagelType.Text = "Wheat";
        }
        else if (rbEverythingBagel.Checked == true)
        {
            basePrice = basePrice + 1.50m;
            lblBagelType.Text = "Everything";
        }
        else if (rbPlainBagel.Checked == true)
        {
            lblBagelType.Text = "Plain";
        }
        // Take base price and add on $1 if Cream Cheese is checked
        if (cbCreamCheese.Checked == true)
        {
            basePrice = basePrice + 1.00m;
        }
        
        // Take base price and add on $0.50 if toasted is checked
        if (cbToasted.Checked == true)
        {
            basePrice = basePrice + 0.50m;
        }


        // Multiply by number of bagels
        subTotal = basePrice * Convert.ToDecimal(txtBagelNumber.Text);

        // Multiply subtotal by tax percentage
        taxes = subTotal * 0.07m;

        // If Dine In add taxes, if not the subTotal is the Total
        if (rbDineIn.Checked == true)
        {
            lblDeliveryMethod2.Text = "Dine In";
            total = subTotal + taxes;

        }
        else if (rbCarryOut.Checked == true)
        {
            lblDeliveryMethod2.Text = "Carry Out";
            total = subTotal;
        }

        
        // If rbCash is selected, lblPaymentMethod says "Cash", otherwise it says "Credit"
        if (rbCash.Checked == true)
        {
            lblPaymentMethod.Text = "Cash";
        }
        else if (rbCredit.Checked == true)
        {
            lblPaymentMethod.Text = "Credit";
        }

        // Create output that is grammatically correct based on the number of bagels the user inputs
        // if user buys only 1 bagel, output "bagel" for lblPlural
        if (txtBagelNumber.Text == "1")
        {
            lblPlural.Text = "bagel";
        }
        // for any other number that is input, make the output plural.
        else
        {
            lblPlural.Text = "bagels";
        }

        // Create rest of pnlThree Output
        // Used lblName2 and lblBagelNumber2 to for output for pnlThree to be consistent,
        // using the same inputs that lblName1 and lblBagelNumber1 used in pnlTwo
        lblName2.Text = txtName.Text;
        lblBagelNumber2.Text = txtBagelNumber.Text;
        // I used the .ToString("C") method to create a clean $x.xx output for each dollar amount
        lblSubtotal.Text = subTotal.ToString("C");
        lblTax.Text = taxes.ToString("C");
        lblBasePrice2.Text = basePrice.ToString("C");
        lblTotal.Text = total.ToString("C");
    }
    
    // ======== "Next Customer" button actions ========
    protected void btnNextCustomer_Click(object sender, EventArgs e)
    {
        // Hide pnlThree and show pnlOne again
        pnlOne.Visible = true;
        pnlThree.Visible = false;
        // Clear pnlOne inputs 
        txtName.Text = "";
        txtBagelNumber.Text = "";

        //Reset the cbCreamCheese checkbox
        cbCreamCheese.Checked = false;

        // Reset the cbToasted checkbox
        cbToasted.Checked = false;

        // Reset default payment type to cash
        rbCash.Checked = true;

        // Reset the rbCarryOut radio button to be checked as true
        // as the standard default
        rbCarryOut.Checked = true;
    }
}