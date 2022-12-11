<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
/* out.js에 있는 go함수 호출하여 실행 */
//go()
</script>
</head>
<body>
회원가입페이지입니다. <br>
<hr>
<form action="insert.multi">
id : <input name="id"> <br>
pw : <input name="pw"> <br>
name : <input name="name"> <br>
tel : <input name="tel"> <br>
<button>서버로 전송</button> <br>
</form>
<hr>로그인 <br>
<hr>
<form action="login.multi">
id : <input name="id"> <br>
pw : <input name="pw"> <br>
<button>서버로 전송</button>
</form>
<hr>회원탈퇴<br>
<hr>
<form action="delete.multi">
id : <input name="id" value="test"> <br>
pw : <input name="pw"> <br>
<button>서버로 전송</button>
</form>
</body>
</html>