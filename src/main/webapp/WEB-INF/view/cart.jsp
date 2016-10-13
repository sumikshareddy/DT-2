 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<script>
function shoppingCart(scart)
{
	this.scart = scart; this.clearCart = false; 
	this.checkoutParameters = {};
	this.items = []; this.loadItems();
	var self = this; $(window).unload(function () { 
		if (self.clearCart) 
		{ self.clearItems(); 
		} self.saveItems();
		self.clearCart = false;
		}); }
shoppingCart.prototype.loadItems = function () { 
	var items = localStorage != null ? localStorage[this.scart + "_items"] : null; 
	if (items != null && JSON != null) { try { var items = JSON.parse(items);
	for (var i = 0; i < items.length; i++) {
		var item = items[i]; if (item.pid != null && item.pname != null && item.price != null && item.quantity != null) { item = new cartItem(item.sku, item.name, item.price, item.quantity); this.items.push(item); } } } catch (err) { // catches the errors while loading } } } shoppingCart.prototype.saveItems = function () { if (localStorage != null && JSON != null) { localStorage[this.cartName + "_items"] = JSON.stringify(this.items); } }
	}
	}
	alert('func');
}
</script>
</head>

 <body>
<%@ include file="header.jsp"%>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Cart</h1>
					
				</div>
			</div>
		</section>

		<section class="container" ng-app="cartApp">

			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

				<div>
					<a class="btn btn-danger pull-left" ng-click="clearCart()"><span
						class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
						 <a href="<c:url value="/order/${cartId}" />"
						class="btn btn-success pull-right"><span
						class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
				</div>

				<br />
				<br />
				<br />

				<table class="table table-hover">
					<tr>
					   
						<th>Product</th>
						<th>Unit Price</th>
						<th>Quantity</th>
						<th>Quantity need</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
					 
					<tr ng-repeat="item in cart | filter:search">
					   
						<td>{{item.product.pname}}</td>
						<td>{{item.product.price}}</td>
						<td>{{item.product.quantity}}</td>
						<td class="tdCenter">
                      <div class="input-append">
                        <!-- use type=tel instead of  to prevent spinners -->
                        <input
                            class="span3 text-center" type="tel" 
                            ng-model="item.quantity" 
                            ng-change="saveItems()" />
                        <button 
                            class="btn btn-success" type="button" 
                            ng-disabled="item.quantity >= 1000"
                            ng-click="addItem(, +1)">+</button>
                        <button 
                            class="btn btn-inverse" type="button" 
                            ng-disabled="item.quantity <= 1"
                            ng-click="addItem(, -1)">-</button>
                      </div>
                    </td>
						<td>{{item.totalPrice}}</td>
						<td><a href="cart/delete?p={{item.pid}}" class="label label-danger"
							ng-click="removeFromCart(item.pid)"><span
								class="glyphicon glyphicon-remove"></span>remove</a></td>
 					</tr> 
 					
				</table>
 <button class="btn" onclick="javascript:history.back()">Back</button>
				<a href="home?u={{item.uid}}"
					class="btn btn-default">Continue Shopping</a>
			</div>
		</section>
</div>
</div>
		<!-- My -->
<%-- 		<script src="<c:url value="/webapp/resources/controller.js" /> "></script> --%>
		 <script>
		 	 angular.module('cartApp', []).controller('cartCtrl', function($scope) {
    				$scope.cart = ${scart};
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				});
				alert('message'); 
			</script>
 
		<%@ include file="footer.jsp"%>
		</body>
</html>