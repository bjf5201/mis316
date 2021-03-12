using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_SingleListItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // go through the various properties for DropDownLists and place them in the table
        lblSelectedValue.Text = ddlStates.SelectedValue;
        lblSelectedIndex.Text = ddlStates.SelectedIndex.ToString();
        lblSelectedItem.Text = ddlStates.SelectedItem.ToString(); // should NEVER use this one
        lblSelectedItemText.Text = ddlStates.SelectedItem.Text;
        lblSelectedItemValue.Text = ddlStates.SelectedItem.Value;
        lblItemsCount.Text = ddlStates.Items.Count.ToString();

        // build a sentence using the selectec item
        lblMessage.Text = "You live in " + ddlStates.SelectedItem.Text + "(" + ddlStates.SelectedValue + ").";
        if (ddlStates.SelectedValue == "NC")
        {
            lblMessage.Text += " I do too!";
        }
    }

    protected void btnClearAll_Click(object sender, EventArgs e)
    {
        ddlStates.Items.Clear();
    }



    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        // OPTION 1 - just a string, Text and Value have the same thing
        //ddlStates.Items.Add(txtNewText.Text)

        // OPTION 2 - using  a new ListItem object, text and value can have different things
        ListItem liState = new ListItem(txtNewText.Text, txtNewValue.Text);
        ddlStates.Items.Add(liState);
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        // OPTION 1 - preferred way; remove by index using RemoveAt
        //ddlStates.Items.RemoveAt(ddlStates.SelectedIndex);

        // OPTION 2 - 
        ddlStates.Items.Remove(ddlStates.SelectedItem);
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}   