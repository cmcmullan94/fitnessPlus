using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace fitnessPlus
{
    public partial class _5__3__1Details : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static void Main(string[] args)
        {
            TwilioClient.Init(
        Environment.GetEnvironmentVariable("AC804fce71f236e6871356a304c1756700"),
        Environment.GetEnvironmentVariable("01c3d1f0ce887421aa232d32419ba58d"));

        }

            protected void btnRemindMe_Click(object sender, EventArgs e)
            {

                MessageResource.Create(
                to: new PhoneNumber("** 07443437927 **"),
                from: new PhoneNumber("** 07842821505 **"),
                body: "Penis!");
            }

        }


    }
}