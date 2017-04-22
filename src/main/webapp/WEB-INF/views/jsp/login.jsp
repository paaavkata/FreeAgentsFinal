<jsp:include page="header.jsp" />
<div id="login">
			<h2>Log In</h2>
				<form method="POST" action="login">
					<input type="text" name="username" placeholder="Username" required="required"/>
					<input type="password" name="password" placeholder="Password" required="required"/>
					<c:if test="${not empty sessionScope.notification}">
						<p class="error">${sessionScope.notification}</p>
					</c:if>
					<input type="submit" id="login-btn" value="Sign In" />
				</form>
				<div>
					New to our site? Click
					<a href="signup">here</a>
					to register.
				</div>
		</div>
<jsp:include page="footer.jsp" />