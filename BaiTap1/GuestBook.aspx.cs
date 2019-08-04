using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GuestBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ReadComment();
    }
    protected void btnGuiND_Click(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        string sfile = Server.MapPath(@"\") + "data.txt";
        using (StreamWriter writer = new StreamWriter(sfile, true))
        {
            writer.WriteLine(txtTieuDe.Text);
            writer.WriteLine(txtHoTen.Text);
            writer.WriteLine(txtEmail.Text);
            writer.WriteLine(txtNoiDung.Text);
            writer.WriteLine(date);
            writer.WriteLine("#END");
            writer.Close();
        }
        Response.Redirect("GuestBook.aspx");
    }

    private void ReadComment()
    {
        
        string sfile = Server.MapPath(@"\") + "data.txt";
        using (StreamReader read = new StreamReader(sfile))
        {
            string snoidung = read.ReadToEnd(); //đọc toàn bộ file
            string[] delimiter = { "#END" }; //lấy chuỗi #END cho vào mảng
            string[] sArr = snoidung.Split(delimiter, StringSplitOptions.RemoveEmptyEntries);
            /*sArr[0] = "Đánh giá
                         Võ Việt Cường
                         vovietcuong@gmail.com
                         Rất hài lòng"
              sArr[1] = "Nhận xét
                         Lê Tèo
                         teo1234@gmail.com
                         Khá ổn"*/
            foreach (string s in sArr)
            {
                string stemp;
                stemp = Regex.Replace(s, @"\r\n", "<br />");
                string entry = string.Format("<tr><td colspan=\"2\"> {0} <td/><tr/>", stemp);
                EntryComment.InnerHtml += entry;
            }
         }
     }
}