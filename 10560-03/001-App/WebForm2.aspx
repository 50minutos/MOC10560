<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_001_App.WebForm2" %>

<%@ Register Src="Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="Rodape.ascx" TagName="Rodape" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Menu ID="Menu1" runat="server" />
    <div id="conteudo">
        <h1>
            WebForm2</h1>
    </div>
    <uc2:Rodape ID="Rodape1" runat="server" />
    </form>
</body>
</html>
