<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="Aula32_MasterPage.Funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 14px;
        }
        .auto-style2 {
            margin-left: 6px;
        }
        .auto-style3 {
            margin-left: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-family:Verdana; padding:10px">Cadastro de Funcionarios</h1>
    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Idade:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
    <br />
    <br/>
</asp:Content>
