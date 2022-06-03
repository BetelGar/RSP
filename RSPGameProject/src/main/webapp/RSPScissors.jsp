<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
text-align: center;
}
#img{
      width: 1200px;
      overflow: hidden;
      margin:0 auto;
      text-align: center;
    
      
     }
#img :nth-child(1){
 text-align: center;
font-size: 40px;
  display: inline;
}
#img :nth-child(2){
 text-align: center;
font-size: 40px;
  display: inline;
}
#res{
      width: 500px;
      margin:0 auto;
      text-align: center;
      font-size: 40px;
     }     
form{
     width: 500px;
      margin:0 auto;
      text-align: center;
      font-size: 40px;
     
     }
</style>

</head>
<body>
<%
String result = "";
String handimg = "";
int com =(int)(Math.random()*3)+1;
if(com == 1){
	result = "비겼습니다.";
	handimg = "./가위.jpg";
}else if(com == 2){
	result = "당신이 졌습니다.";
	handimg = "./바위.jpg";
}else{
	result = "당신이 이겼습니다.";
	handimg = "./보.jpg";
}
%>
  <h1>결과!</h1>
<div id="img">
   <div>
      <h4>당신의 선택</h4>
      <img src="./가위.jpg">
   </div>
   <div>
      <img src=<%out.write(handimg);%>>
      <h4>컴퓨터의 선택</h4>
   </div>
</div>

<div id="res">
<%out.write(result); %>
</div>
<form action="RSPPlayer.html" method="post">
<input type="submit" value="재도전?">
</form>

</body>
</html>