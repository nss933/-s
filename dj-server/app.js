const express=require('express')
const app=express()
app.listen(3000,()=>{
	console.log('服务器已启动')
})
//引入参数路由器
const paramsRouter=require('./routes/params.js')
//引入用户路由器
const userRouter=require("./routes/user.js")
//引入管理员路由器
const userootRouter=require('./routes/useroot.js')
//引入常见问题路由
const commonRouter=require('./routes/common.js')
//引入cors模块
const cors=require('cors')

//解决跨域报错
app.use(cors());



//中间件
//将post传递参数转对象
app.use(express.urlencoded({
	extended:true
}))


//挂载路由器，路由器下的路由成为WEB服务器下的路由
//添加前缀/v1/users
app.use('/params',paramsRouter)
//添加错误处理中间件，拦截所有的错误
app.use((err,req,res,next)=>{
	//err接受到的路由传递过来的错误
	console.log(err)
	//响应给前端
	res.send({code:500,msg:'服务器端错误'})
})

//用户路由挂载
app.use("/users",userRouter)

//管理员路由挂载
app.use('/useroot',userootRouter)

//常见问题挂载路由
app.use('/v1/common',commonRouter)