using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        // add all of the numbers from the list box

        // create variables, one to hold the current number and one to hold the running total
        int intCurrent = 0;
        int intRunningTotal = 0;

        // loop through each ListItem and add it to the running total
        foreach (ListItem liNumber in lstNumbers.Items)
        {
            // read Text of the ListItem and store it as our variable
            intCurrent = Convert.ToInt32(liNumber.Text);

            // add to the running total
            intRunningTotal += intCurrent; // this is the same as intRunningTotal = intRunningTotal + intCurrent;
        }
        //output to the user
        lblRunningTotal.Text = intRunningTotal.ToString();
    }

    protected void btnHighest_Click(object sender, EventArgs e)
    {
        // find the highest value from the list of numbers
        // this will use what's known as a TRACKER VARIABLE

        // create variables to hold the current number and highest number
        int intCurrent = 0;
        int intHighest = 0;

        // loop through each ListItem and determine if its higher than the known highest value
        foreach (ListItem liNumber in lstNumbers.Items)
        {
            // convert list item to a string and perform a for loop to iterate over the list
            intCurrent = Convert.ToInt32(liNumber.Text);

            // if intCurrent is greater than intHighest, make intCurrent equal to intHighest
            if (intCurrent > intHighest)
            {
                intHighest = intCurrent;
            }
        }
        // at this point in the code, intHighest should have the highest number on the list

        // display the highest number to the user
        lblHighest.Text = intHighest.ToString();
    }



    protected void btnNumberExist_Click(object sender, EventArgs e)
    {
        // determine if a value exists in the list box
        // this will use whats known as a FLAG

        //create the variables to track the current number, the number we're looking for, a bollean flag to track if we've found it
        int intCurrent = 0;
        int intWhichNumber = Convert.ToInt32(txtWhichNumber.Text);
        bool blnFoundOrNot = false;  // default to the assumption that it was NOT found

        // loop through each ListItem and determine if the number was found
        foreach (ListItem liNumber in lstNumbers.Items)
        {
            //read Test of ListItems and store it as our variable
            intCurrent = Convert.ToInt32(liNumber.Text);

            // check to see if the current number matches what we are looking for
            if (intCurrent == intWhichNumber)
            {
                // set the flat to true
                blnFoundOrNot = true;
            }
        }
        // At this point in the code, blnFoundOrNot should tell us if number was found

        // Output to user
        lblFoundOrNot.Text = blnFoundOrNot.ToString();
    }

    protected void btnOddEven_Click(object sender, EventArgs e)
    {
        // determine how many odd and even numbers are in the list
        // this will use what's known as COUNTERS and MODULAR MATH

        // create variables to track the current number, the number of odd numbers, and the number of even numbers
        int intCurrent = 0;
        int intEven = 0; // these two variables are COUNTERS, they start at 0 and will increase by 1 if something is found
        int intOdd = 0;

        // loop through each ListItem and determine if the number is odd or even
        foreach (ListItem liNumber in lstNumbers.Items)
        {
            // read Text of the ListItem and store it as our variable
            intCurrent = Convert.ToInt32(liNumber.Text);

            // increment the counters if odd or even
            if (intCurrent % 2 == 0)  // EVEN means divisible by 2
            {
                intEven++; // increment the integer by 1 = the same as intEven = intEven + 1
            }
            else
            {
                // this means it's odd
                intOdd++;
            }
            // output to user
            lblOdd.Text = intOdd.ToString();
            lblEven.Text = intEven.ToString();
        }
    }
}