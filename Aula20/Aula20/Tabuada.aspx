<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabuada.aspx.cs" Inherits="Aula20.Tabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tabuada</h1>

        </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Calcular" />
    </form>
</body>
</html>
