<%@ Page Title="" Language="C#" MasterPageFile="~/user side/umb.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_side_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
        <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           LOGIN
         </div><hr />
        <div id="div2" style=" height: 250px; width: 40%; text-align:center; padding-top:80px; margin-left:360px;  color: #333333; ">
           <table id="table1"  style="text-align:center; height:250px; width:60%;">
               <tr>
                   <td id="td1" style="text-align:left;">
                       PHONE NO
                   </td>
                   <td id="td2" style="text-align:left;" >
                       <asp:TextBox ID="Textphone" runat="server" Height="30px" Width="400px"></asp:TextBox>
                       <asp:HiddenField ID="Hideid" runat="server" />
                   </td>
               </tr>
               <tr>
                    <td  id="td3" style="text-align:left;">
                        EMAIL
                    </td>
                    <td  id="td4" style="text-align:left;">
                        <asp:TextBox ID="Textemail" runat="server"  Height="30px" Width="400px"></asp:TextBox>
                    </td>
               </tr>
               
               <tr>
                    <td  id="td6" style="text-align:left;">
                        PASSWORD
                    </td>
                    <td  id="td7" style="text-align:left;">
                        <asp:TextBox ID="Textpassword" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
               </tr>
               
               
               <tr>
                    
               <%--  <tr>
                    <td  id="td8" style="text-align:left;">
                       C PASSWORD
                    </td>
                    <td  id="td9" style="text-align:left;">
                        <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
               </tr> --%>
               
               
               
               <tr>
                   <td colspan="2" id="td5" style="padding-left:70px;" >
                       <asp:Button ID="Button1" runat="server" Text="Submit" Height="30px" Width="110px" Font-Bold="false" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White" OnClick="Button1_Click" />
                       <input id="reset"style="height:30px; width:100px; background-color:#333333; color:white; border-color:white; height:30px;width:110px;" type="reset" value="Reset" />
                   </td>
               </tr>
               
           </table>
            </div>
        <div style="text-align:center; margin-left:38px;">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">If You Don't Ragister. Click Hear</asp:LinkButton> 
            <br />
            <br />
            <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>
         </div>
        </form>

</asp:Content>

