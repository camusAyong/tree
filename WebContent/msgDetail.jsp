<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	table,tr,th,td{
		border: 1px solid;
		border-collapse: collapse;
		padding : 10px;
	}
</style>
</head>
<body>
	<!-- 상단 메뉴바 -->
<c:import url="./view/topmenu.jsp"/>
<h2 class="text-center">메세지 상세보기</h2>
					
	<table class="table table-striped" style="width: 500px; margin-left: auto; margin-right: auto;">
    <tr>
				<th style="text-align: center">메세지 넘버</th>
				<td>${msgDetail.msgNo}</td>
			</tr>
			<tr>
				<th style="text-align: center">보낸 사람</th>
				<td>${msgDetail.sender_email}</td>
			</tr>
			<tr>
				<th style="text-align: center">받는 사람</th>
				<td>${msgDetail.receiver_email}</td>
			</tr>
			<tr>
				<th style="text-align: center">메세지 내용</th>
				<td>${msgDetail.msgContent}</td>
			</tr>
			<tr>
				<th style="text-align: center">보낸 날짜</th>
				<td>${msgDetail.reg_date}</td>
			</tr>
			<tr>
				<th style="text-align: center">읽음 상태</th>
				<c:if test="${msgDetail.msgOpen eq  '1'}">
				<td>읽음</td>	
				</c:if>
				<c:if test="${msgDetail.msgOpen eq  '0'}">
				<td>읽지 않음</td>	
				</c:if>
			</tr>
</table>

<div class="text-center">
<button class="btn btn-primary" onclick="location.href='./msgAns?sender_email=${msgDetail.sender_email}'">답장 작성하기</button>
					<button class="btn btn-primary" onclick="location.href='./msgDel?msgNo=${msgDetail.msgNo}'">메세지 삭제</button>
					<button class="btn btn-primary" onclick="location.href='./msgReportWrite?msgNo=${msgDetail.msgNo}'">메세지 신고하기</button>
					<input class="btn btn-primary" type="button" onclick="location.href='./msgMain'" value="이전으로" />
	</div>

</body>
<script>
	var msgMsg = "${msgMsg}";
	if(msgMsg != ""){
	alert(msgMsg);
	}
</script>
</html>