<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approved.aspx.cs" Inherits="Approved" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <!-- bootstrap -->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:GridView ID="listofreservation" HeaderStyle-BackColor="#3AC0F2" onC HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="False" Width="931px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" Visible="false" >
<ItemStyle Width="30px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="fullname" HeaderText="Name"  ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="address" HeaderText="Address" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="checkin" HeaderText="Checkin" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="checkout" HeaderText="Checkout" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="amount" HeaderText="Amount" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:ButtonField  Text="Add" ItemStyle-BackColor="Green" ItemStyle-ForeColor="white" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" BackColor="Green" ForeColor="White" Width="150px"></ItemStyle>
        </asp:ButtonField>
        <asp:ButtonField  Text="Edit" ItemStyle-BackColor="Red" ItemStyle-ForeColor="white" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" BackColor="Blue" ForeColor="White" Width="150px"></ItemStyle>
        </asp:ButtonField>
        <asp:ButtonField  Text="Delete" ItemStyle-BackColor="Blue" ItemStyle-ForeColor="white" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" BackColor="Red" ForeColor="White" Width="150px"></ItemStyle>
        </asp:ButtonField>
    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
</asp:GridView>
            
        </div>
    </form>
</body>
</html>
