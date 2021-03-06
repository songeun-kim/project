<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/score_write.css">
    <link rel="stylesheet" href="/resources/css/base.css">
    <!-- // jQuery UI CSS파일  -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <!-- // jQuery 기본 js파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <!-- jQuery UI 라이브러리 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery-date.js"></script>
    <script type="text/javascript">
		
		function avgVal() {
			var s1 = Number(document.getElementById("score1").value);
			var s2 = Number(document.getElementById("score2").value);
			var s3 = Number(document.getElementById("score3").value);
			var avg = Number((s1+s2+s3)/3);
			
			document.getElementById("avg").value = avg;
		}
    </script>
</head>
<body>
    <header>
      <div class="logo">
         <img src="resources/image/logo.png">
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

    <section id="score_write">
    
    	<form method="POST" action="/personal_score/score_insert">
        	<div class="wrap">
           
           		<div>
           		<input type="hidden" name="mem_id" value="${USER.mem_id }">
           		</div>
               <div id="formgroup">
                   <label>날짜선택</label>
                   <input type="text" id="datepicker" name="gameDate">
               </div>
               <div id="formgroup">
                   <label>1게임</label>
                   <input type="text" class="formcontrol" id="score1" name="score1">
               </div>
               <div id="formgroup">
                   <label>2게임</label>
                   <input type="text" class="formcontrol" id="score2" name="score2">
               </div>
               <div id="formgroup">
                   <label>3게임</label>
                   <input type="text" class="formcontrol" id="score3" name="score3">
                   
               </div>
               <div id="formgroup">
                   <label>오늘의 평균</label>
                   <input type="text" class="formcontrol" id="avg" name="avg" onclick="avgVal()">
               </div>
               <div id="submit_btn">
                   <button type="submit" id="save">완료</button>
                   <button type="reset" id="reset">다시작성하기</button>
               </div>
        	</div>
       	</form>
       	
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