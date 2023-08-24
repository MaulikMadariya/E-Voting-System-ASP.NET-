<%@ Page Title="" Language="C#" MasterPageFile="~/admit side/amb.master" AutoEventWireup="true" CodeFile="mcitizen.aspx.cs" Inherits="admit_side_mcitizen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" style=" text-align: center; height: 500px; width: 99%; ">
           <div id="div1" style=" height: 30px; width: 99%; text-align:center; padding-top:10px; font-size:25px; color: #333333" >
           MANAGE CITIZEN
         </div><hr />
        <div id="div2" style="height:450px; width:90%; text-align:center; padding-left:120px; padding-top:24px;">
             <asp:GridView ID="Gridview1" runat="server" Font-Bold="False" Font-Size="20px" DataKeyNames="id" AutoGenerateColumns="false" Width="95%" OnRowEditing="Gridview1_RowEditing" OnRowCancelingEdit="Gridview1_RowCancelingEdit" OnRowUpdating="Gridview1_RowUpdating" OnRowDeleting="Gridview1_RowDeleting" AllowPaging="true" PageSize="4" OnPageIndexChanging="Gridview1_PageIndexChanging1">

               
    
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="lblid" Text='<%# Bind("id")%>' runat="server" />
                    </ItemTemplate>
            
                </asp:TemplateField>

                
                
                <asp:TemplateField HeaderText=" Name">
                    <ItemTemplate>
                        <asp:Label ID="lblname" Text='<%# Eval("name")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" Text='<%# Eval("name")%>' runat="server" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="Lblpassword" Text='<%# Eval("password")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpassword" Text='<%# Eval("password")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="C Password">
                    <ItemTemplate>
                        <asp:Label ID="Lblcpassword" Text='<%# Eval("cpassword")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcpassword" Text='<%# Eval("cpassword")%>' runat="server" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label ID="lblphone" Text='<%# Eval("phone")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtphone" Text='<%# Eval("phone")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="lbladdress" Text='<%# Eval("address")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddress" Text='<%# Eval("address")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" Text='<%# Eval("email")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" Text='<%# Eval("email")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="lblgender" Text='<%# Eval("gender")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtgender" Text='<%# Eval("gender")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>    
                                
                <asp:TemplateField HeaderText="Vote">
                    <ItemTemplate>
                        <asp:Label ID="lblvote" Text='<%# Eval("vote")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtvote" Text='<%# Eval("vote")%>' runat="server" Width="100px"/>
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button ID="Button1" Text="Edit" CommandName="Edit" ToolTip="Edit" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                    </ItemTemplate>
                    <EditItemTemplate >
                        <asp:Button ID="Button2" Text="Update" CommandName="Update" ToolTip="Update" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        <asp:Button ID="Cancel" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                        
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="Button3" Text="Delete" CommandName="Delete" ToolTip="Delete" runat="server" Font-Bold="True" BorderStyle="Outset" BackColor="#333333" BorderColor="White" ForeColor="White"/>
                    </ItemTemplate>
                </asp:TemplateField> 
            </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>

