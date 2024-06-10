<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaDeTarefas.aspx.cs" Inherits="Aula09.ListaDeTarefas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 155px;
        }
    </style>
</head>
<body style="height: 393px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Adicione uma tarefa na lista de tarefas:"></asp:Label>
            <br />
            <asp:TextBox ID="txtItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click" />
            <asp:RadioButtonList ID="rblLista" runat="server" OnSelectedIndexChanged="rbLista_SelectedIndexChanged">
            </asp:RadioButtonList>
            <br />
            Você é homem ou mulher? <br />
            <asp:RadioButton ID="rbHomem" runat="server" GroupName="g1" Text="Homem" />
            <asp:RadioButton ID="rbMulher" runat="server" GroupName="g1" Text="Mulher" />
        </div>
    </form>
</body>
</html>
