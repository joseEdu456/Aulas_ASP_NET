<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aula02.aspx.cs" Inherits="Aula02_TextBox_Button_DropDownList.Aula02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 122px;
        }
        .auto-style2 {
            width: 154px;
        }
        .auto-style4 {
            width: 314px;
        }
        .auto-style5 {
            width: 88%;
            height: 61px;
        }
        .auto-style6 {
            width: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style2">Casa</td>
                    <td class="auto-style6">Professor</td>
                    <td class="auto-style4">Opcoes</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCasa" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtProfessor" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Inserir" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="listaCasa" runat="server" Height="16px" Width="155px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="listaProfessores" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
