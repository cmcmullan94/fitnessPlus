using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fitnessPlus
{
    public partial class MacroCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDoCalc_Click(object sender, EventArgs e)
        {
            
            var bw = int.Parse(txtWeightInput.Text);                                                //taking user input, declaring as bodyweight
            int numA = 14;                                                                          //set value for first instance of maintenance calc
            int numB = 16;                                                                          //set value for second instance of maintenance calc
            double fatA = 0.3;                                                                      //set value for first instance of fat calc
            double fatB = 0.4;                                                                      //set value for second instance of fat calc
            double maintResA, maintResB, maintResC, proteinCal, carbsCal, fatCal, totalFP;          //variables in kCals 
            double maintenance, proteinGrams, carbsGrams, fatGrams, fatResA, fatResB, fatResC;      //variables in Grams

            //Maintenance Calculation
            maintResA = bw * numA;                                                                     //finding higher limit of maintenance
            maintResB = bw * numB;                                                                     //finding lower limit of maintenance
            maintResC = maintResA - maintResB;                                                         
            maintenance = maintResC / 2 + maintResA;                                                   //finding middle of lower and upper 


            //Protein
            proteinGrams = bw;                                                                          //setting grams of protein to bodyweight
            proteinCal = proteinGrams * 4.0;                                                            //converting protein from grams to cals

            //Fat
            fatResA = bw * fatA;                                                                        //finding higher limit of fat
            fatResB = bw * fatB;                                                                        //finding higher limit of fat
            fatResC = fatResA - fatResB;                                                                
            fatGrams = fatResC / 2 + fatResA;                                                           //finding middle of lower and upper limit

            fatCal = fatGrams * 9.0;                                                                    //converting fat from grams to cals

            //Carbs
            totalFP = fatCal + proteinCal;                                                              //totalling fat and protein in grams 

            carbsCal = maintenance - totalFP;
            carbsGrams = carbsCal / 4;                                                                  //converting carbs from calories to grams


            lblMaintReturn.Text = maintenance.ToString();                                               //returning values as string
            lblProteinReturn.Text = proteinGrams.ToString();
            lblFatReturn.Text = fatGrams.ToString();
            lblCarbReturn.Text = carbsGrams.ToString();



        }
    }
}