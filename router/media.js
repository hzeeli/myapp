//1.引入模块
const express = require("express");
const pool=require("../pool");
//2.创建路由对象
const router = express.Router();
//3.处理请示
router.get("/audio",(req,res)=>{
    var sql = "SELECT mid,avater,author,mp3_url,pic,title,mp3_title,mp3_author FROM mp3_list";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
})


//4.导出当前路由模块
module.exports=router;