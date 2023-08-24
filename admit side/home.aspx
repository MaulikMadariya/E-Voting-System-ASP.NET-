<%@ Page Title="" Language="C#" MasterPageFile="~/admit side/amb.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admit_side_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
    <div id="div1" style="padding-top:50px;"> 
              <asp:Image ID="image1" runat="server" ImageUrl="~/image/1.jpg" Height="400px" Width="400px"></asp:Image>
        
                <asp:Image ID="image2" runat="server" ImageUrl="~/image/2.jpg" Height="400px" Width="400px"></asp:Image>
        
            <asp:Image id="image3" runat="server" ImageUrl="~/image/3.jpg" Height="400px" Width="400px"></asp:Image>
     </div>
        </form>
        
</asp:Content>

