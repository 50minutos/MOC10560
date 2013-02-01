<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_002_Validation.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            Login</h1>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <p>
                    Nome:<br />
                    <asp:TextBox runat="server" ID="Nome" />
                </p>
                <p>
                    Senha:<br />
                    <asp:TextBox runat="server" ID="Senha" TextMode="Password" />
                </p>
                <p>
                    <asp:Button Text="Logar" runat="server" onclick="Unnamed1_Click" />
                </p>
            </asp:View>
        
            <asp:View ID="View2" runat="server">
                <h1>SUCESSO!!!</h1>
            </asp:View>
        
            <asp:View ID="View3" runat="server">
                <h1>LOGIN INCORRETO!!!</h1>
                <p>
                    Enviar um lembrete de senha para:<br />
                    <asp:TextBox ID="Email" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="Email" Display="None" ErrorMessage="Digite um e-mail válido" 
                        SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Enviar" />
                </p>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
