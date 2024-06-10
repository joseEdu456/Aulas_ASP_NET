<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sites_Enderecos.aspx.cs" Inherits="Aula05.Sites_Enderecos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 161px;
        }
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 240px;
        }
        .auto-style4 {
            width: 273px;
            height: 67px;
        }
        .auto-style5 {
            width: 240px;
            height: 67px;
        }
        .auto-style6 {
            height: 67px;
        }
    </style>
</head>
<body style="height: 267px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Site</td>
                    <td class="auto-style3">Endereço</td>
                    <td>Opcoes</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtSite" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEndereco" runat="server" Width="209px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir" />
                        <asp:Button ID="btnSelecionar" runat="server" OnClick="btnSelecionar_Click" Text="Selecionar Site" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:ListBox ID="lbSites" runat="server" SelectionMode="Multiple" Width="249px"></asp:ListBox>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlSites" runat="server" Height="16px" Width="171px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
