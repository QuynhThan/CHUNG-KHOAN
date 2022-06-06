<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tbLenhDat.aspx.cs" Inherits="CHUNG_KHOAN.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 class="text-center">LỆNH ĐẶT</h1>
    <div>
        <asp:GridView ID="gvLenhDat" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DS" Width="100%" CssClass="text-center" AllowSorting="True" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" >
                <ControlStyle Width="30px" />
                <HeaderStyle CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MACP" HeaderText="Mã Cổ Phiếu" SortExpression="MACP"  >
                <HeaderStyle CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NGAYDAT" HeaderText="Ngày Đặt" SortExpression="NGAYDAT" DataFormatString="{0:yyyy-MM-dd HH:mm:ss.sss}" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="LOAIGD" HeaderText="Loại Giao Dịch" SortExpression="LOAIGD" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="LOAILENH" HeaderText="Loại Lệnh" SortExpression="LOAILENH" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLUONG" HeaderText="Số Lượng" SortExpression="SOLUONG" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="GIADAT" HeaderText="Giá Đặt" SortExpression="GIADAT" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="TRANGTHAILENH" HeaderText="Trạng Thái Lệnh" SortExpression="TRANGTHAILENH" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#CCFFFF" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="DS" runat="server" ConnectionString="<%$ ConnectionStrings:CHUNGKHOANGConnectionString %>" SelectCommand="SELECT * FROM [LENHDAT]" UpdateCommand="UPDATE LENHDAT SET TRANGTHAILENH = N'ĐÃ HỦY'
WHERE ID = @ID">
            <UpdateParameters>
                <asp:ControlParameter ControlID="gvLenhDat" DefaultValue="0" Name="ID" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>
