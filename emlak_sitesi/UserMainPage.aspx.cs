using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI; 
using System.Web.UI.WebControls;

namespace emlak_sitesi
{
	public partial class UserMainPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//kullanıcı giriş yaptığında
			if (Convert.ToBoolean(Session["IsUserOnline"])!=true)
			{
				Response.Redirect("Login.aspx");

			}
			//kullanıcı giriş yaptığında
			else
			{
			//	userMail.InnerHtml = "Hoş geldiniz "+ Session["UserMail"].ToString();
			}
		}
	}
}