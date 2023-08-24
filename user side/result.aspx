<%@ Page Title="" Language="C#" MasterPageFile="~/user side/uvote.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="user_side_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
           <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           RESULT
         </div><hr />
        <div id="div2" style="height:450px; width:80%; text-align:center; padding-left:180px; padding-top:6px;">
            <asp:GridView ID="GridView1" runat="server"  PageSize="5"  Width="90%"  AllowPaging="True" AutoGenerateColumns="False" Font-Bold="False" Font-Size="20px" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:ImageField DataImageUrlField="image" HeaderText="Image"  ControlStyle-Height="65px" ControlStyle-Width="65px" />
                    <asp:BoundField DataField="name" HeaderText="Party Name" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:BoundField DataField="tvote" HeaderText="Total Vote" />
                    
                </Columns>
                
            </asp:GridView>
        </div>
    </form>
</asp:Content>

