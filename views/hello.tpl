<!DOCTYPE html>
<!-- app.hello.tpl -->
<html>
<head>
	<link rel="stylesheet" href="/assets/standard.css">
	<title>SS.IO - Shortening URLs in Charlotte at the moment</title>
</head>

<body>

	<div id="container">
		<h2>ss.io</h2>
		<p>We shorten URLs</p>
		<form action="#" method="POST" enctype="multipart/form-data">
			<input type="text" name="urlv">
			<input type="submit">
		</form>

		{{ #post }}
			<h3>{{ .word }}!  Your site is now permanently bookmarked at<h3>
			<h1>http://ss.io/{{ .value }}</h1> 
		{{ /post }}
	</div>


</body>
</html>
