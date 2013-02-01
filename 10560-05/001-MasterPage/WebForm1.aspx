<%@ Page Title="" Theme="Azul" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="_001_MasterPage.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        WebForm1</h1>
    <asp:Label ID="Label1" Text="Primeiro label" runat="server" />
    <asp:Label ID="Label2" SkinID="Verde" Text="Segundo label" runat="server" />
    <asp:Label ID="Label3" Text="Terceiro label" runat="server" />
</asp:Content>
