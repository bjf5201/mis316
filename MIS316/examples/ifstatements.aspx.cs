using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_ifstatements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        /*
         * condition must eval to T/F
         * these usually use RELATIONAL operators: <,>,==,<=,>=
         * examples:
         *  intValue > 0 would eval to TRUE when intValue contains 7 and FALSE when intValue contains -2
         *  strName == "Kevin" would eval to TRUE when strName contains "Kevin" and FALSE for any other string
         *  */

        // if statements
        /*
        if (txtInput.Text == "red")
        {
            // this code ONLY executes if condition above is TRUE
            lblMessage.Text = "YES! It is a primary color!";
        }
        else if (txtInput.Text == "blue")
        {
            // this code ONLY executes if the first condition is FALSE and the second condition is TRUE
            lblMessage.Text = "YES!! It is a primary color!";
        }
        else if (txtInput.Text == "yellow")
        {
            // this code ONLY executes if the 1st and 2nd code are FALSE
            lblMessage.Text = "YES!! It is a primary color!";
        }
        else
        {
            lblMessage.Text = "NO :( It is NOT a primary color!";
        }
        */

        // sometimes conditions use LOGICAL operators: && for AND || for OR
        /*
        if (txtInput.Text == "red" || txtInput.Text == "blue" || txtInput.Text == "yellow)
        {
            lblMessage.Text = "YES!! It is a primary color!";
        }
        else
        {
            lblMessage.Text = "NO :( It is not a primary color!";
        }
        */

        // if needed, you an NEST if statements inside of one another
        if (txtInput.Text == "red" || txtInput.Text == "blue" || txtInput.Text == "yellow")
        {
            lblMessage.Text = "YES!! It is a primary color!";
        }
        else
        {
            if (txtInput.Text == "purple" || txtInput.Text == "green" || txtInput.Text == "orange")
            {
                lblMessage.Text = "No! It is not a primary color, but it is a SECONDARY color!";
            }
            else
            {
                lblMessage.Text = "NO :( It is not a primary color or a secondary color!";
            }
        }

    }

}