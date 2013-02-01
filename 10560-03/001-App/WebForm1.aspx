<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_001_App.WebForm1" %>

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
            WebForm1</h1>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget arcu ligula.
            In pretium, nisi et tincidunt egestas, turpis arcu ultricies justo, vitae hendrerit
            ante erat nec sapien. Mauris quis sagittis lacus. Quisque adipiscing, ipsum in rhoncus
            ultrices, leo urna molestie dolor, quis convallis elit arcu non enim.</p>
        <p>
            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos
            himenaeos. Nunc eu ipsum ligula, ac blandit dui. Quisque tempus, magna a rhoncus
            molestie, justo velit pulvinar nibh, ut luctus nisi urna porttitor nunc. In commodo
            vulputate risus feugiat sodales. Pellentesque in accumsan lorem. Proin urna tellus,
            viverra sit amet pellentesque non, congue et diam.</p>
    </div>
    <uc2:Rodape ID="Rodape1" runat="server" />
    </form>
</body>
</html>
