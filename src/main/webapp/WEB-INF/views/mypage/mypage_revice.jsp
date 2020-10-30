<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/mypagemain.css">
    <link rel="stylesheet" href="/resources/css/base.css">
    <title>Play Bowling</title>
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
                  <c:when test="${empty USER}">
                     <li><a href="/member/login">Login</a></li>
                     <li><a href="/member/register">Register</a></li>
                  </c:when>
                  <c:otherwise>
                     <li><a href="/member/logout">Logout</a></li>
                  </c:otherwise>
               </c:choose>
            </ul>
         </div>
         <nav id="menu1">
            <ul class="main">
               <li><a href="/board/listPage?num=1">동호회</a></li>
               <li><a href="#">점수 관리</a>
                  <ul class="sub">
                     <li><a href="/personal_score/score_select">점수 보기</a></li>
                     <li><a href="/personal_score/score_insert">점수 추가</a></li>
                     <li><a href="/personal_score/score_update">점수 수정</a></li>
                  </ul></li>
               <li><a href="#">마이페이지</a>
                  <ul class="sub">
                     <li><a href="/mypage/mypage">정보 보기</a></li>
                     <li><a href="/mypage/mypage_revice">정보수정</a></li>
                  </ul></li>
            </ul>
         </nav>
      </div>
   </header>

    <section id="main-content">
        <div class="mypage-info">
            <h3>내 정보 수정</h3>
            <div id="infoback">
                <form method="POST"  action="/mypage/mypage_Update">
                    <div id="formgroup">
                        <label>이름</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_name" value="${USER.mem_name }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>아이디(ID)</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_id" value="${USER.mem_id }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>비밀번호</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_pw" value="${USER.mem_pw }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>닉네임</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_nickName" value="${USER.mem_nickName }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>나이</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_age" value="${USER.mem_age }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>이메일</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_email" value="${USER.mem_email }">
                        </c:if>
                    </div>
                    <div id="formgroup">
                        <label>주소</label>
                        <c:if test="${USER != null}">
                        <input type="text" class="formcontrol" name="mem_address" value="${USER.mem_address}">
                        </c:if>
                    </div>
                    <div class="inform_btn">
                      <button type="button" id="btn1"><a href="#pop1">수정하기</a></button>
                     </div>
                <div class="popup" id="pop1">
                        <h3>이대로 수정하시겠습니까?</h3>    
                    <input class="loginbtn" type="submit" value="YES" onclick="button()">
                    <div id="close">
                        <a href="/mypage/mypage_revice">닫기</a>
                    </div>
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