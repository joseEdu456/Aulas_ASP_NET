<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AloMundo.aspx.cs" Inherits="Aula01.AloMundo" %>
<!--Comando a cima esta especificando informações sobre o form web, como por exemplo a linguagem que será usada, neste caso C#-->

<!--Um formulario Web no asp.net se baseia totalmente na utilização de HTML-->
<!--Veja que abaixo é um documento HTML padrao como qualquer outro-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aula 01 - Alo Mundo</title>
</head>
<body style="height: 275px; width: 958px">
    <form id="form1" runat="server">
        <div style="height: 31px; width: 945px">
            <asp:TextBox ID="txtMsg" runat="server" Height="16px" Width="700px"></asp:TextBox>
            <asp:Button ID="btnExecutar" runat="server" OnClick="btnExecutar_Click" Text="Executar" />
        </div>
        <asp:Label ID="labelMsg" runat="server" Text="Escreva o que deseja informar na caixa de texto"></asp:Label>
    </form>
</body>
</html>
