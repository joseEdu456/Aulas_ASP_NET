<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagPrincipal.aspx.cs" Inherits="Aula20.PagPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pagina Inicial</title>
    <style>
        .links{
            text-decoration: none;
            color: black;
            background-color: slategrey;
            padding: 10px;
            border-radius: 7px;
        }
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tabuada.aspx">Tabuada</asp:HyperLink>
                    </td>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Fatorial.aspx">Fatorial</asp:HyperLink>
                    </td>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ListTarefas.aspx">Lista de Tarefas</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
