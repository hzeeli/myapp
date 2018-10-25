<template>
    <div class="app_sub_swiper">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url">
                <p class="desc">{{item.title}}</p> 
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        data(){
            return {
                
            };
        },
        methods:{
           
        },
        created(){
            
        },
        components: {
        
        },
        props:["list"]//接受父组件传递的数据
    }
</script>
<style>
    .app_sub_swiper .mint-swipe{
        height:200px;
    }
    .app_sub_swiper .mint-swipe img{
        width: 100%;
        height: 200px;
    }
    mt-swipe-item{
        position: relative;
    }
    .app_sub_swiper .desc {
        font-weight: 600; 
        text-align: center;
        padding: 5px;
        height: 50px;
        line-height: 50px;
        width: 100%;
        color: #fff;
        background-color: rgba(0,0,0,0.2);
        position: absolute;
        bottom: 40px;
    }
</style>
