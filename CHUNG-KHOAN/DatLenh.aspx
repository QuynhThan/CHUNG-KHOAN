<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatLenh.aspx.cs" Inherits="CHUNG_KHOAN.temp" %>
<%@ Register assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        
        <h1 class="text-center">ĐẶT LỆNH</h1>
        <div class="center-page">
            <div class="row">
                <div class="col-md-6">
                    <div class="text-center">
                        <p style="width: fit-content; margin:auto">
                            Loại lệnh&nbsp; 
                            <asp:DropDownList ID="cmbLoaiLenh" runat="server" Width="182.4px">
                                <asp:ListItem Selected="True" Value="">Lệnh Thông Thường</asp:ListItem> 
                            </asp:DropDownList>
                        </p>
                        <p style="width: fit-content; margin:auto">
                            Mã CK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtMaCK" runat="server" Width="182.4px"></asp:TextBox>
                        </p>
                        <p style="width: 100%; margin:auto">
                            Khối lượng
                            <asp:TextBox ID="txtKhoiLuong" runat="server" Width="182.4px"></asp:TextBox>
                        </p>
                        <p style="width: fit-content; margin:auto">
                            Giá&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtGia" runat="server" Width="182.4px"></asp:TextBox>
                        </p>
                    </div>
                
                </div>
                <div class="col-md-6 ">
                    <div class="text-center">
                        <p style="width: fit-content; margin:auto">
                            Mua/Bán
                            <asp:DropDownList ID="cmbMuaBan" runat="server" Width="182.4px">
                                <asp:ListItem Selected="True" Value="M">Mua</asp:ListItem> 
                                <asp:ListItem Value="B">Bán</asp:ListItem> 
                            </asp:DropDownList>
                        </p>
                        <p style="width: fit-content; margin:auto">
                            Lệnh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="cmbLenh" runat="server" Width="182.4px">
                                <asp:ListItem Selected="True" Value="LO">LO</asp:ListItem> 
                            </asp:DropDownList>
                        </p>
                        <p style="width: fit-content; margin:auto">
                            SL Max&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtSLMax" runat="server" Width="182.4px" ReadOnly="True" Enabled="False">0</asp:TextBox>
                        </p>
                        <p style="width: fit-content; margin:auto">
                            Nhân lệnh
                            <asp:TextBox ID="txtNhanLenh" runat="server" Width="182.4px" ReadOnly="True" Enabled="False">1</asp:TextBox>
                        </p>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-2">

                    <div class="text-center">
                        <asp:Button ID="btnDat" runat="server" Text="Đặt" Width="80px" CssClass="btn" OnClick="btnDat_Click"/>
                    </div>

                </div>
                <div class="col-md-2">

                    <div class="text-center">
                        <asp:Button ID="btnLamLai" Text="Làm Lại" runat="server" Width="80px" CssClass="btn" OnClick="btnLamLai_Click" /> 
                    </div>

                </div>
            </div>
        </div>
        <p>

            <asp:Label ID="lblLoi" runat="server" Text=""></asp:Label>

        </p>
        <div style="position:absolute; right: 500px">
            <div class="message-alert" id="alert"></div>
        </div>
    </section>
</asp:Content>
