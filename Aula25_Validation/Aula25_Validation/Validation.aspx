<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Aula25_Validation.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#66FF66" GroupingText="Campo de Validação" Height="344px" Width="752px">
            <asp:Label Text="Nome" runat="server"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtIdade" ErrorMessage="*Este campo é obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lbIdade" runat="server" Text="Idade:"></asp:Label>
            <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdade" ErrorMessage="*Este campo é obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdade" ErrorMessage="*Idade inválida" MaximumValue="115" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Tipo de email invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Senha:<asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="*Este campo é obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Confirmar senha:<asp:TextBox ID="txtSenhaConf" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtSenhaConf" ErrorMessage="*Senhas diferentes"></asp:CompareValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
