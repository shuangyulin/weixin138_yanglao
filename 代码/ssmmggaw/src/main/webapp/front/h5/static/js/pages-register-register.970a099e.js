(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-register-register"],{3735:function(e,i,t){"use strict";t.r(i);var r=t("c011"),n=t("48c7");for(var o in n)"default"!==o&&function(e){t.d(i,e,(function(){return n[e]}))}(o);t("3d8e");var a,u=t("f0c5"),l=Object(u["a"])(n["default"],r["b"],r["c"],!1,null,"ad770eca",null,!1,r["a"],a);i["default"]=l.exports},"3d8e":function(e,i,t){"use strict";var r=t("e652"),n=t.n(r);n.a},"48c7":function(e,i,t){"use strict";t.r(i);var r=t("4e2d"),n=t.n(r);for(var o in r)"default"!==o&&function(e){t.d(i,e,(function(){return r[e]}))}(o);i["default"]=n.a},"4e2d":function(e,i,t){"use strict";var r=t("4ea4");Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0,t("28a5"),t("96cf");var n=r(t("3b8d")),o={data:function(){return{yonghuxingbieOptions:[],yonghuxingbieIndex:0,zhiyuanzhexingbieOptions:[],zhiyuanzhexingbieIndex:0,ruleForm:{},tableName:""}},onLoad:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(){var i;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:[],i=uni.getStorageSync("loginTable"),this.tableName=i,"yonghu"==this.tableName&&(this.yonghuxingbieOptions="男,女".split(","),this.ruleForm.xingbie=this.yonghuxingbieOptions[0]),"zhiyuanzhe"==this.tableName&&(this.zhiyuanzhexingbieOptions="男,女".split(","),this.ruleForm.xingbie=this.zhiyuanzhexingbieOptions[0]),this.styleChange();case 6:case"end":return e.stop()}}),e,this)})));function i(){return e.apply(this,arguments)}return i}(),methods:{yonghuxingbieChange:function(e){this.yonghuxingbieIndex=e.target.value,this.ruleForm.xingbie=this.yonghuxingbieOptions[this.yonghuxingbieIndex]},zhiyuanzhexingbieChange:function(e){this.zhiyuanzhexingbieIndex=e.target.value,this.ruleForm.xingbie=this.zhiyuanzhexingbieOptions[this.zhiyuanzhexingbieIndex]},styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},register:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(this.ruleForm.zhanghao||"yonghu"!=this.tableName){e.next=3;break}return this.$utils.msg("账号不能为空"),e.abrupt("return");case 3:if(this.ruleForm.mima||"yonghu"!=this.tableName){e.next=6;break}return this.$utils.msg("密码不能为空"),e.abrupt("return");case 6:if("yonghu"!=this.tableName||!this.ruleForm.shouji||this.$validate.isMobile(this.ruleForm.shouji)){e.next=9;break}return this.$utils.msg("手机应输入手机格式"),e.abrupt("return");case 9:if("yonghu"!=this.tableName||!this.ruleForm.youxiang||this.$validate.isEmail(this.ruleForm.youxiang)){e.next=12;break}return this.$utils.msg("邮箱应输入邮件格式"),e.abrupt("return");case 12:if(this.ruleForm.zhiyuanhao||"zhiyuanzhe"!=this.tableName){e.next=15;break}return this.$utils.msg("志愿号不能为空"),e.abrupt("return");case 15:if(this.ruleForm.mima||"zhiyuanzhe"!=this.tableName){e.next=18;break}return this.$utils.msg("密码不能为空"),e.abrupt("return");case 18:if("zhiyuanzhe"!=this.tableName||!this.ruleForm.shouji||this.$validate.isMobile(this.ruleForm.shouji)){e.next=21;break}return this.$utils.msg("手机应输入手机格式"),e.abrupt("return");case 21:if("zhiyuanzhe"!=this.tableName||!this.ruleForm.youxiang||this.$validate.isEmail(this.ruleForm.youxiang)){e.next=24;break}return this.$utils.msg("邮箱应输入邮件格式"),e.abrupt("return");case 24:return e.next=26,this.$api.register("".concat(this.tableName),this.ruleForm);case 26:this.$utils.msgBack("注册成功");case 28:case"end":return e.stop()}}),e,this)})));function i(){return e.apply(this,arguments)}return i}()}};i.default=o},c011:function(e,i,t){"use strict";var r,n=function(){var e=this,i=e.$createElement,t=e._self._c||i;return t("v-uni-view",{staticClass:"content"},[t("v-uni-view",{staticClass:"logo"},[t("v-uni-image",{style:{boxShadow:"",borderColor:"rgba(74, 209, 242, 1)",borderRadius:"40rpx",borderWidth:"2rpx",width:"160rpx",borderStyle:"solid",url:"http://codegen.caihongy.cn/20201207/3879163aa3c7416b84df7dea4949bc01.png",isShow:!0,height:"160rpx"},attrs:{src:"http://codegen.caihongy.cn/20201207/3879163aa3c7416b84df7dea4949bc01.png",mode:"aspectFill"}})],1),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"账号"},model:{value:e.ruleForm.zhanghao,callback:function(i){e.$set(e.ruleForm,"zhanghao",i)},expression:"ruleForm.zhanghao"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"密码"},model:{value:e.ruleForm.mima,callback:function(i){e.$set(e.ruleForm,"mima",i)},expression:"ruleForm.mima"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"姓名"},model:{value:e.ruleForm.xingming,callback:function(i){e.$set(e.ruleForm,"xingming",i)},expression:"ruleForm.xingming"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-picker",{attrs:{value:e.yonghuxingbieIndex,range:e.yonghuxingbieOptions},on:{change:function(i){arguments[0]=i=e.$handleEvent(i),e.yonghuxingbieChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[e._v(e._s(e.ruleForm.xingbie?e.ruleForm.xingbie:"请选择性别"))])],1)],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"手机"},model:{value:e.ruleForm.shouji,callback:function(i){e.$set(e.ruleForm,"shouji",i)},expression:"ruleForm.shouji"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"邮箱"},model:{value:e.ruleForm.youxiang,callback:function(i){e.$set(e.ruleForm,"youxiang",i)},expression:"ruleForm.youxiang"}})],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"志愿号"},model:{value:e.ruleForm.zhiyuanhao,callback:function(i){e.$set(e.ruleForm,"zhiyuanhao",i)},expression:"ruleForm.zhiyuanhao"}})],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"密码"},model:{value:e.ruleForm.mima,callback:function(i){e.$set(e.ruleForm,"mima",i)},expression:"ruleForm.mima"}})],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"姓名"},model:{value:e.ruleForm.xingming,callback:function(i){e.$set(e.ruleForm,"xingming",i)},expression:"ruleForm.xingming"}})],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-picker",{attrs:{value:e.zhiyuanzhexingbieIndex,range:e.zhiyuanzhexingbieOptions},on:{change:function(i){arguments[0]=i=e.$handleEvent(i),e.zhiyuanzhexingbieChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[e._v(e._s(e.ruleForm.xingbie?e.ruleForm.xingbie:"请选择性别"))])],1)],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"手机"},model:{value:e.ruleForm.shouji,callback:function(i){e.$set(e.ruleForm,"shouji",i)},expression:"ruleForm.shouji"}})],1):e._e(),"zhiyuanzhe"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column"},[t("v-uni-input",{staticClass:"uni-input",style:{borderColor:"#ccc",backgroundColor:"#fff",borderRadius:"40rpx",color:"#333",textAlign:"left",borderWidth:"4rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"text",name:"",placeholder:"邮箱"},model:{value:e.ruleForm.youxiang,callback:function(i){e.$set(e.ruleForm,"youxiang",i)},expression:"ruleForm.youxiang"}})],1):e._e(),t("v-uni-view",[t("v-uni-button",{style:{borderColor:"#ccc",backgroundColor:"rgba(48, 235, 157, 1)",borderRadius:"40rpx",color:"#333",borderWidth:"2rpx",fontSize:"32rpx",borderStyle:"solid",height:"88rpx"},attrs:{type:"primary"},on:{click:function(i){arguments[0]=i=e.$handleEvent(i),e.register.apply(void 0,arguments)}}},[e._v("注册")])],1)],1)},o=[];t.d(i,"b",(function(){return n})),t.d(i,"c",(function(){return o})),t.d(i,"a",(function(){return r}))},e652:function(e,i,t){var r=t("ffd7");"string"===typeof r&&(r=[[e.i,r,""]]),r.locals&&(e.exports=r.locals);var n=t("4f06").default;n("b3cbf242",r,!0,{sourceMap:!1,shadowMode:!1})},ffd7:function(e,i,t){var r=t("24fb");i=r(!1),i.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.content[data-v-ad770eca]{padding:%?100?%}.content[data-v-ad770eca]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}.logo[data-v-ad770eca]{text-align:center}.logo uni-image[data-v-ad770eca]{height:%?200?%;width:%?200?%;margin:0 0 %?60?%}.uni-form-item[data-v-ad770eca]{margin-bottom:%?40?%;padding:0}.uni-form-item .uni-input[data-v-ad770eca]{font-size:%?30?%;padding:7px 0}uni-button[type="primary"][data-v-ad770eca]{background-color:#b49950;border-radius:0;font-size:%?34?%;margin-top:%?60?%}.links[data-v-ad770eca]{text-align:center;margin-top:%?40?%;font-size:%?26?%;color:#999}.links uni-view[data-v-ad770eca]{display:inline-block;vertical-align:top;margin:0 %?10?%}.links .link-highlight[data-v-ad770eca]{color:#b49950}.picker-select-input[data-v-ad770eca]{line-height:%?88?%}',""]),e.exports=i}}]);