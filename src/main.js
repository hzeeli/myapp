import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'
import './assets/css/my-mint.css';

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
import './assets/css/my-mui.css';
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
import './lib/mui/css/iconfont.css'
import animate from 'animate.css'
//1.引入header组件
import {Header} from "mint-ui";
//2.注册header组件
Vue.component(Header.name,Header);
//lazy-load
import { Lazyload } from 'mint-ui';
Vue.use(Lazyload);

//引入swipe组件
import {Swipe,SwipeItem,Button} from "mint-ui"
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);
Vue.component(Button.name,Button);
//引入VueResource
import VueResource from "vue-resource"
//加载VueResource(引用所有组件)
Vue.use(VueResource)
//引入lightbox组件
import {LightBox, LightBoxImg, LightBoxTxt} from 'vue-ydui/dist/lib.rem/lightbox';
Vue.component(LightBox.name, LightBox);
Vue.component(LightBoxImg.name, LightBoxImg);
Vue.component(LightBoxTxt.name, LightBoxTxt);
//加载mint-ui所有组件
import {Toast} from "mint-ui";
//加载YDUI头部导航
import {NavBar, NavBarBackIcon, NavBarNextIcon} from 'vue-ydui/dist/lib.rem/navbar';
Vue.component(NavBar.name, NavBar);
Vue.component(NavBarBackIcon.name, NavBarBackIcon);
Vue.component(NavBarNextIcon.name, NavBarNextIcon);

//mint-ui navbar
import { Navbar, TabItem } from 'mint-ui';
Vue.component(Navbar.name, Navbar);
Vue.component(TabItem.name, TabItem);
import { TabContainer, TabContainerItem } from 'mint-ui';
Vue.component(TabContainer.name, TabContainer);
Vue.component(TabContainerItem.name, TabContainerItem);
//5.定义全局（日期格式）过滤器
//-1.第三方模块 moment 过滤器日期
//-2.自定义
// dateFormat--自定义过滤器名称  datestring--用户日期
Vue.filter("dateFormat",function(datestring,pattern="YYYY-MM-DD"){
  return new Date(datestring).toLocaleString();
})
//6.设置全局ajax访问基础路径
Vue.http.options.root="http://hzeemyapp.applinzi.com/"

//7.设置全局ajax post访问格式
Vue.http.options.emulateJSON=true;

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
