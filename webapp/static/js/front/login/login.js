

$(document).ready(function () {
// Example starter JavaScript for disabling form submissions if there are invalid fields
    (function check() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                document.getElementById("loginBtn").addEventListener('click', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    }());

    document.onkeydown=function(event){
        const e = event || window.event || arguments.callee.caller.arguments[0];

        if(e && e.keyCode===13){ // enter 键
            //要做的事情
            // check();
            $("#loginBtn").click();
        }
    };

    $("#pop").popover({
        trigger: 'hover',
        placement: 'right'
    });

});

$("#loginBtn").click(function () {

    const loginName = document.getElementById("loginName").value;
    const password = document.getElementById("password").value;
    const user = {"userLoginName": loginName, "userPassword": password};

    $.post(
        "/login.do",
        user,
        function (data) {
            // console.log(data)
            if (data === null){
                $("#existID").html("<span style='color: #ff1038;font-size: small;'>用户名或密码错误！</span>")
            }else {
                localStorage.setItem("user_id",data["userId"]);
                localStorage.setItem("user_login_name",data["userLoginName"]);
                localStorage.setItem("user_status",data["userStatus"]);
                if (data["userStatus"] === 2){
                    location.href="/showUser.do";
                }else {
                    location.href="/";
                }
            }

        }
    );

});

