﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace emlak_sitesi.Classes
{
	public class AdminOperations
	{

		public static void AdminDeleteProperty(int id)
		{
			SqlCommand commandAdminDeleteProperty = new SqlCommand("Delete * from TableProperty where PropertyID=@pid", sqlConnectionClass.connection);

			sqlConnectionClass.chekConnection();

			commandAdminDeleteProperty.Parameters.AddWithValue("@pid", id);

			commandAdminDeleteProperty.ExecuteNonQuery();
		}

		public static SqlDataReader drGetAllUnApprove;

		//onaylanmamış verileri getiren fonksiyon
		public static SqlDataReader AdminGetAllPropUnApprove()
		{
			SqlCommand commandLoadProperties = new SqlCommand("select * from TableProperty where PropertyApprove=@p1", sqlConnectionClass.connection);

			sqlConnectionClass.chekConnection();

			//1=> onaylı ürünü getirir
			commandLoadProperties.Parameters.AddWithValue("@p1", 0);

			//veri okuyarak web kısmında gösterildi
			drGetAllUnApprove = commandLoadProperties.ExecuteReader();

			return drGetAllUnApprove;
			//veri okuyarak web kısmında gösterildi bitti
		}

		//onaylanacak olan veriyi getiren fonksiyon

		public static void AdminApprove(int id)
		{
			SqlCommand commandApprove = new SqlCommand("Update TableProperty set PropertyApprove=@p1 where PropertyID=@pid", sqlConnectionClass.connection);

			sqlConnectionClass.chekConnection();

			commandApprove.Parameters.AddWithValue("@p1", 1); //onaylanan veriyi onaylar
			commandApprove.Parameters.AddWithValue("@pid", id);

			commandApprove.ExecuteNonQuery();
		}

		//onaylanacak olan veriyi getiren fonksiyon bitti

	}
}
