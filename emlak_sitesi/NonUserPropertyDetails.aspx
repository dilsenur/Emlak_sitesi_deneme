<%@ Page Title="" Language="C#" MasterPageFile="~/NonUser.Master" AutoEventWireup="true" CodeBehind="NonUserPropertyDetails.aspx.cs" Inherits="emlak_sitesi.NonUserPropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
		.property-title {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 10px;
		}

		.property-image {
			max-width: 100%;
			height: auto;
			margin-bottom: 10px;
		}

		.property-label {
			font-size: 16px;
			font-weight: normal;
			margin-right: 10px;
			text-align: right;
		}

		.property-value {
			font-size: 16px;
			font-weight: bold;
			text-align: left;
		}
		
	</style>

	<form id="form1" runat="server">
		<asp:DataList ID="DataList1" runat="server" CssClass="container">
			<ItemTemplate>
				<div class="row">
					<div class="col-md-6">
						<div class="property-title"><%# Eval("PropertyTitle") %></div>
						<img class="property-image" src='<%# Eval("PropertyPhotos") %>' />
					</div>
					<div class="col-md-6">
						<div class="property-info">
							<div class="property-row">
								<span class="property-label">Tür:</span>
								<span class="property-value"><%# Eval("PropertyType") %></span>
							</div>
							<div class="property-row">
								<span class="property-label">Şehir:</span>
								<span class="property-value"><%# Eval("PropertyCity") %></span>
							</div>
							<div class="property-row">
								<span class="property-label">Mahalle:</span>
								<span class="property-value"><%# Eval("PropertyHood") %></span>
							</div>
							<div class="property-row">
								<span class="property-label">Fiyat:</	</span>
								<span class="property-value"><%# Eval("PropertyPrice", "{0:C}") %></span>
							</div>
							<div class="property-row">
								<span class="property-label">Oda Sayısı:</span>
								<span class="property-value"><%# Eval("PropertyRoom") %></span>
							</div>
						</div>
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
	</form>
</asp:Content>
