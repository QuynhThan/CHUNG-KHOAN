<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tbLenhKhop.aspx.cs" Inherits="CHUNG_KHOAN.tbLenhKhop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center">Lệnh Khớp</h1>
    <div class="center-page">
        
        <asp:GridView ID="gvLenhKhop" runat="server" AutoGenerateColumns="False" DataKeyNames="IDKHOP" DataSourceID="DS" Width="100%" AllowSorting="True" CssClass="text-center" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="IDKHOP" HeaderText="IDKHOP" ReadOnly="True" SortExpression="IDKHOP" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="NGAYKHOP" HeaderText="Ngày Khớp" SortExpression="NGAYKHOP" DataFormatString="{0:yyyy-MM-dd HH:mm:ss.sss}" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="SOLUONGKHOP" HeaderText="Số Lượng Khớp" SortExpression="SOLUONGKHOP" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="GIAKHOP" HeaderText="Giá Khớp" SortExpression="GIAKHOP" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="IDLENHDAT" HeaderText="IDLENHDAT" SortExpression="IDLENHDAT" >
                <HeaderStyle CssClass="text-center" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#CCFFFF" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="DS" runat="server" ConnectionString="<%$ ConnectionStrings:CHUNGKHOANGConnectionString %>" SelectCommand="SELECT * FROM [LENHKHOP]"></asp:SqlDataSource>
        
    </div>
</asp:Content>
