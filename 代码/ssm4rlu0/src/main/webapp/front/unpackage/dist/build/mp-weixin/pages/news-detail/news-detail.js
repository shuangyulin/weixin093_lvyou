(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/news-detail/news-detail"],{1203:function(t,n,e){"use strict";var r;e.d(n,"b",(function(){return a})),e.d(n,"c",(function(){return u})),e.d(n,"a",(function(){return r}));var a=function(){var t=this,n=t.$createElement;t._self._c},u=[]},"3c6e":function(t,n,e){"use strict";Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(e("a34a"));function a(t){return t&&t.__esModule?t:{default:t}}function u(t,n,e,r,a,u,i){try{var c=t[u](i),o=c.value}catch(d){return void e(d)}c.done?n(o):Promise.resolve(o).then(r,a)}function i(t){return function(){var n=this,e=arguments;return new Promise((function(r,a){var i=t.apply(n,e);function c(t){u(i,r,a,c,o,"next",t)}function o(t){u(i,r,a,c,o,"throw",t)}c(void 0)}))}}var c={data:function(){return{detail:{},id:""}},onLoad:function(t){var n=this;return i(r.default.mark((function e(){var a;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n.id=t.id,e.next=3,n.$api.info("news",t.id);case 3:a=e.sent,n.detail=a.data,n.detail.content=n.detail.content.replace(/<img/g,'<img style="width: 100%;"');case 6:case"end":return e.stop()}}),e)})))()}};n.default=c},bf4d:function(t,n,e){},d0d6:function(t,n,e){"use strict";var r=e("bf4d"),a=e.n(r);a.a},db3e:function(t,n,e){"use strict";e.r(n);var r=e("1203"),a=e("fb04");for(var u in a)"default"!==u&&function(t){e.d(n,t,(function(){return a[t]}))}(u);e("d0d6");var i,c=e("f0c5"),o=Object(c["a"])(a["default"],r["b"],r["c"],!1,null,"3b1ac260",null,!1,r["a"],i);n["default"]=o.exports},ea34:function(t,n,e){"use strict";(function(t){e("0e32");r(e("66fd"));var n=r(e("db3e"));function r(t){return t&&t.__esModule?t:{default:t}}t(n.default)}).call(this,e("543d")["createPage"])},fb04:function(t,n,e){"use strict";e.r(n);var r=e("3c6e"),a=e.n(r);for(var u in r)"default"!==u&&function(t){e.d(n,t,(function(){return r[t]}))}(u);n["default"]=a.a}},[["ea34","common/runtime","common/vendor"]]]);