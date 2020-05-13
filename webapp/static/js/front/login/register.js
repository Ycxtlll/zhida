

$(document).ready(function () {
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function check() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                document.getElementById("registerBtn").addEventListener('click', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

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

$("#registerBtn").click(function () {
    let loginName = document.getElementById("loginName").value;
    let pass = document.getElementById("password").value;
    let check_p = document.getElementById("check_password").value;
    let user_name = document.getElementById("user_name").value;
    let user_phone = document.getElementById("user_phone").value;
    let user_email = document.getElementById("user_email").value;

    if (user_name === "") {user_name = null;}
    if (user_phone === "") {user_phone = null;}
    if (user_email === "") {user_email = null;}
    console.log(user_name);
    console.log(user_phone);
    console.log(user_email);

    if (pass !== check_p){
        $("#checkP").html("<span style='color: #ff1038;font-size: small;'>两次密码不一致！</span>")
    }
    if (pass === check_p && loginName !== ""){
        $.post(
            "/checkName.do",
            loginName,
            function (data) {
                if (data !== "false"){
                    $("#existName").html("<span style='color: #ff1038;font-size: small;'>该用户名已存在，请重新输入！</span>")
                }else {
                    let user = {"userLoginName":loginName,"userPassword":pass,
                        "userName":user_name,"userPhone":user_phone,"userEmail":user_email};
                    $.post(
                        "/register.do",
                        user,
                        function (data) {
                            // console.log(data)
                            localStorage.setItem("user_id",data);
                            localStorage.setItem("user_login_name",loginName);
                            localStorage.setItem("user_status","0");
                            location.href="/";
                        }
                    );
                }
            }
        );
    }
})