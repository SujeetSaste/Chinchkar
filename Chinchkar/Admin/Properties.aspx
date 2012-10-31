<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="Properties.aspx.cs" Inherits="Chinchkar.Admin.Properties" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-unit">
    
        <asp:TabContainer ID="tabPropertyMaster" runat="server" ActiveTabIndex="0" ScrollBars="Auto">
            <asp:TabPanel runat="server" HeaderText="Property Details" ID="propertyMasterUpdate">
                <contenttemplate>
                    <asp:UpdatePanel ID="upMsgPropertyMaster" runat="server">
                        <ContentTemplate>
                            <asp:Label class="alert alert-info" ID="lblMsgPropertyMaster" runat="server" Visible="false"
                                Width="100%"></asp:Label></ContentTemplate>
                    </asp:UpdatePanel>
                    <div align="center" style="width: 100%">
                        <h4>
                            Property Master</h4>
                        <br />
                        <br />
                    </div>
                    <asp:Panel ID="upPropertyUpd" runat="server">
                        <table class="table table-bordered">
                            <tr>
                                <td style="width: 23%">
                                    <code>Mode</code>
                                </td>
                                <td style="width: 77%">
                                    <asp:UpdatePanel ID="UpdatePanel17" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlMode" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rFMode" InitialValue="0" ControlToValidate="ddlMode"
                                                runat="server" ErrorMessage="*" ValidationGroup="insert"></asp:RequiredFieldValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Type </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel18" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlType" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rFType" InitialValue="0" ControlToValidate="ddlType"
                                                runat="server" ErrorMessage="*" ValidationGroup="insert"></asp:RequiredFieldValidator>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>First Name </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="rFFirstName" runat="server" ErrorMessage="*" ValidationGroup="insert" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Last Name </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="rfLastName" runat="server" ErrorMessage="*" ValidationGroup="insert" ControlToValidate="txtLastName"></asp:RequiredFieldValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Email </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="rFEmail" runat="server" ErrorMessage="*" ValidationGroup="insert" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                    ID="reFieldOfficerEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    Display="Dynamic" SetFocusOnError="True" ValidationGroup="insert" CssClass="alert alert-danger">Enter Valid Email.</asp:RegularExpressionValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Mobile </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtMobilNao" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                ID="rFMobile" runat="server" ErrorMessage="*" ValidationGroup="insert" ControlToValidate="txtMobilNao"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                    ID="treFieldOfficerMobile" runat="server" ControlToValidate="txtMobilNao" ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$"
                                                    Display="Dynamic" SetFocusOnError="True" ValidationGroup="insert" CssClass="alert alert-danger">Enter Valid Mobile No.</asp:RegularExpressionValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Telephone </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>City </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlCity" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged"
                                                runat="server" AutoPostBack="True" Width="150px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rFCity" InitialValue="0" ControlToValidate="ddlCity"
                                                runat="server" ErrorMessage="*" ValidationGroup="insert"></asp:RequiredFieldValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Locality </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel16" runat="server">
                                        <ContentTemplate>
                                            <asp:RadioButtonList ID="rbtLocality" runat="server" RepeatDirection="Horizontal"
                                                RepeatLayout="Flow">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                                ValidationGroup="insert" ControlToValidate="rbtLocality"></asp:RequiredFieldValidator>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ddlCity" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Min Budget </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlMinBudget" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rFMinBudget" InitialValue="Min" runat="server" ErrorMessage="*"
                                                ValidationGroup="insert" ControlToValidate="ddlMinBudget"></asp:RequiredFieldValidator>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ddlType" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Max Budget </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlMaxBudget" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rFMaxBudget" InitialValue="Max" runat="server" ErrorMessage="*"
                                                ValidationGroup="insert" ControlToValidate="ddlMaxBudget"></asp:RequiredFieldValidator>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ddlType" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Posted By</code>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rbtListPostedBy" runat="server" RepeatDirection="Horizontal"
                                        RepeatLayout="Flow">
                                        <asp:ListItem Value="1">Owner</asp:ListItem>
                                        <asp:ListItem Value="2">Builder</asp:ListItem>
                                        <asp:ListItem Value="3">Dealer</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Details </code>
                                </td>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel15" runat="server">
                                        <ContentTemplate>
                                            <CKEditor:CKEditorControl ValidationGroup="insert" ID="txtDetails" runat="server"
                                                ToolbarFull="Bold|Italic|Underline|Strike|-|Subscript|Superscript
                            NumberedList|BulletedList|-|Outdent|Indent|Blockquote|CreateDiv
                            JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock
                            BidiLtr|BidiRtl
                            Link|Unlink|Anchor
                            Table|HorizontalRule|Smiley|SpecialChar|PageBreak|Iframe
                            Styles|Format|Font|FontSize
                            TextColor|BGColor" Height="100px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </CKEditor:CKEditorControl>
                                            <asp:RequiredFieldValidator ID="rFDetails" runat="server" ErrorMessage="*" ValidationGroup="insert"
                                                ControlToValidate="txtDetails"></asp:RequiredFieldValidator></ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Property Video</code>
                                    <br />
                                    <code>(Paste YouTube Link)</code>
                                </td>
                                <td id="Txt">
                                    <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="txtlink" runat="server" Width="461px"></asp:TextBox>
                                            <a href="https://www.youtube.com" target="_blank">Upload Video</a>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <code>Upload Photos</code>
                                </td>
                                <td id="Tx">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox ID="TxtPicasaLink" runat="server" Width="461px"></asp:TextBox>
                                            <a href="https://picasaweb.google.com" target="_blank">Upload Picture</a>
                                            <br />
                                            <asp:Literal Visible="true" ID="LtrPicasaLink" runat="server"></asp:Literal>
                                            <asp:Label ID="Label1" runat="server" Visible="true"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &#160;
                                </td>
                                <td>
                                    <asp:Button ID="BtnClear" runat="server" CssClass="btn" OnClick="BtnClear_Click"
                                        Text="Clear" />
                                    &#160;
                                    <asp:Button ID="BtnInsert" runat="server" CssClass="btn btn-primary" OnClick="BtnInsert_Click"
                                        Text="Save Changes" ValidationGroup="insert" />
                                    &#160;
                                    <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-primary" OnClick="BtnUpdate_Click"
                                        Text="Update Changes" ValidationGroup="insert" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </contenttemplate>
            </asp:TabPanel>
            <asp:TabPanel runat="server" HeaderText="Search" ID="TabPanel2" ScrollBars="Auto"
                Width="100%">
                <contenttemplate>
                    <asp:UpdatePanel ID="upMsgMeetingReminder" runat="server">
                        <ContentTemplate>
                            <asp:Label class="alert alert-info" ID="lblMsgReminder" runat="server" Visible="false"
                                Width="100%"></asp:Label></ContentTemplate>
                    </asp:UpdatePanel>
                    <div align="center">
                        <h4>
                            Search Property</h4>
                        <br />
                    </div>
                    <table style="padding: 15px; border: thin solid #dddddd;">
                        <tr>
                            <td>
                                &#160;<code>First Name </code>&nbsp;
                            </td>
                            <td>
                                &#160;&nbsp;<asp:TextBox ID="txtSearchFirstName" runat="server"></asp:TextBox>
                                &#160;&nbsp;<code>Last Name </code>&nbsp;
                            </td>
                            <td>
                                &#160;&nbsp;<asp:TextBox ID="txtSearchLastName" runat="server"></asp:TextBox>&#160;&nbsp;
                            </td>
                            <td>
                                &#160;&nbsp;<code>Mobile </code>&nbsp;
                            </td>
                            <td>
                                &#160;&nbsp;<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>&#160;&nbsp;
                            </td>
                             <td>
                                &#160;&nbsp;<asp:Button ID="BtnSearch" runat="server" CssClass="btn btn-primary"
                                    OnClick="BtnSearch_Click" Text="Search" />&#160;&#160;
                            </td>
                        </tr>
                       
                    </table>
                    <asp:GridView ID="grvSearchProperty" runat="server" CellPadding="4" ForeColor="#333333"
                        AllowPaging="True" AutoGenerateColumns="False" EmptyDataText="--No Messages Received--"
                        CssClass="table table-bordered" OnSelectedIndexChanged="grvSearchProperty_SelectedIndexChanged"
                        Width="100%" OnPageIndexChanging="grvSearchProperty_PageIndexChanging" OnRowDeleting="grvSearchProperty_RowDeleting"
                        PageSize="20" DataKeyNames="ReqId">
                        <Columns>
                            <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="Delete" SortExpression="ID">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnbBtnDelete" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this Record?');"
                                        runat="server">Delete</asp:LinkButton></ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ReqId" Visible="False" HeaderText="ReqId" ReadOnly="True"
                                SortExpression="ReqId" />
                            <asp:BoundField DataField="PropertyMode" HeaderText="Property Mode" ReadOnly="True"
                                SortExpression="PropertyMode" />
                            <asp:BoundField DataField="PropertyType" HeaderText="PropertyType" ReadOnly="True"
                                SortExpression="PropertyType" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" ReadOnly="True" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" ReadOnly="True" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" SortExpression="Mobile" />
                            <asp:BoundField DataField="Telephone" HeaderText="Telephone" ReadOnly="True" SortExpression="Telephone" />
                            <asp:BoundField DataField="CityName" HeaderText="City Name" ReadOnly="True" SortExpression="CityName" />
                            <asp:BoundField DataField="Locality" HeaderText="Locality" ReadOnly="True" SortExpression="Locality" />
                            <asp:BoundField DataField="MinBudget" HeaderText="MinBudget" ReadOnly="True" SortExpression="MinBudget" />
                            <asp:BoundField DataField="MaxBudget" HeaderText="MaxBudget" ReadOnly="True" SortExpression="MaxBudget">
                                <FooterStyle HorizontalAlign="Right"></FooterStyle>
                                <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField Visible="False" DataField="details" HeaderText="details" ReadOnly="True"
                                SortExpression="details" />
                            <asp:BoundField Visible="False" DataField="link" HeaderText="link" ReadOnly="True"
                                SortExpression="link" />
                            <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                        </Columns>
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="False" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                </contenttemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </div>
</asp:Content>
