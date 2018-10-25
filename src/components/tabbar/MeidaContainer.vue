<template>
    <div class="app_media">
        <mt-header fixed title="视听">
            <span class="mui-icon iconfont icon-like" slot="left"></span>
        </mt-header>
        <mt-navbar v-model="selected">
            <mt-tab-item id="1" name="icon" class="mui-icon iconfont icon-yinle1" >
            </mt-tab-item>
            <mt-tab-item id="2" name="icon" class="mui-icon iconfont icon-shipin4">
            </mt-tab-item>
        </mt-navbar>
        <!-- tab-container -->
        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="1">
                <div class="mui-card  my-card" v-for="item in audio_list" :key="item.mid">
                    <!--页眉，放置标题-->
                    <div class="mui-card-header">
                       {{item.title}}
                    </div>
                    <!--内容区-->
                    <div class="mui-card-content media_content">
                        <aplayer
                        :music="{
                            title:item.mp3_title,
                            artist: item.mp3_author,
                            src: item.mp3_url,
                            pic: item.pic
                        }"
                        />
                    </div>
                    <!--页脚，放置补充信息或支持的操作-->
                    <div class="mui-card-footer my-footer">
                        <div class="news_author">
                            <p class="news_avater"><img :src="item.avater"></p>
                            <p>{{item.author}}</p>
                        </div>
                        <div>
                            <vue-star animate="animated bounceIn" color="#F05654">
                                <i slot="icon" class="fa fa-heart"></i>
                            </vue-star>
                        </div>
                    </div>
                </div>      
                
            </mt-tab-container-item>
            <mt-tab-container-item id="2">
               视频功能暂未开放
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
    import Aplayer from 'vue-aplayer';
    import VueStar from 'vue-star';
    export default{
        data(){
            return {
                selected: '1',
                audio_list:[],
            };
        },
        methods:{
           getAudio_list(){
               var url = "/media/audio";
                this.$http.get(url).then(result=>{
                    if(result.body.code==1){
                        this.audio_list=result.body.msg;
                    }else{
                        Toast("加载mp3失败")
                    }
                })
           }
        },
        created(){
            this.getAudio_list()
        },
        computed:{
            
        },
        components: {
            Aplayer,
            VueStar
        }
    }
</script>
<style>
    .app_media .mint-navbar .mint-tab-item{
        font-size: 30px;
        color: #929292;
    }
    .app_media .mint-navbar .mint-tab-item.is-selected{
        color: #222;
        border-bottom: 2px solid #333;
    }
    .app_media .mui-card-content.media_content{
            padding: 0px;
    }
    .app_media .mui-card.my-card{
        padding: 0;
    }
    .app_media .mui-card-header{
        font-size: 13px;
    }
    .app_media img{
        width: 100%;
    }
    .app_media .mui-card .mui-card-footer{
        margin: -20px 5px;
    }
</style>
