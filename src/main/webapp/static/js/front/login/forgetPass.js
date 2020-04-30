
$(document).ready(function () {

    (function check() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                document.getElementById("forgetPassBtn").addEventListener('click', function(event) {
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
            $("#forgetPassBtn").click();
        }
    };

    $("#pop").popover({
        trigger: 'hover',
        placement: 'right'
    });

});

$("#forgetPassBtn").click(function () {

    let loginName = document.getElementById("loginName").value;
    let pass = document.getElementById("password").value;
    let check_p = document.getElementById("check_password").value;
    let user_name = document.getElementById("user_name").value;
    let user_phone = document.getElementById("user_phone").value;
    let user_email = document.getElementById("user_email").value;

    let userLoginName = {"user_login_name":loginName};
    if (pass !== check_p){
        $("#checkP").html("<span style='color: #ff1038;ont-size: small;'>两次密码不一致！</span>")
    }
    if (loginName !== ""){
        $.post(
            "/checkName.do",
            userLoginName,
            function (data) {
                // console.log(data)
                if (data === "false"){
                    $("#nullID").html("<span style='color: #ff1038;ont-size: small;'>此用户名不存在！</span>")
                }else {
                    let user = {"userId":data,"userPassword":pass,"userName":user_name,"userPhone":user_phone,"userEmail":user_email};
                    $.post(
                        "/forgetPass_updatePass.do",
                        user,
                        function (data) {
                            if (data === "failed"){
                                alert("身份验证失败，请确认填写信息是否正确。")
                            }else {
                                //console.log(data);
                                location.href="/login";
                            }
                        }
                    )
                }
            }
        )
    }
})