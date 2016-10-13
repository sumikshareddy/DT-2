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

	