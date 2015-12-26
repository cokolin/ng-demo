<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>消息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<form name="userForm" class="form-inline">
					<fieldset>
						<legend>给用户发消息</legend>
						<div class="form-group">
							<div class="col-xs-4">
								<input class="form-control" name="user" type="text" placeholder="用户" maxlength="100">
							</div>
							<div class="col-xs-4">
								<input class="form-control" name="message" type="text" placeholder="消息" maxlength="400">
							</div>
							<div class="col-xs-4">
								<button type="submit" class="btn btn-primary">发送</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>