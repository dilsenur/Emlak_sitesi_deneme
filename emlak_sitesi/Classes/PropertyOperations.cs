using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace emlak_sitesi.Classes
{
	public class PropertyOperations
	{
		public static SqlDataReader drGetAllProps;

		public static SqlDataReader getAllProp()
		{
			SqlCommand commandLoadProperties = new SqlCommand("Select * from TableProperty where PropertyApprove=@p1", sqlConnectionClass.connection);
			sqlConnectionClass.chekConnection();
			commandLoadProperties.Parameters.AddWithValue("@p1", 1);
			drGetAllProps = commandLoadProperties.ExecuteReader();

			return drGetAllProps;
		}

		public static SqlDataReader drgetPropertyByID;

		public static SqlDataReader getPropertyByID(int fake_id)
		{
			SqlCommand commandGetProperties = new SqlCommand("Select * from TableProperty where PropertyID=@id", sqlConnectionClass.connection);
			sqlConnectionClass.chekConnection();
			commandGetProperties.Parameters.AddWithValue("@id", fake_id);

			drgetPropertyByID = commandGetProperties.ExecuteReader();

			return drgetPropertyByID;
		}

		//ürün ekleme
		//cityID=>dropdownlistcity
		//hoodID=>dropdownlisthood
		//room=>dropdownlistroom
		//type=>dropdownlisttype
		public static void AddProperty(string title, string price, int cityID, int hoodID, string room, string photoLink, string type)
		{
			//
			SqlCommand commandAddProperty = new SqlCommand("Insert Into TableProperty (PropertyTitle,PropertyPrice,PropertyCity,PropertyHood,PropertyRoom,PropertyPhotos,PropertyType) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", sqlConnectionClass.connection);

			sqlConnectionClass.chekConnection();

			commandAddProperty.Parameters.AddWithValue("@p1", title);
			commandAddProperty.Parameters.AddWithValue("@p2", price);
			commandAddProperty.Parameters.AddWithValue("@p3", cityID);
			commandAddProperty.Parameters.AddWithValue("@p4", hoodID);
			commandAddProperty.Parameters.AddWithValue("@p5", room);
			commandAddProperty.Parameters.AddWithValue("@p6", photoLink);
			commandAddProperty.Parameters.AddWithValue("@p7", type);

			commandAddProperty.ExecuteNonQuery();
		}

	}
}