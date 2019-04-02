using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using FireSharp.Config; //config files for firesharpt
using FireSharp.Interfaces; //various methods to send data to firebase
using FireSharp.Response;   //response from firebase



namespace fitnessPlus
{


    public partial class logIn : System.Web.UI.Page
    {


        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "J1199wPZPQISsn6yAb0yMA4TfjAMIHzktNkiK2jh",
            BasePath = "https://fitnessplus-5d8b8.firebaseio.com/"
        };

        IFirebaseClient client;


        protected void Page_Load(object sender, EventArgs e)
        {

            client = new FireSharp.FirebaseClient(config);

            if (client != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Firebase Connected!');", true);

            }

        }
    }
}