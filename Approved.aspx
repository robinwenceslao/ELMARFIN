<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approved.aspx.cs" Inherits="Approved" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:GridView ID="listofreservation" HeaderStyle-BackColor="#3AC0F2" onC HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" Visible="false" />
        <asp:BoundField DataField="fullname" HeaderText="Name" ItemStyle-Width="150" />
        <asp:BoundField DataField="address" HeaderText="Address" ItemStyle-Width="150" />
        <asp:BoundField DataField="checkin" HeaderText="Checkin" ItemStyle-Width="150" />
        <asp:BoundField DataField="checkout" HeaderText="Checkout" ItemStyle-Width="150" />
        <asp:BoundField DataField="amount" HeaderText="Amount" ItemStyle-Width="150" />
        <asp:ButtonField  Text="Approve" ItemStyle-BackColor="Green" ItemStyle-ForeColor="white" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center"/>
        <asp:ButtonField  Text="Deny" ItemStyle-BackColor="Red" ItemStyle-ForeColor="white" ItemStyle-Width="150" ItemStyle-HorizontalAlign="Center" />
    </Columns>
</asp:GridView>
            
        </div>
    </form>
</body>
</html>
