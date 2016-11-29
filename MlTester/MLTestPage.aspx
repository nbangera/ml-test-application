<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MLTestPage.aspx.cs" Inherits="MlTester.MLTestPage" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:label ID="Label1" runat="server" text="Server"></asp:label> : <asp:TextBox ID="TxtServer" runat="server"></asp:TextBox>

    
    </div>
        Port :
        <asp:TextBox ID="TxtPort" runat="server"></asp:TextBox>
        <br />
        UserName :
        <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
        <br />
        Password :
        <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
        <br />
        Service Name :
        <asp:TextBox ID="TxtService" runat="server"></asp:TextBox>
        <br />
        <br />
        Input :
        <asp:TextBox ID="TxtInput" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        Output :
        <asp:TextBox ID="TxtOutput" runat="server" TextMode="MultiLine" Height="231px" Width="847px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
    </form>
</body>
</html>
