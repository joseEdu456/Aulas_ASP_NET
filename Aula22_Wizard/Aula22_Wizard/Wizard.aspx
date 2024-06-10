<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wizard.aspx.cs" Inherits="Aula22_Wizard.Wizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 412px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="383px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="336px">
                <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Cadastro de Pessoa">
                        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Idade"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Hobby"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtHobby" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Tabuada">
                        <asp:DropDownList ID="ddlNumeros" runat="server">
                        </asp:DropDownList>
                        <br />
                        <asp:Button ID="btnTabuada" runat="server" OnClick="btnTabuada_Click" Text="Ver Tabuada" />
                        <asp:Table ID="Table1" runat="server">
                        </asp:Table>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
