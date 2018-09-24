<cfif APPLICATION.loginService.isUserLoggedIn() && SESSION.user_type EQ 'admin'>
<html>
	<head>
		<title>Homepage</title>
		<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">
		<link rel="stylesheet" href="/assets/css/homepage.css" type="text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="/assets/js/add-book-validations.js"></script>
	</head>

	<body>
		<cfinclude template="../../common/includes/header.cfm">

		<div class="container" style="background-image: url('../../assets/images/books.jpg');">
		<cfif isDefined("URL.id")>
			<cfif isDefined("URL.bookid")>
				<cfoutput><h3 id="userid">Book is already available with ISBN #URL.bookid#</h3></cfoutput>
			<cfelse>
				<cfoutput><h3 id="userid">Successfully added Book</h3></cfoutput>
			</cfif>
		</cfif>
			<div class="form1">
				<div class="heading">
					Book Info
				</div>

				<form action="../handlers/manage_book_handler.cfm?id=1" method="post">
					<div class="field">
						<div class="label">
							<span class="mandatory">Book Title</span>
						</div>
							<input type="text" name="title" class="input-field" id="title" placeholder="enter book title" maxlength="20" required>
							<span class="error" id="error_title"></span><br>
					</div>

					<div class="field">
						<div class="label">
							<span class="mandatory">Category</span>
						</div>
							<input type="text" name="category" class="input-field" id="category" placeholder="enter book category" maxlength="20" required>
							<span class="error" id="error_category"></span><br>
					</div>

					<div class="field">
						<div class="label">
							<span class="mandatory">Author</span>
						</div>
							<input type="text" name="author" class="input-field" id="author" placeholder="enter author name" maxlength="20" required>
							<span class="error" id="error_author"></span><br>
					</div>

					<div class="field">
						<div class="label">
							<span class="mandatory">ISBN Number</span>
						</div>
							<input type="text" name="isbn" class="input-field" id="isbn" placeholder="enter ISBN number" maxlength="10" required>
							<span class="error" id="error_isbn"></span><br>
					</div>

					<div class="field">
						<div class="label">
							<span class="mandatory">Price</span>
						</div>
							<input type="text" name="price" class="input-field" id="price" placeholder="enter price" maxlength="7" required>
							<span class="error" id="error_price"></span><br>
					</div>

					<div class="field">
						<div class="label">
							<span class="mandatory">Number Of Books</span>
						</div>
							<input type="text" name="number" class="input-field" id="nob" placeholder="enter no. of books" maxlength="2" required>
							<span class="error" id="error_nob"></span><br><br>
					</div>

					<div class="field-button">
							<input type="submit" id="add-book" value="Add Book">
					</div>
				</form>
			</div>
        </div>

		<cfinclude template="../../common/includes/footer.cfm">
	</body>
</html>
<cfelse>
	<cflocation url="../../common/user_login.cfm">
</cfif>