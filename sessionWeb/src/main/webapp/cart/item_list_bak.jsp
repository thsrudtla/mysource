<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	button{
		-webkit-transition : width 2s, height 2s, color 2s, transform 2s;
		}
	button:hover{
		color:red;
		-webkit-transform:rotateY(360deg)scale(2.0,1.2)translate(50px,50px);
	}
	</style>
</head>
<body>
<h1>상품 목록</h1>
<form action="/sessionWeb/cart/addCart" method="post">
    <label><input type="checkbox" name="items" value="TV"> TV</label><br>
    <label><input Type="checkbox" name="items" value="DVD"> DVD</label><br>
    <label><input type="checkbox" name="items" value="모니터"> 모니터</label><br>
    <label><input type="checkbox" name="items" value="노트북"> 노트북</label><br>
    <label><input type="checkbox" name="items" value="마우스"> 마우스</label><br>
    <label><input type="checkbox" name="items" value="RAM"> RAM</label><br>
    <label><input type="checkbox" name="items" value="외장메모리"> 외장메모리</label><br>
    <button type="submit">장바구니담기</button>
</form>
</body>
</html>