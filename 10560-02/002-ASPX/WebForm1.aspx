<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_002_ASPX.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Cadastro</h1>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <p>
                Digite o seu nome:<br />
                <asp:TextBox runat="server" ID="Nome" /></p>
            <p>
                Digite o seu e-mail:<br />
                <asp:TextBox runat="server" ID="Email" /></p>
            <p>
                <asp:Button Text="Enviar" runat="server" OnClick="Unnamed1_Click" /></p>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <p>
                Os dados digitados foram:
                <asp:Label ID="LblNome" runat="server" Text="Label"></asp:Label>
                e
                <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label></p>
            <p>
                <asp:Button Text="Voltar" runat="server" OnClick="Unnamed2_Click" /></p>
        </asp:View>
    </asp:MultiView>
    </form>
</body>
</html>
