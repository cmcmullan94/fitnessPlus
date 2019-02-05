using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace fitnessPlus
{
    public partial class SiteMaster : MasterPage
    {

        IFirebaseConfig config = new FirebaseConfig                             //configuring firesbase
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
                lblfirebaseConnection.Text = "Firebase Connection Established";
            }
            else
            {
                lblfirebaseConnection.Text = "Connection Error!";
            }

        }
    }
}