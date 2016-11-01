
define(function (require, exports, moudle) {
    var $ = require("lib_cmd/zepto"),
		main = require("js_cmd/main"),
		myDialog = require("lib_cmd/myDialog"),
		scrollEvt = require("lib_cmd/scrollEvt");
    iTemplate = require("lib_cmd/iTemplate"),
    $eles = {},
    ele = {};


    /**异步加载数据模块**/
    var pageArgs = {
        pageIndex: 0,
        pageSize: 10,
        index: 0,
        template: '<li>\
					<a href="' + APP.urls.DetailUrl + '?id={Id}" onclick="dataCache.recordInfo(this, event, {index});">\
						<div>\
							<span class="img_wrap"><img src="{src}" style="background-image:url({url});" /></span>\
						</div>\
						<div>\
							<label class="title">{Name}</label>\
							<p>\
								<label class="price1">￥{LowSellPrice}</label>\
								<label class="price2" {isDisplay}>原价：￥{LowMarketPrice}</label>\
								<span class="discount" {isDisplay}>{discount}折 </span>\
								<span class="icon_fav {Collect}" onclick="favEvt(event,{Id});event.stopPropagation();return false;">&nbsp;</span>\
							</p>\
						</div>{tag_str}\
					</a>\
				</li>',
        isLoading: false,
        loadData: function (evt) {
            var that = this;
            if (that.isLoading) { return; }
            that.start_time = +new Date();
            that.isLoading = ele.isLoading = true;
            $.ajax({
                type: "POST",
                url: APP.urls.glist,
                data: {
                    "pageIndex": that.pageIndex,
                    "pageSize": that.pageSize,
                    "Sort": APP.sort,
                    "type": APP.type,
                    "Id": APP.Id,
                    "search": APP.search
                },
                async: true,
                success: function (res) {
                    setTimeout(function () {
                        that.isLoading = ele.isLoading = false;
                        if (0 == res.Status) {
                            that.pageIndex++;
                            dataCache.pageIndex = that.pageIndex;
                            dataCache.data = dataCache.data.concat(res.Data);
                            $eles.glist_ul.append($(that.rendData(res.Data)));
                            if (0 == res.total) {
                                $eles.glist_ul.addClass("empty");
                            }
                            if (that.pageIndex >= Math.ceil(res.total / that.pageSize)) {
                                window.myScroll.stop();
                                dataCache.end = that.pageIndex;
                                if (res.total) {
                                    ele.isEnding = true;
                                }
                            }
                        }
                    }, Math.max(0, that.start_time + 500 - new Date().getTime()));
                },
                dataType: "json"
            });
            return that;
        },
        rendData: function (data) {
            var that = this, _html;
            _html = iTemplate.makeList(that.template, data, function (k, v) {
                return {
                    tag_str: $.trim(v.Tags).length ? '<span  name="goodsdetailspan" class="tag">' + v.Tags + '</span>' : '',
                    src: main.ele.img_src,
                    index: pageArgs.index++,
                    isDisplay: (v.discount == 0 || v.discount == 10) ? "style='display:none;'" : ""
                }
            });
            return _html;
        }
    };

    (function (win, doc) {
        var dc = localStorage.getItem("glist"), dataCache;
        if (dc && (dataCache = JSON.parse(dc)) && dataCache.flag) {

        } else {
            dataCache = {
                data: [],
                pageIndex: 0,
                pageSize: 20,
                index: 0,
                flag: false
            };
        }

        dataCache.recordInfo = function (thi, evt, index) {
            dataCache.flag = true;
            dataCache.index = index;
            dataCache.st = doc.body.scrollTop;
            localStorage.setItem("glist", JSON.stringify(dataCache));
        }
        dataCache.destroy = function () {
            localStorage.removeItem("glist");
        }

        win.dataCache = dataCache;
    })(window, document);


    /**头部菜单模块**/
    window.menuNav = function (type) {
        switch (type) {
            case 0:
                var container = document.querySelectorAll(".container")[0];
                if (container.getAttribute("style")) {
                    window.myScroll && myScroll.sleep(false);
                    container.removeAttribute("style");
                    document.getElementById("sideBar").classList.remove("on");
                    setTimeout(function () {
                        container.classList.remove("animate");
                        $(".rotate_body").removeAttr("style");
                    }, 350);
                } else {
                    window.myScroll && myScroll.sleep(true);
                    var height = $(window).height();
                    container.classList.add("animate");
                    container.setAttribute("style", "height:" + height + "px;");
                    $(".rotate_body").height(height);
                    document.getElementById("sideBar").classList.add("on");
                    //var w = document.body.offsetWidth;
                    //var w1 = Math.cos((60/180)*Math.PI)*w - Math.sin((30/180)*Math.PI)*180;
                    //document.getElementById("sideBar").style.width = w-w1+"px";
                }
                break;
            case 1:
                $("#sort_div").toggleClass("on");
                break;
            case 2:
                dataCache.glist_big = true;
                $("#glist_ul").addClass("glist_big");
                $(".icon_one_grid, .icon_more_grid").removeClass("on").eq(arguments[1]).addClass("on");
                break;
            case 3:
                dataCache.glist_big = false;
                $("#glist_ul").removeClass("glist_big");
                $(".icon_one_grid, .icon_more_grid").removeClass("on").eq(arguments[1]).addClass("on");
                break;
            default:

                break;
        }
    }

    /**收藏模块**/
    window.favEvt = function (evt, Id) {
        evt.preventDefault();
        $.ajax({
            type: "POST",
            url: APP.urls.fav,
            data: {
                "Id": Id,
                "state": !evt.target.classList.contains("on")
            },
            async: true,
            success: function (res) {
                if (0 == res.Status) {
                    evt.target.classList.toggle("on");
                }
            },
            dataType: "json"
        });
    }
    //
    $(function () {
        $eles = {
            glist_ul: $("#glist_ul"),
            loading_bottom: null
        }
        //
        ele = (function () {
            function Ele() {
                var isLoading = false;
                var isEnding = false;

                Object.defineProperty(this, "isLoading", {
                    get: function () {
                        return isLoading;
                    },
                    set: function (v) {
                        isLoading = v;
                        if (!$eles.loading_bottom) {
                            $eles.loading_bottom = $(main.ele.loading_bottom);
                            $eles.glist_ul.parent().append($eles.loading_bottom);
                        }
                        $eles.loading_bottom[isLoading ? "removeClass" : "addClass"]("vhidden");
                    }
                });
                Object.defineProperty(this, "isEnding", {
                    set: function (v) {
                        $eles.loading_bottom[v ? "removeClass" : "addClass"]("vhidden").addClass("nomore");
                    }
                });
            }
            //
            return new Ele();
        })();
        //
        window.myScroll = new scrollEvt(pageArgs);
        if (dataCache && dataCache.data.length) {
            var $list = $(pageArgs.rendData(dataCache.data));
            $list.appendTo($("#glist_ul"));
            pageArgs.pageIndex = dataCache.pageIndex;
            if (dataCache.glist_big) {
                menuNav(2, 0);
            }
            setTimeout(function () {
                window.scrollTo(0, dataCache.st);
                dataCache.destroy();
            }, 1000);
            if (!dataCache.end) {
                setTimeout(function () {
                    window.myScroll.start();
                }, 1500);
            }
        } else {
            pageArgs.loadData();
            window.myScroll.start();
        }
    });

});