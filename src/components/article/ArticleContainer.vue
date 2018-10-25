<template>
    <div class="app_subarticle">

        <div class="mui-card" v-for="item in list" :key="item.aid">
            <router-link :to=" '/articledetail/'+item.aid ">
                <!--页眉，放置标题-->
                <div class="mui-card-header">
                    <div class="a_avater">
                        <img :src="item.avater">
                    </div>
                    <div class="a_author">
                        <p>{{item.author}}</p>
                        <p>{{item.ptime | dateFormat}}</p>
                    </div>
                </div>
                <!--内容区-->
                <div class="mui-card-content">{{item.title}}</div>
                <!--页脚，放置补充信息或支持的操作-->
                <div class="mui-card-footer">
                    <img :src="item.pic_url">
                </div>
                <hr>
            </router-link>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {

            };
        },
        methods:{

        },
        created(){

        },
        props:["list"],   //接受父组件传递参数
    }
</script>
<style>
    .a_author>p{
        color: #333;
        font-size:12px; 
    }
    .app_subarticle .a_avater img{
        width: 50px;
    }
</style>