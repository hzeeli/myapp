//1.引入模块
const express = require("express");
const pool=require("../pool");
//2.创建路由对象
const router = express.Router();
//3.处理请示
router.get("/list",(req,res)=>{
    var sql = "SELECT nid,avater,author,content,pic FROM news_list";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
})

//4.导出当前路由模块
module.exports=router;