<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabuada.aspx.cs" Inherits="Aula06.Tabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
    </style>
</head>
<body style="height: 356px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:DropDownList ID="ddlNumeros" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btnTabuada" runat="server" OnClick="btnTabuada_Click" style="height: 26px" Text="Ver Tabuada" />
        </div>
        <asp:Table ID="Table1" runat="server" Height="36px" Width="45px" BorderColor="#CCCCCC">
        </asp:Table>
        <p>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </p>
    </form>
</body>
</html>
