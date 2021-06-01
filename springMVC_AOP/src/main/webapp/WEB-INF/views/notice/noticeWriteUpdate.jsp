<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시물 수정</h1>
	<hr>
	<table border="1">
		<form action="/noticeUpdate.do" get="post">
			<input style="display: none" type="text" name="no" value=${notice.get(0).noNo }>
			<tr>
				<th>제목</th><th colspan="3"><input type="text" name=title value="${notice.get(0).noTitle }"></th>
			</tr>
			<tr>
				<th>작성자</th><th><input type="text" name="writer" readonly value="${m.memberId }"></th>
			</tr>
			<tr height="100px">
				<th>내용</th><th colspan="3" ><input type="text" name=content value="${notice.get(0).noContent }" style="height: 100px"></th>
			</tr>
			<tr>
				<th colspan="4"><button>수정하기</button></th>
			</tr>
		</form>
	</table>
</body>
</html>