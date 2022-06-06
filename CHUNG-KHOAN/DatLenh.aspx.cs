using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CHUNG_KHOAN
{
    public partial class temp : System.Web.UI.Page
    {
        public static SqlConnection Conn = new SqlConnection();
        public static string Connstr_pub = "Data Source=QUYNH;Initial Catalog=CHUNGKHOANG;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public enum MessageType { Success, Incomplete, Fail};

        protected void ShowMessage(String message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(),
                "ShowMessage('" + message + "','" + type + "');",true);
        }
        public static int ExecSqlNonQuery(string strlenh)
        {
            //gan bien ket noi cho connection
            Conn.ConnectionString = Connstr_pub;
            SqlCommand Sqlcmd = new SqlCommand(strlenh, Conn);
            Sqlcmd.CommandType = CommandType.Text;
            Sqlcmd.CommandTimeout = 600; // 10 phut
            if (Conn.State == ConnectionState.Closed) Conn.Open();
            try
            {
                Sqlcmd.ExecuteNonQuery();
                Conn.Close();
                return 0;
            }
            catch (SqlException ex)
            {
                //Connstr_pub = "Lỗi" + ex.Message;
                return ex.State;
            }
        }
        protected void btnLamLai_Click(object sender, EventArgs e)
        {
            txtGia.Text = txtKhoiLuong.Text = txtMaCK.Text = "";
        }

        protected void btnDat_Click(object sender, EventArgs e)
        {
            //Kiem tra thong tin trong
            bool kt = true;
            txtGia.BorderColor = txtKhoiLuong.BorderColor = txtMaCK.BorderColor = System.Drawing.Color.Black;
            if(txtMaCK.Text.Trim() == "")
            {
                txtMaCK.Focus();
                txtMaCK.BorderColor = System.Drawing.Color.Red; 
                kt = false;
            }
            if (txtKhoiLuong.Text.Trim() == "")
            {
                txtKhoiLuong.Focus();
                txtKhoiLuong.BorderColor = System.Drawing.Color.Red; 
                kt = false; //676
            }
            if (txtGia.Text.Trim() == "")
            {
                txtGia.Focus();
                txtGia.BorderColor = System.Drawing.Color.Red; 
                kt = false;
            }
            
            if(kt == false)
            {
                ShowMessage("Vui lòng điền dữ liệu còn thiếu!!!", MessageType.Incomplete);
                return;
            }
            // kiem tra input cua giadat va khoi luong dat
            try
            {
                if (Convert.ToInt32(txtKhoiLuong.Text.Trim()) % 10 != 0)
                {
                    ShowMessage("Khối lượng không hợp lệ!! Khối lượng phải chia hết cho 10", MessageType.Incomplete);
                    txtKhoiLuong.Focus();
                    txtKhoiLuong.BorderColor = System.Drawing.Color.Red; 
                    return;
                }
            }
            catch
            {
                ShowMessage("Input của Khối Lượng chỉ có thể là số!!!", MessageType.Incomplete);
                txtKhoiLuong.Focus();
                txtKhoiLuong.BorderColor = System.Drawing.Color.Red; 
                return;
            }

            try
            {
                if (Convert.ToInt32(txtGia.Text.Trim()) % 10 != 0)
                {
                    ShowMessage("Giá không hợp lệ!! Giá phải chia hết cho 10", MessageType.Incomplete);
                    txtGia.Focus();
                    txtGia.BorderColor = System.Drawing.Color.Red; 
                    return;
                }
            }
            catch
            {
                ShowMessage("Input của Giá chỉ có thể là số!!!", MessageType.Incomplete);
                txtGia.Focus();
                txtGia.BorderColor = System.Drawing.Color.Red; 
                return;
            }

            // thuc hien kiem tra lenh dat
            string date = String.Format("{0:yyyy-MM-dd HH:mm:ss.sss}",  DateTime.Now);
            string cmd = string.Format("EXEC SP_KHOPLENH_LO '{0}','{1}','{2}',{3},{4}",
                        txtMaCK.Text.Trim(), date, cmbMuaBan.SelectedValue.Trim(), 
                        Convert.ToInt32(txtKhoiLuong.Text.Trim()), Convert.ToInt32(txtGia.Text.Trim()));
            int flag = ExecSqlNonQuery(cmd);
            if (flag == 0)
            {
                ShowMessage("Đặt lệnh thành công!!", MessageType.Success);
            }
            else
            {
                ShowMessage("Đặt lệnh thất bại!! Mã lỗi: " + flag , MessageType.Fail);
            }

            //lblLoi.Text = Connstr_pub + "\n" + cmd;
        }
    }
}