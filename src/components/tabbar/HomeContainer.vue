<template>
    <div class="app">
        <mt-header fixed title="Pimke">
            <span class="mui-icon iconfont icon-like" slot="left"></span>
        </mt-header>
        <!--主页组件HomeContainer.vue-->
        <!--轮播图-->
        <swiper-box :list="this.banner_list"></swiper-box> 
        <!--推文-->
        <article-box :list="this.article_list"></article-box>
    </div>
</template>
<script>
    //加载当前组件需要的第三方模块
    import swiper from "../subcomponents/swiper"
    import article from "../article/ArticleContainer"
    export default{
        data(){
            return {
                banner_list:[],
                article_list:[]
            };
        },
        methods:{
            getBannerList(){
                //获取图片轮播的顺序
                var url = "/bannerlist/list";
                this.$http.get(url).then(result=>{
                    //node.js 发送json字符串
                    //通过vue resource接收自动将json字符串转换
                    //js对象
                    if(result.body.code==1){
                        this.banner_list=result.body.msg;
                    }else{
                        //出错提示：Toast()
                        Toast("加载轮播图片失败")
                    }
                })
            },
            getArticleList(){
                var url = "/articlelist/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code==1){
                        this.article_list=result.body.msg;
                    }else{
                        Toast("加载轮播图片失败")
                    }
                })
            }
        },
        created(){
            this.getBannerList();
            this.getArticleList();
        },
        components:{
            "swiper-box":swiper,    //注册子组件
            "article-box":article
        }
    }
</script>
<style>
    .mui-table-view.mui-grid-view.mui-grid-9{
        background-color: #fff;
    }
    .mui-table-view.mui-grid-view.mui-grid-9>li{
        border: 0;
    }
    .app .mint-swipe{
        height:200px;
    }
    .app img{
        width: 100%;
        height:100%;
    }
    .app .mui-table-view-cell.mui-media.mui-col-xs-4.mui-col-sm-3>a>img{
        width:60px;
        height:60px;
    }
    .mui-card>a{
        color: #000;
    }
</style>
