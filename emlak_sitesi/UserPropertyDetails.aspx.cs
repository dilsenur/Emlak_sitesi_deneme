using emlak_sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace emlak_sitesi
{
	public partial class UserPropertyDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Convert.ToBoolean(Session["IsUserOnline"]) != true)
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                var myID = Convert.ToInt32(Request.QueryString["selectedid"]);



                DataList1.DataSource = PropertyOperations.getPropertyByID(myID);
                DataList1.DataBind();

                //dataReader değerini kapatarak çalışma zamanında hata almamak için
                PropertyOperations.drgetPropertyByID.Close();
            }
        }
	}
}