<%@ Page Title="Home Page" Language="C#" %>
<!DOCTYPE HTML>
<html>
    <head runat="server">
        <title>autod leht</title>
    </head>
    <body>
        <h1>Autod xml failid tehtud autodeLisa xslt</h1>
        <form id="form1" runat="server">
            <div>
                <asp:Xml ID="xml" runat="server"
                    DocumentSource="~/Sugu.xml"
                    TransformSource="~/Veebindex.xslt" />
            </div>
        </form>
    </body>
</html>
