<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadArquivos.aspx.cs" Inherits="Aula21.UploadArquivos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Upload de Arquivos"></asp:Label><br />
            <asp:FileUpload ID="fuArquivos" runat="server" AllowMultiple="True" /><br />
            <asp:Label ID="Label2" runat="server" Text="Nome do Arquivo"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tamanho do Arquivo"></asp:Label>
            <asp:TextBox ID="txtTamanho" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Enviar Arquivos" OnClick="Button1_Click" Width="257px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enviar Multiplos Arquivos" />
        </div>
    </form>
</body>
</html>
