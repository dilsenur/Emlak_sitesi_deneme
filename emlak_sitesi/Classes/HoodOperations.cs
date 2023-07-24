using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace emlak_sitesi.Classes
{
	public class HoodOperations
	{
		//int id=> biribirine bağlı dropdownlist olduğunda seçilen ile göre mahalleyi getirmek için tanımlandı
		public static DataTable BindDropdownHood(int id)
		{
			SqlCommand commandBindDropdownHood = new SqlCommand("Select * from TableHood where HoodCityID=@pid", sqlConnectionClass.connection);

			sqlConnectionClass.chekConnection();

			commandBindDropdownHood.Parameters.AddWithValue("@pid", id);

			SqlDataAdapter da = new SqlDataAdapter(commandBindDropdownHood); //verileri alır ve DataTable'a aktarır

			DataTable dt = new DataTable();
			da.Fill(dt); //sorgudan gelen sonucu DataTable'a aktarır

			return dt;
		}
	}
}