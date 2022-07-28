const express=require('express')
//引入连接池模块
const pool=require('../pool.js')
//引入路由器下模块
const r=express.Router()


//1.参数列表params 查询数据接口（get /seap）
//接口地址：http://127.0.0.1:3000/params/seap
//请求方式：get
r.get('/seap',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from params ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})


//2.参数列表params 插入数据接口（post /insp）
//接口地址：http://127.0.0.1:3000/params/insp
//请求方式：post
r.post('/insp',(req,res,next)=>{
	var obj=req.body
	console.log(req.body)
	
	//1.3执行SQL命令，插入数据
	pool.query('insert into params set ? ',[obj],(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r.affectedRows===0){
			res.send({code:201,msg:'插入失败'})
		}else{
			res.send({code:200,msg:'插入成功'})
		}
	})
	
})


//3.参数列表params 删除数据接口（delete /delp）
//接口地址：http://127.0.0.1:3000/params/delp
//请求方式：delete
r.delete('/delp',(req,res,next)=>{
	var obj=req.query
	console.log(req.query)
	
	//1.3执行SQL命令，插入数据
	pool.query('delete from params where pid=? ',[obj.pid],(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r.affectedRows===0){
			res.send({code:201,msg:'删除失败'})
		}else{
			res.send({code:200,msg:'删除成功'})
		}
	})
	
})

//4.参数列表params 修改数据接口（put /putp）
//接口地址：http://127.0.0.1:3000/params/putp
//请求方式：put
r.put('/putp',(req,res,next)=>{
	console.log('测通')
	console.log(req.body)

	pool.query('update params set ? where pid=?',[req.body,req.body.pid],(err,r)=>{
		if(err){
			next()
			return
		}
		console.log(r)
		if(r.affectedRows===0){
			res.send({code:501,msg:'修改失败'})
		}else{
			res.send({code:200,msg:'修改成功'})
		}
	})

})

// 二,飞行器列表aerobat   
//飞行器列表aerobat 查询数据接口（get /aerobat）
//接口地址：http://127.0.0.1:3000/params/aerobat
//请求方式：get
r.get('/aerobat',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from aerobat ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})

//三,云台列表cloud
//云台列表cloud 查询数据接口（get /clo）
//接口地址：http://127.0.0.1:3000/params/clo
//请求方式：get
r.get('/clo',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from cloud ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})


//四,感知系统 PerceptionSystem
//云台列表PerceptionSystem 查询数据接口（get /per）
//接口地址：http://127.0.0.1:3000/params/per
//请求方式：get
r.get('/per',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from PerceptionSystem ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})


//五,相机camera
//云台列表camera 查询数据接口（get /camera）
//接口地址：http://127.0.0.1:3000/params/camera
//请求方式：get
r.get('/camera',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from camera ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})

//遥控器remotecontrol
//六 ,遥控器remotecontrol 查询数据接口（get /rem）
//接口地址：http://127.0.0.1:3000/params/rem
//请求方式：get
r.get('/rem',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from remotecontrol ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})

//充电器charger
//七,充电器charger 查询数据接口（get /charger）
//接口地址：http://127.0.0.1:3000/params/charger
//请求方式：get
r.get('/charger',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from charger ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})

//智能飞行电池battery
//八,充电器charger 查询数据接口（get /battery）
//接口地址：http://127.0.0.1:3000/params/battery
//请求方式：get
r.get('/battery',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from battery ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})


//APP图传 transmission
//九,充电器charger 查询数据接口（get /tra）
//接口地址：http://127.0.0.1:3000/params/tra
//请求方式：get
r.get('/tra',(req,res,next)=>{

	//1.3执行SQL命令，查询数据
	pool.query('select * from transmission ',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if(r){
			res.send({code:200,msg:'查询成功',data:r})
		}else{
			res.send({code:201,msg:'查询失败'})
		}
	
	})
	
})
//暴露路由器对象
module.exports=r

