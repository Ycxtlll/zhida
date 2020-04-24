// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
    'use strict';
    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
            document.getElementById("feedbackBtn").addEventListener('click', function(event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();

$(document).ready(function () {
    $("#feedbackBtn").click(function () {
        let user_id = localStorage.getItem("user_id");
        let contact_info = document.getElementById("contactInfo").value;
        let content = document.getElementById("feedbackContent").value;
        // console.log(contact_info);
        // console.log(content);
        // console.log(user_id);
        if (user_id === null){
            alert("请先登录！");
            location.href="/login";
        }else {
			if(contact_info!==" "&&content!==""){
				let feedback = {"userId":user_id,"contactInfo":contact_info,"feedbackContent":content};
				$.post(
				  "/feedback.do",
					feedback,
					function (data) {
						console.log(data);
						if (data !== "false"){
							alert("提交成功！");
							location.reload();
						}
					}
				);
			}else{
				return false;
			}    
        }
    });
})