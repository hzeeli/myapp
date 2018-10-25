const mysql = require('mysql');
//连接mysql数据库的模块
var pool = mysql.createPool({
	host:'w.rdc.sae.sina.com.cn',
	user:'yw3w23y4oj',
	password:'wyl3z2125zkhw1k3m3m4m5lm3ilyk0j0my5l312y',
	database:'app_hzeemyapp',
	port:3307,
	connectionLimit:10
});
//导出连接数据库
module.exports = pool; 
