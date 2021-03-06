<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
        .container {
            text-align: center;
            margin-top: 50px;
        }
        .join {
            position: relative;
            width:300px;
            margin: 0 auto;
        }
        .social > a {
            display: block;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        #mailCfrm, input[type=submit] {
            width: 300px;
            height: 35px;
            color: white;
            font-weight: bold;
            background-color: #ec523f;
            border: 0;
        }
        input, textarea {
            width: 300px;
            height: 35px;
            padding: 5px;
            box-sizing: border-box;
        }
        textarea { 
            height:100px; 
            resize:none;
        }
        input:focus, textarea:focus {
            outline:none;
        }
        input[type=checkbox] {
            width: 15px;
            height: 15px;
        }
        select {
            width: 300px;
            height: 35px;
            padding: 5px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }
        .inputMsg, .chkMsg {
            display: inline-block;
            width: 100%;
            height: 20px;
            text-align: left;
            padding-left: 5px;
            font-size: 0.9em;
            color: cornflowerblue;
        }
        .legend {
            display: inline-block;
            width: 100%;
            text-align: left;
            font-weight: bold;
            padding-left: 5px;
            font-size: 0.8em;
        }
        formgroup {
            display:none;
        }
        input[type=radio]{
            display: none;
        }
        input[type=radio]+label{
            display: inline-block;
            box-sizing: border-box;
            height: 35px;
            width: 96px;
            border: 1px solid #aaa;
            line-height: 35px;
            text-align: center;
            font-weight:bold;
            font-size:13px;
        }
        input[type=radio]:checked+label{
            background-color: #333;
            color: #fff;
        }
        #postcode {
            float: left;
            width:61%;
            margin-bottom: 5px;
        }
        #findCode {
            float: right;
            width: 38%;
        }
        #roadAddress {
            margin-bottom: 5px;
        }
        .elementChk {
            text-align: left;
        }
        .elementChk > label {
            display:inline-block; 
            width:70px;
            font-size: 0.9em;
        }
        .social {
        	margin-top: 30px;
        }
    </style>
