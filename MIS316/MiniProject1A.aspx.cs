using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MiniProject1A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables for input and result
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decSum = 0m;


            // gather input from user and store as variables
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            // perform calculation (add variables together)
            decSum = decValueA + decValueB;

            // output results to user
            lblAdd.Text = decSum.ToString();
        }
        catch (Exception)
        {
            lblAdd.Text = "Please enter two numbers.";
        }
        
    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decSubtract = 0m;

            // gather input from user and store into variables
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            // perform calculation
            decSubtract = decValueA - decValueB;

            // return result
            lblSubtract.Text = decSubtract.ToString();
        }
        catch (Exception)
        {
            lblSubtract.Text = "Please enter two numbers.";
        }
    }

    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decProduct = 0m;

            // gather input from the user and assign them to the correct variable
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            // perform calculations
            decProduct = decValueA * decValueB;

            // return result
            lblMultiply.Text = decProduct.ToString();
        }
        catch (Exception)
        {
            lblMultiply.Text = "Please enter two numbers.";
        }
        
    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        try
        {
            // Declare variables
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decQuotient = 0m;

            // Gather input from the user & store to appropriate variable
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);
            try // Create a nested try/catch block for division by zero
            {
                //Perform the calculation
                decQuotient = decValueA / decValueB;

                // Print the result to user
                lblDivide.Text = decQuotient.ToString();
            }
            catch (Exception)
            {
                lblDivide.Text = "A number cannot be divided by zero.";
            }

        } // Catch error for if user doesn't enter a number/decimal value
        catch (Exception)
        {
            lblDivide.Text = "Please enter two numbers.";
        }
        


    }

    protected void btnCompleteAll_Click(object sender, EventArgs e)
    {
        try
        {
            // Declare variables
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decSum = 0m;
            decimal decSubtract = 0m;
            decimal decMultiply = 0m;
            decimal decQuotient = 0m;

            // Gather input from user and store to appropriate variables
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);
            try // Create a nested try/catch block for division by zero error
            {
                // Perform calculations
                decSum = decValueA + decValueB;
                decSubtract = decValueA - decValueB;
                decMultiply = decValueA * decValueB;
                decQuotient = decValueA / decValueB;

                // Display output to user
                lblAdd.Text = decSum.ToString();
                lblSubtract.Text = decSubtract.ToString();
                lblMultiply.Text = decMultiply.ToString();
                lblDivide.Text = decQuotient.ToString();
            }
            catch (Exception) // Catch block to catch the division by zero error
            {
                lblAdd.Text = decSum.ToString();
                lblSubtract.Text = decSubtract.ToString();
                lblMultiply.Text = decMultiply.ToString();
                lblDivide.Text = "A number cannot be divided by zero. Please ensure the second value you enter is not zero.";
            }
        }
        catch (Exception) // Catch block to catch error when user enters a non-numerical value
        {
            lblDivide.Text = "Please enter two numerical values.";
            lblAdd.Text = "Please enter two numerical values.";
            lblMultiply.Text = "Please enter two numerical values.";
            lblSubtract.Text = "Please enter two numerical values.";
            
        }
        
    }

    // Clear all contents
    protected void btnClearAll_Click(object sender, EventArgs e)
    {
        // Clear input
        txtValueA.Text = "";
        txtValueB.Text = "";

        // Clear output
        lblAdd.Text = "";
        lblSubtract.Text = "";
        lblMultiply.Text = "";
        lblDivide.Text = "";
    }
}