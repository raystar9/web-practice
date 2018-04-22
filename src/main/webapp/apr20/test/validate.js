$(document).ready(function () {
    console.log(document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.indexOf(".")));
    $('#myForm').submit(function (e) { 
        if($('#id').val() == ""){
            alert("아이디를 입력하지 않았습니다.");
            $('#id').focus();
            return false;
        } else if($('#pass').val() == ""){
            alert("비밀번호를 입력하지 않았습니다.")
            $('#pass').focus();
            return false;
        } else if($('#jumin1').val().length < 6 || $('#jumin2').val().length < 7){
            alert("주민번호를 제대로 입력하지 않았습니다.")
            $('#jumin1').focus();
            return false;
        } else if($('#email').val() == "" || $('#domain').val() == ""){
            alert("이메일을 입력하지 않았습니다.")
            $('#email').focus();
            return false;
        } else if(!$('input[name="gender"]:checked').length){
            alert("성별이 선택되지 않았습니다.")
            $('#gender1').focus();
            return false;
        } else if($('input[name="hobby"]:checked').length < 2){
            alert("2개 이상의 취미를 선택해주세요.")
            in_hobby1.focus();
            return false;
        } else if($('#post1').val().length < 3 || $('#post2').val().length < 3){
            alert("우편번호가 입력되지 않았습니다.")
            $('#post1').focus();
            return false;
        } else if($('#address').val() == ""){
            alert("주소를 입력하지 않았습니다.")
            $('#address').focus();
            return false;
        }
    });

    $('#idCheckButton').click(function (e) { 
        if($('#id').val() == ""){
            alert("ID를 입력해주세요");
            $('#id').focus();
        } else {
            window.open("idcheck.html", "_blank", "width=300, height=250");
        }
    });

    $('#jumin1').keyup(function (e) { 
        var jumin1 = $('#jumin1');
        if(jumin1.val().length == 6){
            if(!isNaN(Number(jumin1.val()))){
                $('#jumin2').focus();
            } else {
                alert("숫자가 아닌 값이 있습니다.")
                jumin1.val("")
                jumin1.focus();
            }
        }
    });

    $('#jumin2').keyup(function (e) { 
        var jumin2 = $('#jumin2');
        if(jumin2.val().length == 7){
            if(isNaN(Number(jumin2.val()))){
                alert("숫자가 아닌 값이 있습니다.")
                jumin2.val("")
                jumin2.focus();
            }
        }
    });

    $('#sel').change(function (e) { 
        console.log($('#sel').val());
        
        var domain = $('#domain');
        if ($('#sel').val() == "") {
            domain.val("");
            domain.attr("readonly", false);
        } else{
            domain.val($('#sel').val());
            domain.attr("readonly", true);
        }
    });
    
    $('#postSearchButton').click(function (e) { 
        window.open("post.html", "_blank", "width = 300px; height= 250px")
    });
});