(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/shop-order/shop-order"],{2237:function(e,t,n){"use strict";n.r(t);var r=n("5d19"),a=n.n(r);for(var s in r)"default"!==s&&function(e){n.d(t,e,(function(){return r[e]}))}(s);t["default"]=a.a},"23f1":function(e,t,n){"use strict";n.d(t,"b",(function(){return a})),n.d(t,"c",(function(){return s})),n.d(t,"a",(function(){return r}));var r={mescrollUni:function(){return Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"4230"))}},a=function(){var e=this,t=e.$createElement;e._self._c},s=[]},"5d19":function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=a(n("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function s(e,t,n,r,a,s,u){try{var o=e[s](u),c=o.value}catch(i){return void n(i)}o.done?t(c):Promise.resolve(c).then(r,a)}function u(e){return function(){var t=this,n=arguments;return new Promise((function(r,a){var u=e.apply(t,n);function o(e){s(u,r,a,o,c,"next",e)}function c(e){s(u,r,a,o,c,"throw",e)}o(void 0)}))}}var o={data:function(){return{navlist:["全部","已支付","已发货","已完成","已取消"],currentIndex:0,pages:1,list:[],mescroll:null,downOption:{auto:!1},upOption:{page:{},noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,status:"",user:""}},onShow:function(){var t=this;return u(r.default.mark((function n(){var a,s;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return a=e.getStorageSync("nowTable"),n.next=3,t.$api.session(a);case 3:s=n.sent,t.user=s.data,t.hasNext=!0,t.mescroll&&t.mescroll.resetUpScroll();case 7:case"end":return n.stop()}}),n)})))()},methods:{navselect:function(e,t){this.currentIndex=e,this.status="全部"==t?"":"已支付"==t?"已支付":t,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},mescrollInit:function(e){this.mescroll=e},downCallback:function(e){this.hasNext=!0,e.resetUpScroll()},upCallback:function(e){var t=this;return u(r.default.mark((function n(){var a,s;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return a={page:e.num,limit:e.size},t.status&&(a["status"]=t.status),n.next=4,t.$api.page("orders",a);case 4:s=n.sent,1==e.num&&(t.list=[]),t.list=t.list.concat(s.data.list),0==s.data.list.length&&(t.hasNext=!1),e.endSuccess(e.size,t.hasNext);case 9:case"end":return n.stop()}}),n)})))()},onCancelTap:function(t){var n=this;return u(r.default.mark((function a(){var s;return r.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:s=n,e.showModal({title:"提示",content:"是否确认取消",success:function(){var n=u(r.default.mark((function n(a){var u;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(u=e.getStorageSync("nowTable"),!a.confirm){n.next=10;break}return t.status="已取消",n.next=5,s.$api.update("orders",t);case 5:n.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll(),1==t.type?s.user.money=s.user.money+t.total:2==t.type&&(s.user.jifen=s.user.jifen+t.total),s.$api.update(u,s.user);case 10:case"end":return n.stop()}}),n)})));function a(e){return n.apply(this,arguments)}return a}()});case 2:case"end":return a.stop()}}),a)})))()},onConfirm:function(t){var n=this;return u(r.default.mark((function a(){var s;return r.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:s=n,e.showModal({title:"提示",content:"是否确认收货",success:function(){var n=u(r.default.mark((function n(a){return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(e.getStorageSync("nowTable"),!a.confirm){n.next=8;break}return t.status="已完成",n.next=5,s.$api.update("orders",t);case 5:n.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 8:case"end":return n.stop()}}),n)})));function a(e){return n.apply(this,arguments)}return a}()});case 2:case"end":return a.stop()}}),a)})))()}}};t.default=o}).call(this,n("543d")["default"])},9065:function(e,t,n){"use strict";var r=n("df70"),a=n.n(r);a.a},"9b59":function(e,t,n){"use strict";(function(e){n("0e32");r(n("66fd"));var t=r(n("ec88"));function r(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])},df70:function(e,t,n){},ec88:function(e,t,n){"use strict";n.r(t);var r=n("23f1"),a=n("2237");for(var s in a)"default"!==s&&function(e){n.d(t,e,(function(){return a[e]}))}(s);n("9065");var u,o=n("f0c5"),c=Object(o["a"])(a["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],u);t["default"]=c.exports}},[["9b59","common/runtime","common/vendor"]]]);