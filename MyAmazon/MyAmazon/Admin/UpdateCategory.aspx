﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateCategory.aspx.cs" Inherits="MyAmazon.Admin.UpdateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
  <asp:Label ID="lblTitle" runat="server" Style="font-weight:700 ">All Categories</asp:Label> 
     
     <hr />
          <br />
   
        Enter Old Category Name Here:   <asp:TextBox ID="TextBoxUpdatingCategory1" runat="server"></asp:TextBox> &nbsp&nbsp
          Enter New Category Name Here:   <asp:TextBox ID="TextBoxUpdatingCategory2" runat="server"></asp:TextBox> &nbsp&nbsp
          <asp:Button ID="UpdatingCategory" runat="server" Text="Update" OnClick="UpdateTheCategory" />
          <br />
                    <br />  
         
  </div>


    <table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;">
    <tr>
<td align="center">
<asp:GridView ID="gvAvailableCategories" runat="server"
     BackColor="White" BorderColor="White" BorderStyle="Ridge" Borderwidth="2px"
     CellPadding="3" CellSpacing="1" GridLines="None">
<FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
<PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
 <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F1F1F1" />
<SortedAscendingHeaderStyle BackColor="#594839C" /> 
<SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
</td>
</tr>
</table>


</asp:Content>
