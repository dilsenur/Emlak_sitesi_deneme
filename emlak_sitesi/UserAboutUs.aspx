<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserAboutUs.aspx.cs" Inherits="emlak_sitesi.UserAboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<style>
		.font {
			font-style: italic;
			text-align: center;
		}

		img {
			width: 300px;
			height: 200px;
		}
	</style>

	<head class="font">
		<title>Hakkımızda</title>
	</head>
	<body class="font ">
		<h1>Hakkımızda</h1>
		<div class="about-section,yer">
			<div class="about-text">
				<p>Şirketinizin adı olarak XXXX firması olarak faaliyetlerimize 2020 yılında başladık. Şirketimiz, müşterilerine en iyi hizmeti sunmayı amaçlamaktadır.</p>
				<p>Sunduğumuz hizmetler arasında emlak danışmanlığı, satış, kiralama, portföy yönetimi, değerleme, tapu işlemleri ve benzeri hizmetler yer almaktadır. </p>
			</div>
			<div class="about-image">
				<img src="https://www.neoldu.com/d/other/motivasyon-sozleri-011.webp" alt="Hakkımızda Resim">
			</div>
		</div>

		<div class="vision-mission">
			<h2>Vizyonumuz</h2>
			<p>Müşterilerimize en iyi hizmeti sunmak, sektörde lider bir firma olmak ve her zaman yenilikçi olmak için çalışıyoruz.</p>

			<h2>Misyonumuz</h2>
			<p>Müşteri memnuniyetini her zaman ön planda tutarak, onların ihtiyaçlarına uygun mülkleri en doğru fiyatla sunmak. Aynı zamanda, çalışanlarımızın da mutlu ve başarılı olmasını sağlamak.</p>
		</div>
	</body>

</asp:Content>
