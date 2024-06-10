<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aula04.aspx.cs" Inherits="Aula04.Aula04" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aula 04</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Tabuada</h1>
        <div class="auto-style1">
            <asp:DropDownList ID="ddlNumeros" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMultiplicador" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btnMult" runat="server" OnClick="btnMult_Click" Text="Multiplicar" />
        </div>
        <asp:TextBox ID="txtResult" runat="server">Resultado</asp:TextBox>
        <div class="auto-style2">

            <asp:DropDownList ID="ddlNumeros0" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Tabuada" />

        </div>
        <asp:ListBox ID="lbTabuada" runat="server" Height="212px"></asp:ListBox>
    </form>
</body>
</html>
