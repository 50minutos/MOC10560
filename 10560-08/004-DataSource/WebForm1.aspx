<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_004_DataSource.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="COD_PESSOA" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="COD_PESSOA" HeaderText="COD" ReadOnly="True" 
                    SortExpression="COD_PESSOA" />
                <asp:BoundField DataField="NOME_PESSOA" HeaderText="NOME" 
                    SortExpression="NOME_PESSOA" />
                <asp:BoundField DataField="SEXO_PESSOA" HeaderText="SEXO" 
                    SortExpression="SEXO_PESSOA" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NumericFirstLast" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString1 %>" 
            DeleteCommand="DELETE FROM [PESSOA] WHERE [COD_PESSOA] = @COD_PESSOA" 
            InsertCommand="INSERT INTO [PESSOA] ([NOME_PESSOA], [SEXO_PESSOA]) VALUES (@NOME_PESSOA, @SEXO_PESSOA)" 
            ProviderName="<%$ ConnectionStrings:masterConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [COD_PESSOA], [NOME_PESSOA], [SEXO_PESSOA] FROM [PESSOA]" 
            UpdateCommand="UPDATE [PESSOA] SET [NOME_PESSOA] = @NOME_PESSOA, [SEXO_PESSOA] = @SEXO_PESSOA WHERE [COD_PESSOA] = @COD_PESSOA">
            <DeleteParameters>
                <asp:Parameter Name="COD_PESSOA" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NOME_PESSOA" Type="String" />
                <asp:Parameter Name="SEXO_PESSOA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NOME_PESSOA" Type="String" />
                <asp:Parameter Name="SEXO_PESSOA" Type="String" />
                <asp:Parameter Name="COD_PESSOA" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="COD_PESSOA" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" GridLines="Horizontal" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="COD_PESSOA" HeaderText="COD_PESSOA" 
                    InsertVisible="False" ReadOnly="True" SortExpression="COD_PESSOA" />
                <asp:BoundField DataField="NOME_PESSOA" HeaderText="NOME" 
                    SortExpression="NOME_PESSOA" />
                <asp:BoundField DataField="SEXO_PESSOA" HeaderText="SEXO" 
                    SortExpression="SEXO_PESSOA" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
