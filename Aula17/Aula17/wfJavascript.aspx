<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfJavascript.aspx.cs" Inherits="Aula17.wfJavascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Javacript</title>
    <script>
        tam = 15;
        function aumentarTexto() {
            tam = tam + 5;
            document.getElementById("paragrafo").style.fontSize = tam + "px";
        }
        function diminuirTexto() {
            tam = tam - 5;
            document.getElementById("paragrafo").style.fontSize = tam + "px";
        }
    </script>
</head>
<body style="height: 405px">
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="Literal1" runat="server" Text="&lt;h1&gt;AULAS QUE FALAM SOBRE JAVASCRIPT&lt;h1&gt;"></asp:Literal>
            <asp:Label ID="Label1" runat="server" Text="CUIDADO" onMouseOver="Matar()"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" onClick="aumentarTexto()">++++++++</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" onClick="diminuirTexto()">--------</asp:HyperLink>
            <p id="paragrafo">
                hkadhkahdkahcaicjuahdgaduagdagbdabaodhaodhgaidha<br />
                djhaksdhaksdgashdlashdkauihsdiuhaskdhasduhashakjshd<br />
                hajahdghjasgdghasdjhagsdkjadhagskdgakjsdgajhsdgjahgsdjhag<br />
            </p>
        </div>
    </form>
</body>
</html>
