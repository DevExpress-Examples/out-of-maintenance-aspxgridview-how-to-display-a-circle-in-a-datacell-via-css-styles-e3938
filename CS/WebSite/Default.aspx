<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .circleGreen, .circleGray
        {
            width: 10px;
            height: 10px;
            border-radius: 50%;
        }
        .circleGreen
        {
            background: Green;
        }
        .circleGray
        {
            background-color: LightGray;
        }
        .circleBlack
        {
            width: 6px;
            height: 6px;
            border-radius: 50%;
            background-color: Black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="ProductID">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                <DataItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <div class='circleBlack'>
                                </div>
                            </td>
                            <td>
                                <dx:ASPxLabel ID="lb" runat="server" Text='<%# Bind("ProductName") %>'>
                                </dx:ASPxLabel>
                            </td>
                        </tr>
                    </table>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                <DataItemTemplate>
                    <div class='<%# (bool)Eval("Discontinued") ? "circleGreen" : "circleGray" %>'>
                    </div>
                </DataItemTemplate>
            </dx:GridViewDataCheckColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
