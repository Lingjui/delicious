function ztlistMoveleft() {
	$("#ztlist_style1_item_ww").animate({
		"margin-left": "0px"
	}, 600, function() {
		$("#ztlist_style1_item_ww .ztlist_style1_item_w1").last().prependTo($("#ztlist_style1_item_ww"));
		//last()函数用于获取当前jQuery对象所匹配的元素中的最后一个元素.返回表示追加内容的jQuery对象
		$("#ztlist_style1_item_ww").css("margin-left", "-988px");
		$("#index_cd_leftarrow_mask").hide();
		index_cd_cur = index_cd_cur - 1;
		if (index_cd_cur == -1) {
			index_cd_cur = 2;
		}
		setztlistCur();
	});
}

function ztlistMoveright() {
	$("#ztlist_style1_item_ww").animate({
		"margin-left": "-1976px"
	}, 600, function() {
		$("#ztlist_style1_item_ww .ztlist_style1_item_w1").first().appendTo($("#ztlist_style1_item_ww"));
		//first() 将匹配元素集合缩减为集合中的第一个元素。把所有匹配的元素追加到另一个、指定的元素元素集合中。
		$("#ztlist_style1_item_ww").css("margin-left", "-988px");
		$("#index_cd_rightarrow_mask").hide();
		index_cd_cur = index_cd_cur + 1;
		if (index_cd_cur == 3) {
			index_cd_cur = 0;
		}
		setztlistCur();
	});

}

function setztlistCur() {
	$("#ztlist_cur span").removeClass("current");
	$("#ztlist_cur span").eq(parseInt(index_cd_cur)).addClass("current");
}

var index_cd_move = "";
var index_cd_cur = 1;


$(function() {
	if ($('#ztlist_style1_item_w').length > 0) {
		index_cd_move = setInterval(function() {
			ztlistMoveright();
		}, 5000);
		$("#index_cd_leftarrow").click(function() {
			$("#index_cd_leftarrow_mask").show();
			ztlistMoveleft();
		});
		$("#index_cd_rightarrow").click(function() {
			$("#index_cd_rightarrow_mask").show();
			ztlistMoveright();
		});
		$("#index_cd_leftarrow").mouseenter(function() {
			clearInterval(index_cd_move);
		});
		$("#index_cd_leftarrow").mouseleave(function() {
			index_cd_move = setInterval(function() {
				ztlistMoveright();
			}, 5000);
		});
		$("#index_cd_rightarrow").mouseenter(function() {
			clearInterval(index_cd_move);
		});
		$("#index_cd_rightarrow").mouseleave(function() {
			index_cd_move = setInterval(function() {
				ztlistMoveright();
			}, 5000);
		});
		$("#ztlist_style1_item_w").mouseenter(function() {
			clearInterval(index_cd_move);
		});
		$("#ztlist_style1_item_w").mouseleave(function() {
			index_cd_move = setInterval(function() {
				ztlistMoveright();
			}, 5000);
		});
	}
	bindtimex();
	$("#index_zzw .prev_btn").click(function() {
		$(".zzw_item_3 h3").hide();
		$("#index_zzw_main").animate({
			left: '-990px'
		}, "600", function() {
			$("#index_zzw_main .zzw_item").last().prependTo($("#index_zzw_main"));
			$.each($("#index_zzw_main .zzw_item"), function() {
				var _this = $(this);
				var po = parseInt($(this).attr("po"));
				if (po == 5) {
					po = 0
				}
				$(this).removeClass().addClass("zzw_item").addClass("zzw_item_" + String(po + 1)).attr("po", String(po + 1));
				$("#zzw_prev_btn").trigger("mouseover");

			});
			var i = $("#index_timelinebox span.timex_current");
			if (i.prev().length > 0) {
				i.removeClass("timex_current").prev().addClass("timex_current");
			} else {
				i.removeClass("timex_current");
				$("#index_timelinebox span.timex").last().addClass("timex_current");
			}
			bindtimex();
			$("#index_zzw_main").click();
			$(".zzw_item h3").hide();
			$(".zzw_item_3 h3").fadeIn();
			$("#index_zzw_main").css("left", "-1980px");

		});
	});
	$("#index_zzw .next_btn").click(function() {
		$(".zzw_item_3 h3").hide();
		$("#index_zzw_main").animate({
			left: '-2970px'
		}, "600", function() {
			$("#index_zzw_main .zzw_item").first().appendTo($("#index_zzw_main"));

			$.each($("#index_zzw_main .zzw_item"), function() {
				var _this = $(this);
				var po = parseInt($(this).attr("po"));
				if (po == 1) {
					po = 6
				}
				$(this).removeClass().addClass("zzw_item").addClass("zzw_item_" + String(po - 1)).attr("po", String(po - 1));
				$("#zzw_next_btn").trigger("mouseover");
			});
			var i = $("#index_timelinebox span.timex_current");
			if (i.next().length > 0) {
				i.removeClass("timex_current").next().addClass("timex_current");
			} else {
				i.removeClass("timex_current");
				$("#index_timelinebox span.timex").first().addClass("timex_current");
			}
			bindtimex();
			$("#index_zzw_main").click();
			$(".zzw_item h3").hide();
			$(".zzw_item_3 h3").fadeIn();
			$("#index_zzw_main").css("left", "-1980px");

		});
	});
});

