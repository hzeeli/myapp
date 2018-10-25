<template>
    <div class="app_subcomment">
        <hr>
        <textarea name="" placeholder="请输入评论的内容（120字内）" maxlength="120" id="" cols="30" rows="2" v-model="msg"></textarea>
        <mt-button size="large" type="primary" @click="postComment">发表评论</mt-button>
        <div class="cmt-list">
            <div class="cmt-list-item"  v-for="item in list" :key="item.id">
                <div class="cmt-title" >
                    第{{item.id}}楼&nbsp;&nbsp;用户：{{item.username}}&nbsp;&nbsp;发表时间：{{item.ctime | dateFormat}}
                </div>
                <div class="cmt-body">
                    {{item.content}}
                </div>
            </div>
        </div>
        <mt-button type="danger" size="large" @click="getMoreComment">加载更多</mt-button>
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        data(){
            return {
                list:[],
                msg:"",
                pageIndex:0,  //双向绑定的留言
            };
        },
        methods:{
            postComment(){
                var username="匿名用户";//用户名
                var nid = this.id;      //新闻编号
                var content=this.msg;            //双向绑定留言内容
                var url = "newslist/saveComment";//设置请求路径
                //console.log(nid,content)
                var obj={nid:nid,content:content,username:username};  
                this.$http.post(url,obj).then(result=>{
                    Toast(result.body.msg);
                    this.msg="";//输入框清空
                    this.getCommentList();//重新生成评论列表（刷新评论列表）
                })
            },
            getCommentList(){
                var url = "newslist/commentlist?nid="+this.id;
                this.$http.get(url).then(result=>{
                    this.list=result.body.msg.data;
                })
            },
            getMoreComment(){
                this.pageIndex++;
                var url = "newslist/commentlist?nid="+this.id+"&pno="+this.pageIndex;
                this.$http.get(url).then(result=>{
                    console.log(result.body.msg.data)
                    if(!result.body.msg.data.length==0){
                        this.list=this.list.concat(result.body.msg.data);
                        Toast("加载成功")
                    }else{
                        Toast("没有更多了")
                    }                 
                })
            }
        },
        created(){
            this.getCommentList();
        },
        props:["id"],   //接受父组件传递参数
    }
</script>
<style>
    .app_subcomment textarea{
        font-size: 14px;
    }
    .app_subcomment .cmt-list{
        margin:5px 0;
    }
    .app_subcomment .cmt-list .cmt-list-item{
        font-size: 12px;
    }
    .app_subcomment .cmt-list .cmt-list-item .cmt-title{
        line-height:30px;
        background: #ccc;
    }
    .app_subcomment .cmt-list .cmt-list-item .cmt-body{
        line-height: 30px;
        text-indent: 2em;
    }
</style>