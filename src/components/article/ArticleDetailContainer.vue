<template>
    <div class="app">
        <mt-header fixed title="详情">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
            <mt-button icon="more" slot="right"></mt-button>
        </mt-header>
        <div class="mui-card">
            <div class="mui-card-header">
                {{articlesinfo.title}}
            </div>
            <div class="mui-card-content">
                <div class="app_ava">
                    <img :src="articlesinfo.avater">
                </div>  
                <div class="app_aut">
                    <span> 作者：{{articlesinfo.author}}</span>
                    <span>{{articlesinfo.ptime | dateFormat}}</span>
                </div>
            </div>
            <div class="mui-card-footer app_content">
                <img :src="articlesinfo.pic_url">
                {{articlesinfo.content1}}<br>
                <img :src="articlesinfo.c_p1">
                {{articlesinfo.content2}}<br>
                <img :src="articlesinfo.c_p2">
                {{articlesinfo.content3}}<br>
                <img :src="articlesinfo.c_p3">
                {{articlesinfo.content4}}<br>
                <img :src="articlesinfo.c_p4">
                {{articlesinfo.content5}}<br>
            </div>
        </div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
     export default{
        data(){
            return {
                id:this.$route.params.id,
                articlesinfo:{},
            };
        },
        methods:{
            getArticleDetail(){
                var url = "articlelist/find?id="+this.id;
                this.$http.get(url).then(result=>{
                    this.articlesinfo=result.body.msg[0];
                })
            }
        },
        created(){
            this.getArticleDetail();
            console.log(this.pics)
        },
        props:["aid"],
    }
</script>
<style>
    .app_ava{
        width: 50px;
        height: 50px;
        border-radius: 50%;
        overflow: hidden;
    }
    .app_aut{
        display: flex;
        justify-content: space-between;
    }.app_content{
        letter-spacing:1px;
    }
</style>
