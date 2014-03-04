<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yahong's Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="FormatWeb.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="inputmodel">
    
        <h1>Yahong's Mortgage Calculator</h1>
        <br />
     
        <h3>Loan Amount:
        <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
         </h3>         
        <h3><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please enter the loan amount"></asp:RequiredFieldValidator>
         </h3>         
        <br /><br />      
        
        <h3>Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        </h3>
        <h3><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter the annual interest %"></asp:RequiredFieldValidator>
        </h3>
        <br /><br />

       <h3> Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox></h3>
        <h3><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter the number of years of the loan term"></asp:RequiredFieldValidator>
        </h3>
        <br /><br />
        <h3>
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="86px" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="86px" />
        </h3>
        <br />
        <br />
        <%If Not IsPostBack Then%>

             <p>Welcome to my calculator. Please complete the above fields to get your monthly payment and loand repayment schedule cacluated for you. </p>
            
        <% Else%>

        <br /> 

        <div id="new" runat="server" >

        <h3> Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></h3>
 

        <asp:GridView ID="loanGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >

        <AlternatingRowStyle CssClass="alt" BorderColor="#660033" BackColor="White"/>

            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>

        </div>

        <br /> 

        <%end if %> 

        
        </div>
    </form>
</body>
</html>
