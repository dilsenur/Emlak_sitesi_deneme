using emlak_sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace emlak_sitesi
{
	public partial class Register : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session.Clear();
		}

		protected void btnKayıtOl_Click1(object sender, EventArgs e)
		{
			UserOperations.UserRegister(tboxMail.Text, tboxName.Text,tboxSurname.Text,tboxPassword.Text);
		
		}
	}
}