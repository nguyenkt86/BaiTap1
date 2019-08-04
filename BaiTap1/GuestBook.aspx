<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuestBook.aspx.cs" Inherits="GuestBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style5 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
        <table style="width: 37%; height: 299px; color:white; background:#04B404; font-weight:bold" align="center">
            <tr>
                <td colspan="2" style="background-color:blue;" align="center">GuestBook</td>
            </tr>
            <tr>
                <td class="auto-style2">Tiêu đề:</td>
                <td>
                    <asp:TextBox ID="txtTieuDe" runat="server" Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Họ tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nội dung:</td>
                <td>
                    <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" Rows="6" Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2" align="center">
                    <asp:Button ID="btnGuiND" runat="server" Text="Gửi nội dung" OnClick="btnGuiND_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color:white"></td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="background-color:blue">DANH SÁCH COMMENT</td>
            </tr>
            <span id="EntryComment" runat="server"></span>
        </table>
    </div>
    </form>
</body>
</html>
