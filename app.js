//1.1 引入项目所需的包
const express = require('express');
const bodyParser = require('body-parser');
//1.2 加载路由模块
const routerBannerList=require("./router/bannerlist");
const routerArticleList=require("./router/articlelist");
const routerNewsList=require("./router/news");
const routerMediaList=require("./router/media");
//2使用express构建服务器
var app = express();
//2.1加载处理跨域模块
const cors= require("cors");
//2.2允许哪个地址跨域访问
app.use(cors({
	//脚手架地址
	origin:["http://hzeemyapp.applinzi.com/:5050"],
	credentials:true
}))
//2.3
app.listen(5050,()=>{
    console.log('listening 5050……');
});

app.use(bodyParser.urlencoded({extended:false}));
//4.指定静态目录  __dirname当前所有目录完整路径
app.use(express.static(__dirname+"/public"));


//挂载路由
app.use("/bannerlist",routerBannerList);
app.use("/articlelist",routerArticleList);
app.use("/news",routerNewsList);
app.use("/media",routerMediaList);