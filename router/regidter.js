const express=require("express")
var pool=require("../pool.js")
let router=express.Router();

router.get("/register",(req,res)=>{
	var uid=req.query.uid;
	var uname=req.query.uname;
	var upwd=req.query.upwd;
	console.log(uid)
	console.log(uname)
	console.log(upwd)

	var sql="insert into jm_user(uid,uname,upwd) VALUES(?,?,?)";
	pool.query(sql,[uid,uname,upwd],(err,result)=>{
		if (err) throw err;
		console.log(result)
		if (result.affectedRow==0)
		{
			res.json({code:-1,msg:"注册失败"});
		}else{
			res.json({cede:1,,msg:"注册成功"});
			}
	})
})
module.exports=router;