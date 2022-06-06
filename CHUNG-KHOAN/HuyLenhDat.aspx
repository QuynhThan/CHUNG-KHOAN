<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HuyLenhDat.aspx.cs" Inherits="CHUNG_KHOAN.HuyLenhDat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1 class="text-center">LỆNH ĐẶT</h1>
    <div>
        <asp:GridView ID="gvLenhDat" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DS_LENH_CHO" Width="100%" CssClass="text-center" AllowSorting="True" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="False" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="MACP" HeaderText="MÃ CỔ PHIẾU" SortExpression="MACP"  >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="NGAYDAT" HeaderText="NGÀY ĐẶT" SortExpression="NGAYDAT" DataFormatString="{0:yyyy-MM-dd HH:mm:ss.sss}" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="LOAIGD" HeaderText="LOẠI GIAO DỊCH" SortExpression="LOAIGD" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="LOAILENH" HeaderText="LOẠI LỆNH" SortExpression="LOAILENH" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLUONG" HeaderText="SỐ LƯỢNG" SortExpression="SOLUONG" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="GIADAT" HeaderText="GIÁ ĐẶT" SortExpression="GIADAT" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="TRANGTHAILENH" HeaderText="TRẠNG THÁI LỆNH" SortExpression="TRANGTHAILENH" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" HeaderText="HỦY LỆNH" SelectText="HỦY" ShowSelectButton="True">
                <ControlStyle BackColor="#FF6600" CssClass="btn-default" />
                <HeaderStyle CssClass="text-center" />
                <ItemStyle CssClass="btn-default" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#CCFFFF" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="DS_LENH_CHO" runat="server" ConnectionString="<%$ ConnectionStrings:CHUNGKHOANGConnectionString %>" SelectCommand="SELECT LENHDAT.* FROM LENHDAT WHERE TRANGTHAILENH = N'CHỜ KHỚP'" UpdateCommand="UPDATE LENHDAT SET TRANGTHAILENH = N'ĐÃ HỦY'
WHERE ID = @ID">
            <UpdateParameters>
                <asp:ControlParameter ControlID="gvLenhDat" Name="ID" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>
