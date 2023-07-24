using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace emlak_sitesi.Classes
{
	public class UserOperations
	{
		public static void UserRegister(string temp_mail, string temp_name, string temp_surname, string temp_password)
		{
			SqlCommand commandRegister = new SqlCommand("Insert into TableUser (UserMail,UserName,UserSurname,UserPassword,UserRegisterDate) values(@pmail,@pname,@psurname,@ppassword,@pdate) ", sqlConnectionClass.connection);
			sqlConnectionClass.chekConnection();

			commandRegister.Parameters.AddWithValue("@pmail", temp_mail);
			commandRegister.Parameters.AddWithValue("@pname", temp_name);
			commandRegister.Parameters.AddWithValue("@psurname", temp_surname);
			commandRegister.Parameters.AddWithValue("@ppassword", sha256Converter.ComputeSha256Hash(temp_password));
			commandRegister.Parameters.AddWithValue("@pdate", DateTime.Now);

			commandRegister.ExecuteNonQuery();
		}
		public static DataTable UserLogin(string mail, string sifre)
		{
			SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail=@pmail and UserPassword=@ppassword",sqlConnectionClass.connection);
			sqlConnectionClass.chekConnection();

			commandLogin.Parameters.AddWithValue("@pmail", mail);
			commandLogin.Parameters.AddWithValue("@ppassword", sha256Converter.ComputeSha256Hash(sifre));

			SqlDataAdapter da = new SqlDataAdapter(commandLogin);
			DataTable dt = new DataTable();
			da.Fill(dt);
			return dt;

			
		}
	}
}