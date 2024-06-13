<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="Aula37_DetailsView.DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourcePessoa" Height="124px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="234px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                    <asp:BoundField DataField="idade" HeaderText="idade" SortExpression="idade" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcePessoa" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [pessoa] WHERE [Id] = @Id" InsertCommand="INSERT INTO [pessoa] ([nome], [idade]) VALUES (@nome, @idade)" SelectCommand="SELECT [Id], [nome], [idade] FROM [pessoa]" UpdateCommand="UPDATE [pessoa] SET [nome] = @nome, [idade] = @idade WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="idade" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="idade" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSourcePessoa" Height="50px" Visible="False" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                    <asp:BoundField DataField="idade" HeaderText="idade" SortExpression="idade" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
