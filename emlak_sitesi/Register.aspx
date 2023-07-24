<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="emlak_sitesi.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
	<style>
		.mytbox{
			width: 250px;
			height: 40px;
			margin-top:20px;
		}
		.mybutton{
			width: 250px;
			height: 40px;
			margin-top:20px;
		}
	</style>

    <title></title>
	
</head>
<body>
    <form id="form1" runat="server" method="post" style="display: flex; flex-direction: column; margin-left:200px" >
		<h2> KAYIT OL</h2>
			<asp:TextBox CssClass="form-control mytbox" ID="tboxName" placeholder="İsim *" runat="server" ></asp:TextBox>
			<asp:TextBox CssClass="form-control mytbox" ID="tboxSurname" placeholder="Soyisim *" runat="server" ></asp:TextBox>	
		    <asp:TextBox CssClass="form-control mytbox" ID="tboxMail" placeholder="E-Posta Adresi *" runat="server" s></asp:TextBox>
		    <asp:TextBox CssClass="form-control mytbox" ID="tboxPassword" placeholder="Şifre *" runat="server" TextMode="Password"></asp:TextBox>
			<asp:Button CssClass="btn btn-danger form-control mybutton" ID="btnKayıtOl" runat="server"  Text="Kayıt Ol" OnClick="btnKayıtOl_Click1"  />

	</form>
</body>
</html>
