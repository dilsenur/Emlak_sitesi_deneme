﻿using emlak_sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace emlak_sitesi
{
	public partial class AdminApprove : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Convert.ToBoolean(Session["IsAdmin"]) != true)
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                int myID = Convert.ToInt32(Request.QueryString["selectedid"]);

                AdminOperations.AdminApprove(myID);
            }
        }
	}
}