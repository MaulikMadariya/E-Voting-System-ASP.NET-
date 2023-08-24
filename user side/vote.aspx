<%@ Page Title="" Language="C#" MasterPageFile="~/user side/uvote.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="vote.aspx.cs" Inherits="user_side_vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2" style=" text-align: center; height: 500px; width: 99%; ">
        <div id="div5" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           VOTE PAGE
         </div><hr />
                 <div id="div6" style="height:450px; width:80%; text-align:center; padding-left:180px; padding-top:6px;">
            <asp:GridView ID="GridView1" runat="server"  PageSize="5"  Width="90%"  AllowPaging="True" AutoGenerateColumns="False" Font-Bold="False" Font-Size="20px" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Party Id" ItemStyle-HorizontalAlign="Center" />                    
                    <asp:ImageField DataImageUrlField="image" HeaderText="Party Image"  ControlStyle-Height="65px" ControlStyle-Width="65px" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="name" HeaderText="Party Name" ItemStyle-HorizontalAlign="Center" />
                    <asp:TemplateField HeaderText="Vote" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                      <%--   <asp:Button ID="btnvote" Text="VOTE"  Height="40px" Width="100px" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White" OnClick="btnvote_Click"/>--%>
                        <asp:Button ID="btnvote" runat="server"  CommandName="Select" Text="VOTE" Height="40px" Width="100px" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"  CommandArgument="<%# Container.DataItemIndex %>"  />
                    </ItemTemplate>
                        </asp:TemplateField>
                    
                </Columns>
                
            </asp:GridView>
        </div>
                 </form>
</asp:Content>

