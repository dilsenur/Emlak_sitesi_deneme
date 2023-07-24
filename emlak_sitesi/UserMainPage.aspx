<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserMainPage.aspx.cs" Inherits="emlak_sitesi.UserMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
		img {
			width: 300px;
			height: 200px;
		}

		ul {
			display: flex;
			list-style: none;
			padding: 0;
			margin: 0;
		}

		.property {
			margin-right: 20px;
		}

			.property a {
				text-decoration: none;
				color: black;
			}

			.property h3, .property p {
				margin: 0;
			}

		.popular-properties, .recent-properties, .baslik,.search-box {
			margin-left: 300px;
		}
	</style>

	<!-- Başlık -->
	<h1 class="baslik">Hoş Geldiniz!</h1>

	<!-- Arama kutusu -->
	<div class="search-box">
		<input type="text" placeholder="Şehir veya ilçe ara">
		<button>Ara</button>
	</div>

	<!-- En popüler mülkler -->
	<div class="popular-properties">
		<h2>En Popüler Mülkler</h2>
		<ul>
			<li class="property">
				<a href="#">
					<img src="https://www.seyirkafe.com/wp-content/uploads/2017/02/0ed44b46ad8ba4e3ef2189e1d5094393.jpg" alt="Mülk 1">
					<h3>Mülk 1</h3>
					<p>Fiyat: 1.000.000 TL</p>
				</a>
			</li>
			<li class="property">
				<a href="#">
					<img src="https://i.pinimg.com/736x/21/04/22/2104228fdcf2a42fdf6ee580994379cf--delray-beach-eng.jpg" alt="Mülk 2">
					<h3>Mülk 2</h3>
					<p>Fiyat: 1.500.000 TL</p>
				</a>
			</li>
			<li class="property">
				<a href="#">
					<img src="https://www.manzara.gen.tr/w1/Ev-Foto%C4%9Fraflar%C4%B1-51.jpg" alt="Mülk 3">
					<h3>Mülk 3</h3>
					<p>Fiyat: 1.200.000 TL</p>
				</a>
			</li>
		</ul>
	</div>

	<!-- En son eklenen mülkler -->
	<div class="recent-properties">
		<h2>En Son Eklenen Mülkler</h2>
		<ul>
			<li class="property">
				<a href="#">
					<img src="https://www.atasehirweb.com/images/album/Bungalov_ev_FotolarY_4.jpg" alt="Mülk 4">
					<h3>Mülk 4</h3>
					<p>Fiyat: 800.000 TL</p>
				</a>
			</li>
			<li class="property">
				<a href="#">
					<img src="https://www.leylara.com/wp-content/uploads/2016/01/ev-dekorasyon-fotograflari-1.jpg" alt="Mülk 5">
					<h3>Mülk 5</h3>
					<p>Fiyat: 2.000.000 TL</p>
				</a>
			</li>
			<li class="property">
				<a href="#">
					<img src="https://st2.depositphotos.com/1183609/8008/i/950/depositphotos_80088290-stock-photo-american-dream-house.jpg" alt="Mülk 6">
					<h3>Mülk 6</h3>
					<p>Fiyat: 2.500.000 TL</p>
				</a>
			</li>
		</ul>
	</div>
</asp:Content>
