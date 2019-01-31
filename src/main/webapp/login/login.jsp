
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/signin.css" rel="stylesheet">

  </head>

  <body>
	<%-- 파라미터 전송을 위해 신경쓸 부분
		1. 어디로 보내는지 ?? : form action 속성
			--> 로그인 처리 요청 : LoginServlet doPost
		2. 어떻게 보낼지 ?? : form method 속성
			--> post : 사용자 비밀번호같이 보안 이슈가 발생할 수 있는 상황이므로 get 방식으로 보내지 않는다.
		3. 뭘 보낼지 ?? : input, select, textarea의 name 속성
			--> userId, password --%>
    <div class="container">

      <form class="form-signin" action="/login" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input name="userId" type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus value="brown">
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required value="brown1234">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div>

  </body>
  <script src="<%=request.getContextPath()%>/js/cookieUtil.js"></script>
  <script src="<%=request.getContextPath()%>/js/js.cookie.js"></script>
</html>
