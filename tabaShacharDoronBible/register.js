function chkForm() {
    let isValid = true;

    // שם משתמש - חייב להיות לפחות 5 תווים
    let uName = document.getElementById("userName").value.trim();
    if (uName.length < 5) {
        document.getElementById("mUName").value = "שם משתמש חייב להיות לפחות 5 תווים";
        document.getElementById("mUName").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mUName").style.display = "none";
    }

    // סיסמה ואימות סיסמה
    let pw = document.getElementById("pass").value;
    let pw1 = document.getElementById("confirmPass").value;
    if (pw.length < 6) {
        document.getElementById("mPass").value = "סיסמה חייבת להיות לפחות 6 תווים";
        document.getElementById("mPass").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mPass").style.display = "none";
    }

    if (pw !== pw1) {
        document.getElementById("mPassConfirm").value = "סיסמאות אינן תואמות";
        document.getElementById("mPassConfirm").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mPassConfirm").style.display = "none";
    }

    // שם פרטי ושם משפחה - אות ראשונה גדולה
    let fname = document.getElementById("fname").value.trim();
    let lname = document.getElementById("lname").value.trim();

    if (fname.length === 0) {
        document.getElementById("mFname").value = "יש להזין שם פרטי";
        document.getElementById("mFname").style.display = "inline";
        isValid = false;
    } else if (fname.charAt(0) !== fname.charAt(0).toUpperCase()) {
        document.getElementById("mFname").value = "האות הראשונה בשם פרטי חייבת להיות גדולה";
        document.getElementById("mFname").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mFname").style.display = "none";
    }

    if (lname.length === 0) {
        document.getElementById("mLname").value = "יש להזין שם משפחה";
        document.getElementById("mLname").style.display = "inline";
        isValid = false;
    } else if (lname.charAt(0) !== lname.charAt(0).toUpperCase()) {
        document.getElementById("mLname").value = "האות הראשונה בשם משפחה חייבת להיות גדולה";
        document.getElementById("mLname").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mLname").style.display = "none";
    }

    // מספר טלפון - חייב להתחיל ב-05 ולהיות באורך 10 ספרות
    let phone = document.getElementById("phone").value.trim();
    let phoneRegex = /^05\d{8}$/;
    if (!phoneRegex.test(phone)) {
        document.getElementById("mPhone").value = "מספר הטלפון חייב להיות 10 ספרות ולהתחיל ב-05";
        document.getElementById("mPhone").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mPhone").style.display = "none";
    }

    // בדיקת שנת לידה
    let birthYear = parseInt(document.getElementById("yearOfBirth").value);
    let age = 2025 - birthYear;
    if (age < 1 || age > 100) {
        document.getElementById("mYearOfBirth").value = "שנת הלידה אינה תקינה";
        document.getElementById("mYearOfBirth").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("mYearOfBirth").style.display = "none";
    }

    return isValid;
}