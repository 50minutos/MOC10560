<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<_001_MVC.Models.Pessoa>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                Cod
            </th>
            <th>
                Nome
            </th>
            <th>
                Sexo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.Cod }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.Cod })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Cod })%>
            </td>
            <td>
                <%: item.Cod %>
            </td>
            <td>
                <%: item.Nome %>
            </td>
            <td>
                <%: item.Sexo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</body>
</html>

