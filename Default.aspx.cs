using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void calculateButton_Click(object sender, EventArgs e)
    {
      
        decimal weeklyRentalPrice = 0;
        decimal totalRentalAmount = 0;

        // convert the text entered into each textbox into a numerical value
        int numVideosRented = int.Parse(nbVideoTextBox.Text);
        int numDaysRented = int.Parse(nbDaysTextBox.Text);

        //a switch statement to determine which options was chosen 
        switch (videoTypeDropDownList.Text)
        {
            case "Animation":
                Image1.ImageUrl = "Animation.jpg";
                weeklyRentalPrice = 4;
                break;

            case "Action":
                Image1.ImageUrl = "Action.jpg";
                weeklyRentalPrice = 6;
                break;

            default:
                Image1.ImageUrl = "TVSeries.jpg";
                weeklyRentalPrice = 10;
                break;
        }
        totalRentalAmount = weeklyRentalPrice * numVideosRented;

        //Checking if days rented is over 7days
        if (numDaysRented > 7)
        {
             //updates the total payment for rental
             totalRentalAmount = ((numDaysRented - 7) * numVideosRented * (decimal)0.5) + totalRentalAmount;
             totalRentalAmount = Math.Round(totalRentalAmount, 2);
        }
        amountPayTextBox.Text = totalRentalAmount.ToString();

        //Checking of the credit card is been ticked
        if (creditCard.Checked == true)
        {
            decimal xtraPay = totalRentalAmount * (decimal)0.05;
            totalRentalAmount = xtraPay + totalRentalAmount;
            totalRentalAmount = Math.Round(totalRentalAmount, 2);
        }
        amountPayTextBox.Text = totalRentalAmount.ToString();

        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.movies.com");
    }
    protected void videoTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}