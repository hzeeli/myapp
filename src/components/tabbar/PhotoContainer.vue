<template>
    <div class="app_news">
        <mt-header fixed title="图片">
            <span class="mui-icon iconfont icon-like" slot="left">
            </span>
        </mt-header>
        <div class="mui-card  my-card" v-for="item in list" :key="item.id">
            <!--页眉，放置标题-->
            <div class="mui-card-header">
                <div class="app_img">
                    <yd-lightbox>
                        <yd-lightbox-img v-lazy="item.pic"></yd-lightbox-img>
                        <yd-lightbox-txt>
                            <div slot="content">
                                {{item.content}}
                            </div>
                        </yd-lightbox-txt>
                    </yd-lightbox>
                </div>
            </div>
            <!--内容区-->
            <div class="mui-card-content">
                {{item.content}}
            </div>
            <!--页脚，放置补充信息或支持的操作-->
            <div class="mui-card-footer my-footer">
                <div class="news_author">
                    <p class="news_avater"><img :src="item.avater"></p>
                    <p>{{item.author}}</p>
                </div>
                <div>
                    <vue-star animate="animated bounceIn" color="#F05654">
                        <i slot="icon" class="mui-icon iconfont icon-like_fill"></i>
                    </vue-star>
                </div>
            </div>
        </div>      
    </div>
</template>
<script>
    import VueStar from 'vue-star'
    export default{
        data(){
            return {
                list:[]
            };
        },
        methods:{
           getnews(){
               var url = "/news/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code==1){
                        this.list=result.body.msg;
                    }else{
                        Toast("加载信息流失败")
                    }
                })
           }
        },
        created(){
            this.getnews();
        },
        components: {
            VueStar
        }
    }
</script>
<style>
    .app_news img{
        width: 100%;
    }
    .app_img{
        border-radius: 10px;
        overflow: hidden;
    }
    .my-card{
        padding: 20px 20px 0;
        border: 1px solid #ddd;
    }
    .news_avater{
        width: 40px;
        height: 40px;
        border-radius: 50%;
        overflow: hidden;
        margin: 0 10px;
    }
    .news_author{
        color: #000;
        display: flex;
        align-items: center;
    }
    .my-footer{
        flex-direction: row !important;
        justify-content: space-around;
    }
    .yd-lightbox .yd-lightbox-foot .yd-lightbox-scroller{
        max-height: 17rem;
        line-height: 1.2rem;
        font-size: 14px;
    }
    .VueStar{
        position: relative!important;
        font-size: 20px!important;
    }
    .yd-lightbox-head>a{
        color: aliceblue;
    }
    .app_news .mui-card .mui-card-footer{
        margin: -20px 5px;
    }
</style>
