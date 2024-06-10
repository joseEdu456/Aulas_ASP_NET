<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aula03.aspx.cs" Inherits="Aula03_ListBox.Aula03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aula 03</title>
    <style type="text/css">
        .auto-style1 {
            height: 186px;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 56%;
            height: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style2">Cidades</td>
                    <td>Opcoes</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Inserir" />
                        <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Selecionar Cidade" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ListBox ID="libCidades" runat="server"></asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
