const express=require("express")
var pool=require("../pool.js")
let router=express.Router();
router.get("/login",(req,res)=>{
	var u=req.query.uname;
	var s=req.query.upwd;
	var sql="select uid from jm_user where uname=? and upwd=?";
	pool.query(sql,[u,s],(err,result)=>{
		if(err)throw err;
		if (result.length==0)
		{
			res.send({code:-1,msg:"用户名或者密码错误"});
		}else{
			res.send({code:1,msg:"登录成功",name:u});
			}
	})
});
module.exports=router;