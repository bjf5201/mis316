using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep2AFanninb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rblColors_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Make the remove button visible
        btnRemoveSelected.Visible = true;
        
    }

    protected void btnRemoveSelected_Click(object sender, EventArgs e)
    {
        // remove the color that the user has selected
        rblColors.Items.RemoveAt(rblColors.SelectedIndex);

        // hide so that a selection must be made again
        btnRemoveSelected.Visible = false;

        // when a color is removed, update the lblMessage output
        // start with counter variables
        int intPrimaryCount = 0;
        int intSecondaryCount = 0;
        int intOtherCount = 0;
        // Iterate through the list items to count each color
        foreach (ListItem liColor in rblColors.Items)
        {
            // red, blue, and yellow = primary colors
            if (liColor.Text.ToLower() == "red" || liColor.Text.ToLower() == "blue" || liColor.Text.ToLower() == "yellow")
            {
                // this is a primary count, increase the counter by 1
                intPrimaryCount++;
            }
            // green, orange, and purple = secondary colors
            else if (liColor.Text.ToLower() == "green" || liColor.Text.ToLower() == "orange" || liColor.Text.ToLower() == "purple")
            {
                // this is the secondary count, increase the counter by 1
                intSecondaryCount++;
            }
            // everything else = other color, increase other color counter by 1
            else
            {
                intOtherCount++;
            }
        }
        // build updated output message and show the user
        lblMessage.Text = "The current list has:<br />";
        lblMessage.Text += intPrimaryCount.ToString() + " primary colors<br />";
        lblMessage.Text += intSecondaryCount.ToString() + " secondary colors<br />";
        lblMessage.Text += intOtherCount.ToString() + " other colors";
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // store the color that was entered in a variable
        string strNewColor = txtNewColor.Text;

        // loop through all colors to see if the new color already exists
        bool blnColorAlreadyExists = false;

        foreach (ListItem liColor in rblColors.Items)
        {
            // if the current color matches the new color, set the flag to true
            if (liColor.Text == strNewColor)
            {
                blnColorAlreadyExists = true;
            }
        }

        // only add the new color if it doesn't already exist
        if (blnColorAlreadyExists == true)
        {
            lblError.Text = "This color already exists!";
        }
        else
        {
            // the new color is not in the list, clear the error message
            lblError.Text = "";

            // Add the color to the rblColors list
            rblColors.Items.Add(strNewColor);
            txtNewColor.Text = ""; // clear out so the user can't try to add again
        }
        // loop through all colors to determine how many primary, secondary, and other colors there are

        // create counter variables
        int intPrimaryCount = 0;
        int intSecondaryCount = 0;
        int intOtherCount = 0;

        foreach (ListItem liColor in rblColors.Items)
        {
            // red, blue, and yellow = primary colors
            if (liColor.Text.ToLower() == "red" || liColor.Text.ToLower() == "blue" || liColor.Text.ToLower() == "yellow")
            {
                // this is a primary count, increase the counter by 1
                intPrimaryCount++;
            }
            // green, orange, and purple = secondary colors
            else if (liColor.Text.ToLower() == "green" || liColor.Text.ToLower() == "orange" || liColor.Text.ToLower() == "purple")
            {
                // this is the secondary count, increase the counter by 1
                intSecondaryCount++;
            }
            // everything else = other color, increase other color counter by 1
            else
            {
                intOtherCount++;
            }
        }
        // build output message and show the user
        lblMessage.Text = "The current list has:<br />";
        lblMessage.Text += intPrimaryCount.ToString() + " primary colors<br />";
        lblMessage.Text += intSecondaryCount.ToString() + " secondary colors<br />";
        lblMessage.Text += intOtherCount.ToString() + " other colors";
    }
}