<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_001_Login.DIRETORIA.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
      
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/RESTRITO/WebForm1.aspx">Restrito</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/DIRETORIA/WebForm1.aspx">Diretoria</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Esqueci.aspx">Esqueci minha senha</asp:HyperLink>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:LoginName ID="LoginName1" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>
    
    </div>
    </form>
</body>
</html>
