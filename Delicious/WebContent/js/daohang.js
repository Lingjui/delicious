(function() {
	var time = null;
	var list = $("#navlist");
	var box = $("#navbox");
	var lista = list.find(".a2");
	for (var i = 0, j = lista.length; i < j; i++) {
		if (lista[i].className == "now") {
			var olda = i;
		}
	}
	var box_show = function(hei) {
		box.stop().animate({
			height: hei,
			opacity: 1
		}, 400);
	}
	var box_hide = function() {
		box.stop().animate({
			height: 0,
			opacity: 0
		}, 400);
	}
	lista.hover(function() {
		lista.removeClass("now");
		$(this).addClass("now");
		clearTimeout(time);
		var index = list.find(".a2").index($(this));
		box.find(".cont").hide().eq(index).show();
		var _height = box.find(".cont").eq(index).height() + 54;
		box_show(_height)
	}, function() {
		time = setTimeout(function() {
			box.find(".cont").hide();
			box_hide();
		}, 50);
		lista.removeClass("now");//移除集合中每个匹配元素上一个，多个或全部样式。
		lista.eq(olda).addClass("now");//为每个匹配的元素添加指定的样式类名
	});
	box.find(".cont").hover(function() {
		var _index = box.find(".cont").index($(this));
		lista.removeClass("now");
		lista.eq(_index).addClass("now");
		clearTimeout(time);
		$(this).show();
		var _height = $(this).height() + 54;
		box_show(_height);
	}, function() {
		time = setTimeout(function() {
			$(this).hide();
			box_hide();
		}, 50);
		lista.removeClass("now");
		lista.eq(olda).addClass("now");
	});
})();