<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="tabaShacharDoronBible.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="register.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="register" id="register" runat="server" onsubmit="return chkForm()">
        
        <!-- שם משתמש -->
        <input type="text" name="userName" id="userName" placeholder="שם משתמש" required />
        <input type="text" id="mUName" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

        <!-- סיסמה -->
        <input type="password" name="pass" id="pass" placeholder="סיסמה" required />
        <input type="password" name="confirmPass" id="confirmPass" placeholder="אימות סיסמה" required />
        <input type="text" id="mPass" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <input type="text" id="mPassConfirm" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

        <!-- שם פרטי -->
        <input type="text" id="fname" name="fname" placeholder="שם פרטי" required />
        <input type="text" id="mFname" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

        <!-- שם משפחה -->
        <input type="text" id="lname" name="lname" placeholder="שם משפחה" required />
        <input type="text" id="mLname" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

        <!-- אימייל -->
        <input type="email" id="email" name="email" placeholder="אימייל" required />
        <br /><br />

        <!-- מגדר -->
        <input type="radio" id="male" name="gender" value="male" required /> זכר
        <input type="radio" id="female" name="gender" value="female" required /> נקבה
        <br /><br />

        <!-- מספר טלפון -->
        <input type="tel" id="phone" name="phone" placeholder="מספר טלפון (05XXXXXXXX)" required />
        <input type="text" id="mPhone" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

        <!-- שנת לידה -->
        <input type="number" id="yearOfBirth" name="yearOfBirth" min="1925" max="2024" placeholder="שנת לידה" required />
        <input type="text" id="mYearOfBirth" size="30" style="display: none; background-color: Silver; font-weight:bold;" disabled />
        <br /><br />

         <!-- עיר -->
        <input type="text" id="city" name="city" placeholder="עיר" required />
        <br /><br />

        <!-- תחביבים -->
        <input type="text" id="hob1" name="hob1" placeholder="תחביב 1" />
        <input type="text" id="hob2" name="hob2" placeholder="תחביב 2" />
        <input type="text" id="hob3" name="hob3" placeholder="תחביב 3" />
        <input type="text" id="hob4" name="hob4" placeholder="תחביב 4" />
        <input type="text" id="hob5" name="hob5" placeholder="תחביב 5" />
        <br /><br />

        <input type="submit" value="שלח" />
        <input type="reset" value="אפס" />
    </form>
    <%=msg %>
</asp:Content>
