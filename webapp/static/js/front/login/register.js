// // Example starter JavaScript for disabling form submissions if there are invalid fields
// (function check() {
//     'use strict';
//     window.addEventListener('load', function() {
//         // Fetch all the forms we want to apply custom Bootstrap validation styles to
//         var forms = document.getElementsByClassName('needs-validation');
//         // Loop over them and prevent submission
//         var validation = Array.prototype.filter.call(forms, function(form) {
//             document.getElementById("registerBtn").addEventListener('click', function(event) {
//                 if (form.checkValidity() === false) {
//                     event.preventDefault();
//                     event.stopPropagation();
//                 }
//                 form.classList.add('was-validated');
//             }, false);
//         });
//     }, false);
// })();

$(document).ready(function () {

    document.onkeydown=function(event){
        const e = event || window.event || arguments.callee.caller.arguments[0];
        if(e && e.keyCode===13){ // enter 键
            //要做的事情
            // check();
            $("#registerBtn").click();
        }
    };

    $("#pop").popover({
        trigger: 'hover',
        placement: 'right'
    });

});

// $("#registerBtn").click(function (event) {
//     let loginName = document.getElementById("loginName").value;
//     let pass = document.getElementById("password").value;
//     let check_p = document.getElementById("check_password").value;
//     let user_name = document.getElementById("user_name").value;
//     let user_phone = document.getElementById("user_phone").value;
//     let user_email = document.getElementById("user_email").value;
//
//     if (user_name === "") {user_name = null;}
//     if (user_phone === "") {user_phone = null;}
//     if (user_email === "") {user_email = null;}
//     console.log(user_name);
//     console.log(user_phone);
//     console.log(user_email);
//
//
//     if (pass === check_p && loginName !== ""){
//         $.post(
//
//         )
//     }else {
//         checkPass()
//     }
// })

const lName = $("#loginName")
const pass = $("#password")
const cpass = $("#check_password")
const uname = $("#user_name")
const uphone = $("#user_phone")
const uemail = $("#user_email")

const enamef = $("#existName")
const passf = $("#pass")
const cpassf = $("#checkP")
const cphonef = $("#checkPh")
const cemailf = $("#checkEm")

function checkUser() {
    let loginName = document.getElementById("loginName").value;
    let data = {"userName":loginName};
    $.post(
        "/checkName.do",
        data,
        function (result) {
            if (result !== "ok"){
                lName.removeClass("is-valid")
                lName.addClass("is-invalid")
                enamef.html("<span style='color: #ff1038;font-size: small;'>该用户名已经存在，请登录！</span>")
            }else {
                lName.removeClass("is-invalid")
                lName.addClass("is-valid")
                enamef.html("")

            }
        }
    ).fail(function () {
        console.log("required error")
    })

}

function checkCode() {
    if (pass.val()===""){
        pass.removeClass("is-valid")
        pass.addClass("is-invalid")
        passf.html("<span style='color: #ff1038;font-size: small;'>密码不能为空！</span>")
    }else {
        pass.removeClass("is-invalid")
        pass.addClass("is-valid")
        passf.html("")
    }
}

function checkPass() {
    let passv = pass.val()
    let check_pv = cpass.val()

    if (passv !== check_pv){
        pass.removeClass("is-valid")
        cpass.removeClass("is-valid")
        pass.addClass("is-invalid")
        cpass.addClass("is-invalid")
        cpassf.html("<span style='color: #ff1038;font-size: small;'>两次密码不一致！</span>")
        return false
    }else {
        pass.removeClass("is-invalid")
        cpass.removeClass("is-invalid")
        cpass.addClass("is-valid")
        pass.addClass("is-valid")
        cpassf.html("")
        return true
    }
}

function checkPhone(){
    uphone.attr("required")
    let phone = uphone.val();
    let phoneReg = /^[1][3,4,5,7,8][0-9]{9}$/;
    let flag = true
    if (!phoneReg.test(phone)){
        uphone.removeClass("is-valid")
        uphone.addClass("is-invalid")
        cphonef.html("<span style='color: #ff1038;font-size: small;'>手机号码格式不正确，请重新输入!</span>")
        flag = false
    }else {
        uphone.removeClass("is-invalid")
        uphone.addClass("is-valid")
        cphonef.html("")
    }
    return flag
}

function checkEmail(){
    uemail.attr("required")
    let email = uemail.val();
    let emailReg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
    let flag = true
    if (!emailReg.test(email)){
        uemail.removeClass("is-valid")
        uemail.addClass("is-invalid")
        cemailf.html("<span style='color: #ff1038;font-size: small;'>邮箱格式不正确，请重新输入!</span>")
        flag = false
    }else {
        uemail.removeClass("is-invalid")
        uemail.addClass("is-valid")
        cemailf.html("")
    }
    return flag
}

$("#registerBtn").click(function () {
    if (lName.val()!=="" && pass.val()!=="" && cpass.val()!==""){
        if (lName.hasClass("is-valid") && checkPass()){
            lnamev = lName.val();
            passv = pass.val();

            unamev = uname.val();
            uphonev = uphone.val();
            uemailv = uemail.val();
            if (unamev === ""){
                unamev = null
            }
            if (uphonev === ""){
                uphonev = null
            }
            if (uemailv === ""){
                uemailv = null
            }
            user = {"userLoginName":lnamev, "userPassword":passv, "userName":unamev,
                "userPhone":uphonev, "userEmail":uemailv}
            $.post(
                "/register.do",
                user,
                function (data) {
                    localStorage.setItem("user_id",data);
                    localStorage.setItem("user_login_name",lnamev);
                    localStorage.setItem("user_status","0");
                    location.href="/";
                }
            ).fail(function () {
                console.log("request error!")
            })
        }else {
            checkUser()
            checkPass()
        }
    }else {
        if (lName.val()===""){
            lName.removeClass("is-valid")
            lName.addClass("is-invalid")
            enamef.html("<span style='color: #ff1038;font-size: small;'>用户名不能为空！</span>")
        }else {
            lName.removeClass("is-invalid")
            lName.addClass("is-valid")
            enamef.html("")
        }
        checkCode();
        if (cpass.val()===""){
            cpass.removeClass("is-valid")
            cpass.addClass("is-invalid")
            cpassf.html("<span style='color: #ff1038;font-size: small;'>确认密码不能为空！</span>")
        }else {
            cpass.removeClass("is-invalid")
            cpass.addClass("is-valid")
            cpassf.html("")
        }
    }
})