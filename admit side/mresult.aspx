<%@ Page Title="" Language="C#" MasterPageFile="~/admit side/amb.master" AutoEventWireup="true" CodeFile="mresult.aspx.cs" Inherits="admit_side_mresult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
           <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           MANAGE RESULT
         </div><hr />
        <div id="div2" style="height:450px; width:60%; height:200px; text-align:center; padding-left:405px; padding-top:140px;">
             <asp:GridView ID="Gridview1" runat="server" Font-Bold="False" Font-Size="22px" DataKeyNames="result" AutoGenerateColumns="false" Width="60%" Height="100px" OnRowEditing="Gridview1_RowEditing" OnRowCancelingEdit="Gridview1_RowCancelingEdit" OnRowUpdating="Gridview1_RowUpdating"  AllowPaging="true" PageSize="4" >
                <Columns>
                    <asp:TemplateField HeaderText="Result Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DD1" runat="server">
                                <asp:ListItem>True</asp:ListItem>
                                <asp:ListItem>False</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblresult" Text='<%# Eval("result")%>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Change Status">
                    <ItemTemplate>
                        <asp:Button ID="Button1" Text="Change" CommandName="Edit" ToolTip="Edit" Height="30px" Width="100px" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                    </ItemTemplate>
                    <EditItemTemplate >
                        <asp:Button ID="Button2" Text="Update" CommandName="Update" ToolTip="Update" Height="30px" Width="65px" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        <asp:Button ID="Cancel" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Height="30px" Width="65px" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        
                    </EditItemTemplate>
                </asp:TemplateField> 
                    
                </Columns>
                
            </asp:GridView>
        </div>
    </form>
</asp:Content>

