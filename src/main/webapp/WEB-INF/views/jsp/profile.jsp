<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp" />
		<section>
		<div>
			<div class="flowe-footer-menu profile">
				<p><a href="mymessages">My Messages</a></p>
				<p><a href="myjobs">My Jobs</a></p>
				<p><a href="myfeedbacks?id=${user.id}">My Feedbacks</a></p>
				<p><a href="jobsIwork">Jobs I'm working</a></p>
 			</div>
			<div class="main-header">
				<p class="profile-user">${user.getFirstName()}&nbsp${user.getLastName()}</p>
			</div>				
			<div id="signup" class="profile-options">
				<img src="image/${user.id}" onerror="this.src='image/0'" style="width:260px;height:260px;">
				<form method="POST" enctype="multipart/form-data" action="uploadpic">
					<p>Choose a picture</p>
					<input type="file" id="file" name="failche" accept="image/*" required="required">
					<input type="submit" class="save-avatar" value="Save avatar">
				</form>
				<form method="POST" action="editdata">
				<label for="country">Location</label>
				<select name="country" class="categories country-option">
					<option value="">Select Country</option>
					<c:forEach var="country" items="${countries}">
						<c:if test="${user.country == country.key}">
							<option selected="selected" value="${country.key}">${country.value}</option>
						</c:if>
						<c:if test="${user.country != country.key}">
							<option value="${country.key}">${country.value}</option>
						</c:if>
					</c:forEach>
				</select>
				<label for="job-title">Job title</label>
				<input type="text" id="job-title" name="jobtitle" value="${user.jobTitle}" maxlength="35" /><br>
				<label for="phone">Phone number</label>
				<input type="text" id="phone" name="phone" value="${user.phone}" maxlength="20"/><br>
				<label for="per-hour-rate">Per hour rate ($)</label>
				<input type="number" id="per-hour-rate" name="perhourrate" value="${user.perHourRate}" min="1" max="10000"/>
				<label for="aboutme">About me</label>
				<textarea rows="4" cols="50" id="aboutme" name="aboutme" maxlength="400">${user.aboutMe}</textarea>
				<label for="portfolio">Portfolio</label>
				<textarea rows="4" cols="50" id="portfolio" name="portfolio" maxlength="400">${user.portfolio}</textarea>
				<input style="width: 200px; margin: 5px 75px;" type="submit" id="post-job-btn" value="Save changes" />
				</form>
				<form method="GET" action="changepassword">
					<input style="width: 160px; margin: 5px 95px; padding: 8px; background-color: #4ECBEE;" type="submit" id="post-job-btn" value="Change Password" />
				</form>
			</div>
			</div>
		
		</section>
<jsp:include page="footer.jsp" />
