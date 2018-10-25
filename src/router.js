import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
//配置组件访问路由
//1.引入自定义组件
import HomeContainer from "./components/tabbar/HomeContainer"
import MemberContainer from "./components/tabbar/MemberContainer"
import MeidaContainer from "./components/tabbar/MeidaContainer"
import PhotoContainer from "./components/tabbar/PhotoContainer"
import ArticleDetailContainer from "./components/article/ArticleDetailContainer"
Vue.use(Router)
//2.指定该组件的访问路径
export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/member',component:MemberContainer},
    {path:'/meida',component:MeidaContainer},
    {path:'/photo',component:PhotoContainer},
    {path:'/articledetail/:id',component:ArticleDetailContainer},
  ],linkActiveClass:"mui-active"  //覆盖默认路由高亮class
})