</head>
<body>
	<%@ include file = "/WEB-INF/views/common/header.jsp" %>
    <div class="container">
        <h2>????????????</h2>          	
        <div class="join">
            <form id="joinForm" action="/joinProcessing.do" method="post" enctype="multipart/form-data">
                <div class="element">
                    <span class="legend">?????????</span>
                    <input type="email" name="email" placeholder="?????????">
                    <span class="inputMsg"></span>
                </div>
                <formgroup id="restForm">
                    <div class="element">
                        <span class="legend">????????????</span>
                        <input type="password" name="memberPw" placeholder="??????, ?????? ?????? 8??? ?????? 30??? ??????">
                        <span class="inputMsg"></span>
                    </div>
                    <div class="element">
                        <span class="legend">???????????? ??????</span>
                        <input type="password" name="memberPw2" placeholder="???????????? ??????">
                        <span class="inputMsg"></span>
                    </div>
                    <div class="element">
                        <span class="legend">??????(?????????)</span>
                        <input type="text" name="memberNick" placeholder="?????? 40???, ?????? 13??? ??????">
                        <span id="namechk" class="inputMsg"></span>
                    </div>

                    <div class="element">
                        <span class="legend">??????</span>
                        <select name="age">
                            <option value="10">10??? ??????</option>
                            <option value="20">20???</option>
                            <option value="30">30???</option>
                            <option value="40">40???</option>
                            <option value="50">50???</option>
                            <option value="60">60??? ??????</option>
                            <option value="0">???????????? ??????</option>
                        </select> 
                    </div>         
                    
                    <div class="element">
                        <span class="legend">??????</span>
                        <input type="radio" id="M" name="gender" value="M"><label for="M">??????</label>
                        <input type="radio" id="F" name="gender" value="F"><label for="F">??????</label>
                        <input type="radio" id="N" name="gender" value="N" checked><label for="N">???????????? ??????</label>
                        <span class="inputMsg"></span>
                    </div>
                    
                    <div class="element">
                        <span class="legend">??????</span>
                        <input type="text" id="postcode" placeholder="????????????" readonly><input type="button" id="findCode" onclick="findPCode()" value="???????????? ??????"><br>
                        <input type="text" id="roadAddress" placeholder="???????????????" readonly>
                        <span id="guide" style="color:#999;display:none"></span>
                        <input type="text" id="detailAddress" placeholder="????????????">
                        <span class="inputMsg"></span>
                    </div>

                    <div class="elementChk">
                        <span class="legend">????????????(3??? ??????)</span>
                        <label><input type="checkbox" name="hobby" value="1">??????</label>
                        <label><input type="checkbox" name="hobby" value="2">??????</label>
                        <label><input type="checkbox" name="hobby" value="3">??????</label>
                        <label><input type="checkbox" name="hobby" value="4">??????</label>
                        <br>
                        <label><input type="checkbox" name="hobby" value="5">??????</label>
                        <label><input type="checkbox" name="hobby" value="6">??????</label>
                        <label><input type="checkbox" name="hobby" value="7">???</label>
                        <label><input type="checkbox" name="hobby" value="8">??????</label>
                        <span class="chkMsg"></span>
                    </div>

                    <div class="element">
                        <span class="legend">????????????(600??? ??????)</span>
                        <textarea name="intro">????????????</textarea>
                        <span class="inputMsg"></span>
                    </div>

                    <div class="element">
                        <span class="legend">????????? ??????</span>
                        <input type="file" name="propimg">
                        <span class="inputMsg"></span>
                    </div>

                    <input type="submit" value="?????? ??????" onclick="return joinCheck()">
                </formgroup>
                
                <button type="button" id="mailCfrm">????????? ??????</button>

            </form>
            <div class="social">
                <span>?????? ???????????? ??????</span>
                <a href="#">?????? ?????????</a>
                <a href="#">????????? ?????????</a>
                <a href="#">????????? ?????????</a>
            </div>           
        </div>
    </div> 
    <%@ include file = "/WEB-INF/views/common/footer.jsp" %>  

    <script>
	    function findPCode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	
	                // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
	                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                var roadAddr = data.roadAddress; // ????????? ?????? ??????
	                var extraRoadAddr = ''; // ?????? ?????? ??????
	
	                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // ???????????? ??????, ??????????????? ?????? ????????????.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById("postcode").value = data.zonecode;
	                document.getElementById("roadAddress").value = roadAddr;
	                
	               
	                var guideTextBox = document.getElementById("guide");
	                // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }

        function regchk(regexp, val) {
            if(regexp.test(val)) {
                return true;
            } else {
                return false;
            }
        }

        $("#mailCfrm").click(function() {
            var email = $("[name=email]").val();
            var emailReg = /^([\w\d_\.-]+)@([\w\d_-]+)(\.[\w\d_-]+){1,2}$/;
            if(email == "") {
            	$("[name=email]").next().html("????????? ????????? ??????????????????.");
            } else if(!emailReg.test(email)) {
                $("[name=email]").next().html("????????? ????????? ??????????????????.");
            }
            else {         
                $("[name=email]").next().html(""); 
            	$.ajax({
                    url: "/user/chkEmail.do",
                    type: "post",
                    data: {email:email},
                    success: function(data) {
    					if(data == "1") {
    						$("[name=email]").next().html("?????? ????????? ??????????????????");
    					}
    					else {
    						$("[name=email]").next().html("");
                            $("#restForm").slideDown(800);
                            $("#mailCfrm").hide();

    					}
                    },
                    error: function() {
                        console.log("error")
                    }

                })
            }            
        })
        $("[name=memberPw]").keyup(function() {
            var pw = $(this).val();
            var pwReg = /(?=.*\d)(?=.*[a-zA-Z]).{8,30}/
            if(pwReg.test(pw)) {
                $(this).next().html("");
            } else {
                $(this).next().html("????????? ?????? ???????????? 8??? ?????? ??????????????????.");
            }
        })
        $("[name=memberPw2]").change(function() {
            var pw = $("[name=memberPw]").val();
            var pw2 = $(this).val();
            if(pw == pw2) {
                $(this).next().html("");
            } else {
                $(this).next().html("??????????????? ???????????? ????????????.");
            }
        })
        $("[name=memberNick]").change(function() {
            var name = $(this).val();
            var nameByteLength = name.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
            if(name == "") {
                $(this).next().html("????????? ????????? ??? ????????????");
            } else if(nameByteLength > 40) {
                $(this).next().html("?????? ?????? ????????? ??????????????????");
            } else {               
                $(this).next().html("");
                $.ajax({
                url: "/user/chkName.do",
                type: "post",
                data: {memberNick:name},
                success: function(data) {
					if(data == "1") {
						$("[name=memberNick]").next().html("????????? ????????? ????????? ??? ????????????.");
					}
                },
                error: function() {
                    console.log("error")
                }

                })   
            }
        })
        $("input[type=checkbox]").change(function() {
            var checked = $("input[type=checkbox]:checked").length;
            if(checked >= 3) {
                $("input[type=checkbox]:not(:checked)").attr("disabled", "disabled");
            } else {
                $("input[type=checkbox]").removeAttr("disabled");
            }
        })

        $("[name=intro]").change(function() {
            var intro = $(this).val();
            var introByteLength = intro.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
            if(introByteLength > 2000) {
                $(this).next().html("?????? ????????? ??????????????????");
            } else {
                $(this).next().html("");
            }
        })
        
        function joinCheck() {
            var email = $("[name=email]").val();
            var emailReg = /^([\w\d_\.-]+)@([\w\d_-]+)(\.[\w\d_-]+){1,2}$/;
            var pw = $("[name=memberPw]").val();
            var pwReg = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}/
            var pw2 = $("[name=memberPw2]").val();
            var name = $("[name=memberNick]").val();
            var nameByteLength = name.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
            var namechk = $("#namechk");
            var age = $("[name=age]").val();
            var gender = $("[name=gender]:checked").val();
            var address = $("#postcode").val() + " " + $("#roadAddress").val() + " " + $("#detailAddress").val();
            var hobby = [];
            $("[name=hobby]:checked").each(function() { 
                hobby.push($(this).val());
            });
            var hobby1 = hobby[0];
            var hobby2 = hobby[1];
            var hobby3 = hobby[2];
            var intro = $("[name=intro]").val();
            var introByteLength = intro.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
            var checked = $("input[type=checkbox]:checked").length;
            
            console.log(email);
            console.log(pw);
            console.log(pw2);
            console.log(name);
            console.log(nameByteLength);
            console.log(age);
            console.log(gender);
            console.log(address);   
            console.log(hobby);
            console.log(hobby1);
            console.log(hobby2);
            console.log(hobby3);
            console.log(intro);
            console.log(introByteLength);

            if(!regchk(emailReg, email)) {
                $("[name=email]").css("border", "1px solid red");
                $("[name=email]").next().html("????????? ????????? ??????????????????.");
                return false;
            } else {
                $("[name=email]").css("border", "1px solid #999");
                $("[name=email]").next().html("");
            }
            if(!regchk(pwReg, pw)) {
                $("[name=memberPw]").css("border", "1px solid red");
                $("[name=memberPw]").next().html("?????????, ?????????, ?????? ???????????? 8??? ?????? ??????????????????.");
                return false;
            } else {
                $("[name=memberPw]").css("border", "1px solid #999");
                $("[name=memberPw]").next().html("");
            }
            if(!(pw == pw2)) {
                $("[name=memberPw2]").css("border", "1px solid red");
                $("[name=memberPw2]").next().html("??????????????? ???????????? ????????????.");
                return false;
            } else {
                $("[name=memberPw2]").css("border", "1px solid #999");
                $("[name=memberPw2]").next().html("");
            }
            if(namechk.html() == "????????? ????????? ????????? ??? ????????????.") {
            	$("[name=memberNick]").css("border", "1px solid red");
            	return false;
            } else {
            	$("[name=memberNick]").css("border", "1px solid #999");
            }
            if(nameByteLength == 0) {
                $("[name=memberNick]").css("border", "1px solid red");
                $("[name=memberNick]").next().html("????????? ????????? ??? ????????????");
                return false;
            } else {
                $("[name=memberNick]").css("border", "1px solid #999");
                $("[name=memberNick]").next().html("");
            }
            if(nameByteLength > 40) {
                $("[name=memberNick]").css("border", "1px solid red");
                $("[name=memberNick]").next().html("?????? ?????? ????????? ??????????????????");
                return false;
            } else {
                $("[name=memberNick]").css("border", "1px solid #999");
                $("[name=memberNick]").next().html("");
            }
            if(address == "  ") {
                $("#postcode").css("border", "1px solid red");
                $("#roadAddress").css("border", "1px solid red");
                $("#detailAddress").css("border", "1px solid red");
                $("#detailAddress").next().html("????????? ??????????????????");
                return false;
            }
            if(introByteLength > 2000) {
                $("[name=intro]").css("border", "1px solid red");
                $("[name=intro]").next().html("?????? ????????? ??????????????????");
                return false;
            } else {
                $("[name=intro]").css("border", "1px solid #999");
                $("[name=intro]").next().html("");
            }
            if(checked < 3) {
            	$(".chkMsg").html("??????????????? 3??? ??????????????????");
            	return false;
            } else {
            	$(".chkMsg").html("");
            }
            $("#joinForm").prepend("<input type='hidden' name='address' value='" + address + "'>'");
            
        }

    </script>
</body>
</html>