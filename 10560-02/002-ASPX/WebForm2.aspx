<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_002_ASPX.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" 
            Font-Size="0.8em" ActiveStepIndex="0">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="01">
                    <h1>
                        Dados Pessoais</h1>
                    <p>
                        Nome:<br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </p>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="02">
                    <h1>
                        Dados Comerciais</h1>
                    <p>
                        Referência:<br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </p>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="03">
                    <h1>
                        Confirma?</h1>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Sucesso">
                    <h1>
                        Opa... fez..</h1>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
