﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace emlak_sitesi.Classes
{
	public class CityOperations
	{
        public static DataTable BindDropdownCity()
        {
            SqlCommand commandBindDropdownCity = new SqlCommand("select * from TableCity", sqlConnectionClass.connection);

            sqlConnectionClass.chekConnection();

            SqlDataAdapter da = new SqlDataAdapter(commandBindDropdownCity); //verileri alır ve DataTable'a aktarır

            DataTable dt = new DataTable();
            da.Fill(dt); //sorgudan gelen sonucu DataTable'a aktarır

            return dt;
        }
    }
}