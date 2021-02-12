using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1Bfanninb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnNameContinue_Click(object sender, EventArgs e)
    {
        // if the user selected no siblings, hide the name panel and
        // output a message about being an only child
        if (rbSiblingsNo.Checked == true)
        {
            pnlName.Visible = false;
            lblMessage.Text = txtName.Text + " is an only child.";
        }
        else if(rbSiblingsYes.Checked == true)
        {
            // else, hide the name panel and show the siblings panel
            pnlName.Visible = false;
            pnlSiblings.Visible = true;
        }
    }

    protected void btnSiblingsContinue_Click(object sender, EventArgs e)
    {
        // output message that user has x number of siblings based on 
        // what they input in txtNumberOfSiblings
        if (txtNumberOfSiblings.Text == "1")
        {
            // Grammatically correct output for if the user has only one sibling
            pnlSiblings.Visible = false;
            lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " sibling.";
        }
        else
        {
            // Grammatically correct output for if the user has more than one sibling
            pnlSiblings.Visible = false;
            lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " siblings.";
        }
        
    }
}