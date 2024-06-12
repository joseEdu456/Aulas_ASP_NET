<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Aula35_GridView.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Salario"></asp:Label>
            <br />
            <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Funcao"></asp:Label>
            <br />
            <asp:TextBox ID="txtFuncao" runat="server"></asp:TextBox>
            <asp:Button ID="btnCadastra" runat="server" Text="Cadastrar" OnClick="btnCadastra_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1Cliente">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id">
                    <HeaderStyle BackColor="#000066" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome">
                    <HeaderStyle Width="170px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="salario" HeaderText="salario" SortExpression="salario">
                    <HeaderStyle Width="170px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="funcao" HeaderText="funcao" SortExpression="funcao">
                    <HeaderStyle Width="170px" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1Cliente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [nome], [salario], [funcao] FROM [Funcionarios]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
