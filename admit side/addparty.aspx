<%@ Page Title="" Language="C#" MasterPageFile="~/admit side/amb.master" AutoEventWireup="true" CodeFile="addparty.aspx.cs" Inherits="admit_side_addparty" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
        <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           ADD PARTY
         </div><hr />
        <div id="div2" style=" height: 400px; width: 80%; text-align:center; padding-top:10px; margin-left:160px;  color: #333333; ">
           <table id="table1"  style="text-align:center; height:400px; width:60%;">
               <tr>
                   <td id="td1" style="text-align:left;">
                       NAME
                   </td>
                   <td id="td2" style="text-align:left;" >
                       <asp:TextBox ID="TextBox1" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                    <td  id="td3" style="text-align:left;">
                        PHONE NO
                    </td>
                    <td  id="td4" style="text-align:left;">
                        <asp:TextBox ID="TextBox2" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                    </td>
               </tr>
               <tr>
                   <td  id="td5" style="text-align:left;">
                       EMAIL
                   </td>
                   <td  id="td6" style="text-align:left;">
                       <asp:TextBox ID="TextBox3" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td7" style="text-align:left;">
                       CITY
                   </td  >
                   <td id="td8" style="text-align:left;">
                       <asp:TextBox ID="TextBox4" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td9" style="text-align:left;">
                       INFORMATION
                   </td>
                   <td  id="td10" style="text-align:left;">
                       <asp:TextBox ID="TextBox5" runat="server" style="height:30px; width:800px;"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td  id="td11" style="text-align:left;">
                       IMAGE
                   </td>
                   <td  id="td12" style="text-align:left;">
                       <asp:FileUpload ID="FileUpload" runat="server" />
                   </td>
               </tr>
               <tr>
                   <td colspan="2"  >
                       
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online %>" SelectCommand="SELECT * FROM [party]"></asp:SqlDataSource>
                       
                      <asp:Button ID="Button1"  runat="server" Text="Add" Height="30px" Width="100px"  BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White" OnClick="Button1_Click" />
                       <input id="Reset1"style="height:30px; width:100px; background-color:#333333; color:white; border-color:white;" type="reset" value="reset" />
                   </td>
               </tr>
               
           </table> 
         </div>
        </form>
</asp:Content>


