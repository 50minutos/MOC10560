<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_002_Assembly.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>x = 
        <asp:TextBox runat="server" ID="x"/></p>
    <p>y = 
        <asp:TextBox runat="server" ID="y"/></p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    <p>
        <asp:Button ID="Button1" Text="+" runat="server" OnClick="Calcular"/>
        &nbsp;&nbsp;&nbsp;    
        <asp:Button ID="Button2" Text="-" runat="server" OnClick="Calcular"/>
        &nbsp;&nbsp;&nbsp;    
        <asp:Button ID="Button3" Text="*" runat="server" OnClick="Calcular"/>
                &nbsp;&nbsp;&nbsp;    
        <asp:Button ID="Button4" Text="/" runat="server" OnClick="Calcular"/>
        &nbsp;&nbsp;&nbsp;    
    </p>
    
    </div>
    </form>
</body>
</html>
