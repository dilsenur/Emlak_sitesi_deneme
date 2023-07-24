<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserContact.aspx.cs" Inherits="emlak_sitesi.UserContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
		.contact
		{
			margin-left:300px;
		}
        .social-media {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }
        .social-media a {
            margin-right: 10px;
        }
        .phone-number {
            margin-top: 20px;
            font-size: 24px;
        }
        .message-box {
            margin-top: 20px;
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: #eee;
            border-radius: 5px;
        }
        .message-box label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }
        .message-box input[type="text"], .message-box input[type="email"], .message-box textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 10px;
        }
        .message-box textarea {
            height: 150px;
        }
        .message-box input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
        }
	</style>
	<div class="contact">
		<h2>Bizimle İletişim Kurun</h2>
		<br />
        <div class="social-media">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
        <div class="phone-number">
            Telefon:0530 950 17 90
        </div>
        <div class="message-box">
            <form>
                <label for="name">Adınız:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">E-posta Adresiniz:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Mesajınız:</label>
                <textarea id="message" name="message" required></textarea>
                <input type="submit" value="Gönder">
            </form>
        </div>
	</div>
</asp:Content>
