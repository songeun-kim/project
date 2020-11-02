<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/policy.css" media="all">
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
                     <li><a href="#">점수 보기</a></li>
                     <li><a href="#">점수 추가</a></li>
                     <li><a href="#">점수 수정</a></li>
                  </ul></li>
               <li><a href="#">마이페이지</a>
                  <ul class="sub">
                     <li><a href="#">정보 보기</a></li>
                     <li><a href="#">정보수정</a></li>
                  </ul></li>
            </ul>
         </nav>
      </div>
   </header>
   <div class="notice1">
      여러분을 환영합니다.<br> 다양한 플레이 볼링을 즐겨보세요.<br> 회원으로 가입하시면 플레이 볼링
      서비스를 보다 편리하게 이용할 수 있습니다.<br> 여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.<br>
      여러분의 개인정보를 소중히 보호합니다.<br> 타인의 권리를 존중해 주세요.<br> 플레이 볼링 서비스
      이용과 관련하여 몇 가지 주의사항이 있습니다.<br> 플레이 볼링에서 제공하는 다양한 포인트를 요긴하게 활용해
      보세요.<br> 부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다.<br> 플레이 볼링의 잘못은
      K2가 책임집니다.<br> 일부 플레이 볼링 서비스에는 광고가 포함되어 있습니다.<br> 언제든지 플레이
      볼링 서비스 이용계약을 해지하실 수 있습니다.<br> 서비스 중단 또는 변경 시 꼭 알려드리겠습니다.<br>
      주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.<br> 여러분이 쉽게 알 수 있도록 약관 및
      운영정책을 게시하며 사전 공지 후 개정합니다.<br>
   </div>
   <footer>
      <div class="foot_top">
         <ul>
            <li><a href="/member/policy">이용약관</a></li>
            <li><a href="/member/personpolicy">개인정보취급방침</a></li>
         </ul>
      </div>
      <div class="foot_bot">
         <p>Copyright K2, All Rights Reserved.</p>
      </div>
   </footer>
</body>
</html>