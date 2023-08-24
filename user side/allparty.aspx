<%@ Page Title="" Language="C#" MasterPageFile="~/user side/umb.master" AutoEventWireup="true" CodeFile="allparty.aspx.cs" Inherits="user_side_allparty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
           <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           ALL PARTY
         </div><hr />
        <div id="div2" style="height:450px; width:90%; text-align:center; padding-left:120px; padding-top:24px;">
            <asp:GridView ID="GridView1" runat="server"  PageSize="3"  Width="90%"  AllowPaging="True" AutoGenerateColumns="False" Font-Bold="False" Font-Size="20px" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:ImageField DataImageUrlField="image" HeaderText="Image"  ControlStyle-Height="100px" ControlStyle-Width="100px" />
                    <asp:BoundField DataField="name" HeaderText="Party Name" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:BoundField DataField="details" HeaderText="details" />
                    
                </Columns>
                
            </asp:GridView>
        </div>
    </form>
</asp:Content>

