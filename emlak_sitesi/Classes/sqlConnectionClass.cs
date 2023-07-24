using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace emlak_sitesi.Classes
{
	public class sqlConnectionClass
	{
		public static SqlConnection connection = new SqlConnection("Data Source = DESKTOP-TDUP3J1\\SQLEXPRESS; Initial Catalog = Emlak _DB; Integrated Security = True;");
		public static void chekConnection()
		{
			if(connection.State == System.Data.ConnectionState.Closed)
			{
				connection.Open();
			}
			else
			{

			}
		}
		//bağlantıyı açıp kapatmaya yarar bitti
	}

}