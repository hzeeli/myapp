<template>
 <div class="app-container">
    <!--2.路由显示其他模块-->
    <router-view></router-view>
    <!--3.mui tabber-->
    <nav class="mui-bar mui-bar-tab">
        <router-link to="/home" class="mui-tab-item" href="#tabbar">
            <span class="mui-icon iconfont icon-shouye">
            </span>
        </router-link>
        <router-link to="photo" class="mui-tab-item" href="#tabbar-with-map">
            <span class="mui-icon iconfont icon-faxian1"></span>
        </router-link>
        <router-link to="meida" class="mui-tab-item" href="#tabbar-with-contact">
            <span class="mui-icon iconfont icon-video"></span>
        </router-link>
        <router-link to="/member" class="mui-tab-item" href="#tabbar-with-chat">
            <span class="mui-icon iconfont icon-geren"></span>
        </router-link>
    </nav>
 </div>
</template>

<style>
    .app-container{
        padding-top:40px;
        padding-bottom:50px;
        overflow-x:hidden;
        background-color: #fff;
    }
    .mui-bar-tab .mui-tab-item-tao {
        display: table-cell;
        overflow: hidden;
        width: 1%;
        height: 50px;
        text-align: center;
        vertical-align: middle;
        white-space: nowrap;
        text-overflow: ellipsis;
        color: #929292;
    }
    .mui-bar-tab .mui-tab-item-tao .mui-icon {
        top: 3px;
        width: 24px;
        height: 24px;
        padding-top: 0;
        padding-bottom: 0;
    }

    .mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
    font-size:11px;
    display:block;
    overflow:hidden;
    text-overflow:ellipsis;

    }
    .mui-bar.mui-bar-tab{
        z-index: 1000;
    }
</style>
