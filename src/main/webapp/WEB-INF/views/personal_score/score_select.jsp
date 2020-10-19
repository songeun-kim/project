<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/score.css">
    <link rel="stylesheet" href="/resources/css/base.css">
    <title>Play Bowling</title>
    
    <script src="/resources/js/jquery-3.5.1.min.js"></script>
    <script src="/resources/js/jquery-migrate-1.4.1.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery-chart.js"></script>
    <script>getCanvas.start();</script>
    <!-- 차트 링크 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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

    <section id="score_table">
    <form method="POST" action="/personal_score/scoreView" >
        <div class="table_back">
            <h4> 개인 점수 </h4>
              <hr>
              <table class="table">
              	<c:if test="${USER != null}">
                <thead>
                  <tr>
                    <th>게임날짜</th>
                    <th>첫번째게임</th>
                    <th>두번째게임</th>
                    <th>세번째게임</th>
                    <th>평균</th>
                  </tr>
                </thead>
                <tbody>
                	<c:forEach items="${list }" var="list">
		                  <tr> 
		                 	<td><fmt:formatDate value="${list.gameDate}" pattern="yy-MM-dd"/></td>
		                    <td><c:out value="${list.}" /></td>
		                    <td><c:out value="${list.score2}" /></td>
		                    <td><c:out value="${list.score3}" /></td>
		                    <td><c:out value="${list.avg}" /></td>
		                  </tr>
                  	</c:forEach>
                  	
                </tbody>
                </c:if>
                
              </table>
             <%--  <input type="hidden" name="mem_id" value="${USER.mem_id}" /> --%>
        	</div>
        </form>
    </section>

    <div id="click_btn">
        <button type="button" id="insert"><a href="/personal_score/score_insert">점수 입력</a></button>
        <button type="button" id="update"><a href="/personal_score/score_update">점수 수정</a></button>
    </div>
    <section id="chart_main">
         <div class="container1" >
            <canvas id="myChart" width="400" height="400"></canvas>
        </div>
            <div class="container2" >
        <canvas id="myChart1" width="400" height="400"></canvas>
    </div>
    </section>
	<div class="radio_btn">
	  <input type="radio" id="r1" name="graph" checked="checked" id="BarGraph"/>
	  <span></span>Bar</label>
	  <p>
	  <input type="radio" id="r2" name="graph" id="LineGraph" />
	  <span></span>Line</label>
	  </div>    

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