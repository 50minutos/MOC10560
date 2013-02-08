<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="_001_Session.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Session ID:
            <asp:Label ID="Label0" runat="server" /></p>
        <p>
            Você é:
            <asp:Label ID="Label1" runat="server" /></p>
        <p>
            O número sorteado é:
            <asp:Label ID="Label2" runat="server" /></p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="limpar a sessão" OnClick="Unnamed1_Click" /></p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="limpar a variável NOME" OnClick="Unnamed2_Click" /></p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="mostrar as variáveis de sessão" OnClick="Unnamed3_Click" /></p>
        <p>
            <input type="button" onclick="window.open('WebForm3.aspx')" /></p>
        <%--testar session em tabs no browser: CTRL+T--%>
    </div>
    </form>
</body>
</html>
