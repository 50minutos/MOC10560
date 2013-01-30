<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_003_ASPX.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Título da janela</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<!--
    comentário 
    da 
    bagaça
//-->

<%--
    texto do comentário 
    de servidor
--%>
        <h1>
            Título da página</h1>
        <p>
            qualquer coisa aqui...</p>
        <p>
            <asp:Label ID="Lbl" Text="conteúdo do label" runat="server" /></p>
        <p>
            <asp:TextBox ID="Nome" runat="server" /></p>
    </div>
    </form>
</body>
</html>
