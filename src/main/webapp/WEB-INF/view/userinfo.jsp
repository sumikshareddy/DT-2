<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

				<form:form commandName="order" class="form-horizaontal">
				<div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Enter Your Details</h3>
					</div>
						<div class="span4 no_margin_left">
						<legend>Your Personal Details</legend>
					  <div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls docs-input-sizes">
            				<form:input path="cart.usersDetail.firstName"  class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.email"  class="form-Control"/>
						</div>
					  </div>					  				 

					  </div>
					  <div class="span4">
					<legend>Shipping Address </legend>
					 
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.shippingAddress.houseNumber" id="houseNumber" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.user.shippingAddress.addressLine1" id="addressLine1" class="form-Control"/>
						</div>
					  </div>	
					  <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.user.shippingAddress.addressLine2" id="addressLine2" class="form-Control"/>
						</div>
					  </div>	
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.user.shippingAddress.city" id="city" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.user.shippingAddress.state" id="state" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.user.shippingAddress.country" id="country" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.user.shippingAddress.zipCode" id="zipCode" class="form-Control"/>
						</div>
					  </div>
					  <div class="span2 no_margin_left">
					  <input type="hidden" name="_flowExecutionKey" />
						<input type="submit" value="Continue" class="btn btn-primary pull-left" name="_eventId_userInfoProcessCompleted" />
						 </div>
						 <div class="span1 no_margin_left">
					 	<button class="btn btn-danger pull-left " name="_eventId_cancel">Cancel</button>
					    </div>
					  </div>
					  </div>
					  </form:form>
				
	 
</body>
</html>
	
		