function bindtimex() {
	$("#index_timelinebox span.timex").unbind();
	$("#index_timelinebox span.timex_current").prev().bind("click", function() {
		$("#zzw_prev_btn").click();
	});
	$("#index_timelinebox span.timex_current").next().bind("click", function() {
		$("#zzw_next_btn").click();
	});
}! function($) {

	"use strict"; // jshint ;_;
	/* TAB CLASS DEFINITION
	 * ==================== */
	var Tab = function(element) {
			this.element = $(element)
		}
		//整个控件分两部分,触发区与面板区
	Tab.prototype = {

		constructor: Tab,
		//这是用于切换触发区与相关事件,并在里面调用切换面板的activate
		show: function() {
			var $this = this.element,
				$ul = $this.closest('ul:not(.dropdown-menu)') //找到触发区的容器
				,
				selector = $this.attr('data-target') //取得对应的面板的CSS表达式
				,
				previous, $target, e

			if (!selector) {
				selector = $this.attr('href') //没有则从href得到
				selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
			}

			if ($this.parent('li').hasClass('active')) return

			previous = $ul.find('.active:last a')[0] //对得之前被激活的链接

			e = $.Event('show', {
				relatedTarget: previous
			})

			$this.trigger(e)

			if (e.isDefaultPrevented()) return

			$target = $(selector)

			this.activate($this.parent('li'), $ul)
			this.activate($target, $target.parent(), function() {
				$this.trigger({
					type: 'shown',
					relatedTarget: previous
				})
			})
		},
		//这方面不应该放到原型上，应该做成私有方法
		activate: function(element, container, callback) {
			var $deactivate = container.find('> .active'),
				transition = callback && $.support.transition && $deactivate.hasClass('fade')

			function next() {
				//让之前的处于激活状态处于激活状态
				$deactivate
					.removeClass('active')
					.find('> .dropdown-menu > .active')
					.removeClass('active')
					//让当前面板处于激活状态
				element.addClass('active')

				if (transition) {
					element[0].offsetWidth // reflow for transition
					element.addClass('in')
				} else {
					element.removeClass('fade')
				}

				if (element.parent('.dropdown-menu')) {
					element.closest('li.dropdown').addClass('active')
				}
				//执行回调，目的是触发shown事件
				callback && callback()
			}

			transition ?
				$deactivate.one($.support.transition.end, next) :
				next()
				//开始触发CSS3 transition回调
			$deactivate.removeClass('in')
		}
	}


	/* TAB PLUGIN DEFINITION
	 * ===================== */

	var old = $.fn.tab

	$.fn.tab = function(option) {
		return this.each(function() {
			var $this = $(this),
				data = $this.data('tab')
			if (!data) $this.data('tab', (data = new Tab(this)))
			if (typeof option == 'string') data[option]() //show
		})
	}

	$.fn.tab.Constructor = Tab


	/* TAB NO CONFLICT
	 * =============== */

	$.fn.tab.noConflict = function() {
		$.fn.tab = old
		return this
	}


	/* TAB DATA-API
	 * ============ */
	//要求触发区必须存在[data-toggle="tab"]或[data-toggle="pill"]属性
	$(document).on('click.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function(e) {
		e.preventDefault()
		$(this).tab('show')
	})

}(window.jQuery);