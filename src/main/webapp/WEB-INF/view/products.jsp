<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>
<div id="tour" class="bg-1">
  <div class="container" ng-app="myApp" ng-controller="namesCtrl">
  	<div style="background-color: white;height: 30px;">
  	<form>
			<input type="text" ng-model="search" style="height: 30px;width: 90%;outline: none;"/>&nbsp&nbsp
			<span class="glyphicon glyphicon-search"></span> Search
	</form>
	</div>
	<br/>
    <div class="row text-center" >
      <div >
	    <div class="columns" ng-repeat="resource in names | filter:search">
  			<ul class="price">
  				<li>
  					<div class="thumbnail">
          					<img src="<c:url value="/resources/project/{{ resource.pname}}.jpg"/>" class="img-rounded"  style="max-width:200px;max-height:200px;">
          				</a>
         			</div>
  				</li>
    			<li class="header">{{ resource.pname}}</li>
    			<li class="grey">{{ resource.price}}</li>
    			<li><a href="productdetails?p={{resource.pid}}" class="button" role="button">MoreDetails</a>
    			<li><a href="../Cart/addToCart?c={{resource.pid}}" class="button" role="button">Add To Cart</a></li>
      </div>
  	</div>
</div>
</div>
</div>
			<script>
				angular.module('myApp', []).controller('namesCtrl', function($scope) {
    				$scope.names = ${sproducts};
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				});
			</script>
</body>
</html>

