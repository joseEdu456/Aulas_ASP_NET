<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParOuImparFatorial.aspx.cs" Inherits="Aula08.ParOuImparFatorial_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 360px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div class="auto-style1">
            <asp:BulletedList ID="blLista" runat="server" Width="284px" DisplayMode="LinkButton" Height="51px" OnClick="blLista_Click">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Fatorial</asp:ListItem>
            </asp:BulletedList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Fatorial</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            
            <asp:Panel ID="Panel1" runat="server" Height="69px" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="Par ou Impar"></asp:Label>
                <br />
                <asp:TextBox ID="txtParImpar" runat="server" Height="21px" Width="130px"></asp:TextBox>
                <asp:Button ID="btnParImpar" runat="server" Text="Par ou Impar" OnClick="btnParImpar_Click" />
                <br />
                <asp:Label ID="lbSaida" runat="server" Text="Resultado:"></asp:Label>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <asp:Label ID="Label3" runat="server" Text="Fatorial"></asp:Label>
                <br />
                <asp:TextBox ID="txtFatorial" runat="server" Height="21px" Width="130px"></asp:TextBox>
                <asp:Button ID="btnFatorial" runat="server" Text="Fazer fatorial" OnClick="btnFatorial_Click" />
                <br />
                <asp:Label ID="lbResultado" runat="server" Text="Resultado:"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
