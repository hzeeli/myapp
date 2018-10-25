//1.引入模块
const express = require("express");
const pool=require("../pool");
//2.创建路由对象
const router = express.Router();
//3.处理请示
router.get("/list",(req,res)=>{
    var sql = "SELECT aid,avater,author,ptime,title,pic_url FROM article_list";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
})
//
router.get("/find",(req,res)=>{
	var id = req.query.id;
	var sql= "SELECT `title`,`pic_url`, `content1`,`content2`,`content3`,`content4`,`content4`,`c_p1`,`c_p2`,`c_p3`,`c_p4`, `avater`, `ptime`,`author` FROM `article_list` WHERE aid = ?";
	pool.query(sql,[id],(err,result)=>{
        if(err)  throw err;
			res.send({code:1,msg:result});
    })
})


//4.导出当前路由模块
module.exports=router;