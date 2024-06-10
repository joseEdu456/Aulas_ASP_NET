<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Aula10.Cursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 428px;
        }
    </style>
</head>
<body style="height: 537px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View2" runat="server">
                    <p>
                        Selecione o que que deseja fazer:
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>Cadastrar-se</asp:ListItem>
                            <asp:ListItem>Tabuada</asp:ListItem>
                        </asp:RadioButtonList>
                    </p>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <h1>Cadastro</h1>
                    <asp:Label ID="Label1" runat="server">Nome:</asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label2" runat="server">Idade:</asp:Label><br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                    <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar"></asp:Button>
                    <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Voltar para Home" />
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <h1>Tabuada</h1>
                    <asp:DropDownList ID="ddlNumeros" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="btnTabuada" runat="server" Text="Ver Tabuada"/>
                    <asp:Button ID="btnHomeT" runat="server" OnClick="btnHome_Click" Text="Voltar para Home" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
