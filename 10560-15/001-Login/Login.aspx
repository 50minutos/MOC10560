﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_001_Login.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="Login2" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#333333">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                <asp:ChangePassword ID="ChangePassword1" runat="server" 
    BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" 
    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                    <CancelButtonStyle BackColor="White" BorderColor="#507CD1" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#284E98" />
                    <ChangePasswordButtonStyle BackColor="White" 
        BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                    <ContinueButtonStyle BackColor="White" 
        BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                    <InstructionTextStyle Font-Italic="True" 
        ForeColor="Black" />
                    <PasswordHintStyle Font-Italic="True" 
        ForeColor="#507CD1" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" 
        Font-Size="0.9em" ForeColor="White" />
                </asp:ChangePassword>
            </LoggedInTemplate>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>