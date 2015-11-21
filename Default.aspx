<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            background-color: #99CCFF;
            font-weight: 700;
            font-size: large;
        }
        .auto-style1 {
            font-size: x-large;
            color: #FF0000;
            text-align: center;
        }
        .auto-style2 {
            background-color: #99CCFF;
            font-weight: 700;
            font-size: medium;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FF0000;
            text-align: left;
        }
        .auto-style5 {
            width: 284px;
        }
        .auto-style6 {
            width: 284px;
            text-align: left;
        }
        .auto-style7 {
            width: 284px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 209px;
            color: #FF0000;
        }
        .auto-style10 {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <div class="auto-style3">
            <asp:ImageButton ID="titleImageButton" runat="server" Height="115px" ImageUrl="~/movie_logo.jpg" OnClick="ImageButton1_Click" Width="276px" />
            <span class="auto-style1">SmartPhone Video Rental App</span><br />
            <br />
            <br />
        </div>
        <table style="margin:auto;">
            <tr>
                <td class="auto-style6"><span class="auto-style4">Rental Details:</span> </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Video Type:</td>
                <td>
                    <asp:DropDownList ID="videoTypeDropDownList" runat="server" OnSelectedIndexChanged="videoTypeDropDownList_SelectedIndexChanged">
                        <asp:ListItem>Animation</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>TV Series</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10">
                    <asp:Image ID="Image1" runat="server" Height="153px" ImageUrl="~/Action.jpg" Width="257px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Number of Videos:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="nbVideoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Number of Days:</td>
                <td>
                    <asp:TextBox ID="nbDaysTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:CheckBox ID="creditCard" runat="server" Text="Credit Card" />
        <br />
        <br />
        <asp:Button ID="calculateButton" runat="server" OnClick="calculateButton_Click" Text="Calculate" />
        <br />
        <br />
        <table style="margin:auto;">
            <tr>
                <td class="auto-style9" style="text-align: left">Amount to Pay:</td>
                <td>
                    <asp:TextBox ID="amountPayTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
