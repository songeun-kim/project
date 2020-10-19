<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/mypagemain.css">
    <title>Play Bowling</title>
    <script type="text/javascript">
        function showPopup() {
        	      	
        	 var result = confirm('정말 탈퇴하시겠습니까?');
        	
        	if(result == true) {
        		location.href = '/mypage/final.jsp';
        		
        	} else {
        		return false;
        	}
        }
    </script>
</head>
<body>
    <header>
        <div class="logo">
            <img src="/resources/image/logo.png">
        </div>
        <div class="menu">
            <div class="menu_top">
                <ul>
                	<c:choose>
                		<c:when test="${empty USER }">
	                   	 	<li><a href="/member/login">Login</a></li>
	                    	<li><a href="/member/register">Register</a></li>
                    	</c:when>
                    
                    <c:otherwise>
                    	<li><a href="/member/logout">Logout</a></li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <nav>
                <ul class="navi">
                     <li><a href="#">동호회</a></li>
                    <li><a href="#">정기전</a></li>
                    <li><a href="#">마이페이지</a>
                        <ul class="submenu">
                            <li><a href="#">내 정보보기</a></li>
                            <li><a href="#">개인 점수관리</a></li>
                            <li><a href="#">정기전 점수관리</a></li>
                            <li><a href="#">탈퇴</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="main-content">
        <div class="mypage-info">
            <img src="/resources/image/logo2.png">
            <h3>내 정보</h3>
            <div id="infoback">
                <form method="POST" action="/mypage/memberDelete">
                    <div id="formgroup">
                        <label>이름</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_name }" name = "mem_name">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>아이디(ID)</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_id }" name="mem_id">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>비밀번호</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_pw }" name="mem_pw">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>닉네임</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_nickName }" name="mem_nickName">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>나이</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_age }" name="mem_age">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>이메일</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_email }" name="mem_email">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>주소</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" value="${USER.mem_address}" name="mem_address">
                        </c:if>
                    </div>
                    <div class="inform_btn">
                      <button type="button" id="btn1"><a href="/mypage/mypage_revice">수정하기</a></button>
                      <button type="submit" id="btn2">탈퇴하기</button>
                    </div>
                </form>
            </div>            
        </div>
    </section>

    <footer>
        <div class="foot_top">
            <ul>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보취급방침</a></li>
            </ul>
        </div>
        <div class="foot_bot">
            <p>Copyright SK2, All Rights Reserved.</p>
        </div>
    </footer>

</body>

</html>