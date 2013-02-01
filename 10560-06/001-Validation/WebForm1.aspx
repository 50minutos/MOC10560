<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_001_Validation.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            Cálculo de IMC</h1>
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <p>
                    Altura:<br/>
                    <asp:TextBox runat="server" ID="A"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="A" Display="None" ErrorMessage="Digite um número" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="A" Display="None" ErrorMessage="Digite um número como 9,99" 
                        Operator="DataTypeCheck" SetFocusOnError="True" Type="Double"></asp:CompareValidator>
                </p>
                <p>
                    Peso (Kg):<br/>
                    <asp:TextBox runat="server" ID="P"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="P" Display="None" ErrorMessage="Digite um número" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="P" Display="None" ErrorMessage="Digite um número como 9,99" 
                        Operator="DataTypeCheck" SetFocusOnError="True" Type="Double"></asp:CompareValidator>
                </p>
                <p>
                    <asp:Button Text="Calcular" runat="server" OnClick="Calcular" /></p>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </asp:View>
        
            <asp:View ID="View2" runat="server">
                <p>
                O seu IMC é: 
                <asp:Label ID="IMC" Text="text" runat="server" />
                </p>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
