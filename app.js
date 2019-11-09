const http=require("http");//引入http模块
const express=require("express")//引入express模块
const routerDate=require("./router/index_data");
const routerLogin=require("./router/login")
let app=express();
let server=http.createServer(app);
server.listen(3000);
console.log("服务器启动完成");

app.use("/index_data",routerDate);
app.use("/login",routerLogin);


























