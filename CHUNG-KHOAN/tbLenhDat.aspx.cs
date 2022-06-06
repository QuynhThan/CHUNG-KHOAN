using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CHUNG_KHOAN
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvLenhDat.SelectedRow.Cells[7].Text.Trim() == "CHỜ KHỚP" || gvLenhDat.SelectedRow.Cells[7].Text.Trim() == "kHỚP LỆNH 1 PHẦN")
            {
                DS.Update(); // CHỈ UPDATE TRANGTHAILENH = 'ĐÃ HỦY' CỦA DÒNG ĐÃ CHỌN
            }
        }
    }
}