﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="Aula35_GridView.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceCliente" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salarioLabel" runat="server" Text='<%# Eval("salario") %>' />
                        </td>
                        <td>
                            <asp:Label ID="funcaoLabel" runat="server" Text='<%# Eval("funcao") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="salarioTextBox" runat="server" Text='<%# Bind("salario") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="funcaoTextBox" runat="server" Text='<%# Bind("funcao") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>Nenhum dado foi retornado.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="salarioTextBox" runat="server" Text='<%# Bind("salario") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="funcaoTextBox" runat="server" Text='<%# Bind("funcao") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salarioLabel" runat="server" Text='<%# Eval("salario") %>' />
                        </td>
                        <td>
                            <asp:Label ID="funcaoLabel" runat="server" Text='<%# Eval("funcao") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">Id</th>
                                        <th runat="server">nome</th>
                                        <th runat="server">salario</th>
                                        <th runat="server">funcao</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                        </td>
                        <td>
                            <asp:Label ID="salarioLabel" runat="server" Text='<%# Eval("salario") %>' />
                        </td>
                        <td>
                            <asp:Label ID="funcaoLabel" runat="server" Text='<%# Eval("funcao") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Funcionarios] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Funcionarios] ([nome], [salario], [funcao]) VALUES (@nome, @salario, @funcao)" SelectCommand="SELECT [Id], [nome], [salario], [funcao] FROM [Funcionarios]" UpdateCommand="UPDATE [Funcionarios] SET [nome] = @nome, [salario] = @salario, [funcao] = @funcao WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="salario" Type="Decimal" />
                    <asp:Parameter Name="funcao" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="salario" Type="Decimal" />
                    <asp:Parameter Name="funcao" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
