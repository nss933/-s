//引入express模块
const express = require('express')
//引入连接池模块
const pool = require('../pool.js')
//创建路由器对象
const r = express.Router()
//1.常见问题新增接口(post/add) （增）
//接口地址：http://127.0.0.1:3000/v1/common/add
//请求方式：post
r.post('/add',(req,res)=>{
    //获取请求主体中的信息
    let c_name = req.body.name
    let c_title = req.body.title
    let c_details = req.body.details
    //可以给数据进行一下非空判断,如果为空,就阻止插入数据库
    if(!c_name && c_title && c_details){
        res.send({'code':401,'msg':'not null'})
        return
    }
    //准备SQL,并执行插入操作
    let sql = 'insert into f_common(c_name,c_title,c_details) values(?,?,?)'
    pool.query(sql,[c_name,c_title,c_details],(err,result)=>{
        if(err) throw err
        res.send({'code':200,'msg':'succeed'})
    })

})

//2.常见问题删除接口(delete/remove) （删）
//接口地址：http://127.0.0.1:3000/v1/common/remove?lid=33
//请求方式：delete
r.delete('/remove',(req,res)=>{
    let lid = req.query.lid //获取查询字符串中的id
    c_id = parseInt(lid) //需要把lid转为数值类型,否则SQL报错
    //给c_id做非空判断
    if(!c_id){
        res.send({'201':'lid not null'})
        return
    }
    //准备SQL语句,执行SQL操作
    let sql ='delete from f_common where c_id=?'
    pool.query(sql,c_id,(err,result)=>{
        if(err) throw err
        if(result.affectedRows > 0){//affected被影响Rows行数
            res.send({'code':200,'msg':'delet success'}) //删除成功
        }else{
            res.send({'code':501,'msg':'delete fail'})//删除失败
        }
    })
})


//3.常见问题修改接口(put/update)
//接口地址：http://127.0.0.1:3000/v1/common/update
//请求方式：put （改）
r.put('/update', (req,res) => {
	console.log(req.body)
	pool.query('update f_common set ? where c_id=?',[req.body,req.body.c_id],(err,result)=>{
		if(err) throw err
		if(result.affectedRows > 0){
			res.send({'code':200,'msg':'succeed'})
		}else{
			res.send({'code':501,'msg':'fail'})
		}
	})
})

//4.常见问题接口(get/get)

//接口地址：http://127.0.0.1:3000/v1/common/get
//请求方式：get （查）

r.get('/get', (req,res) => {
    console.log('测试')
    let sql = 'select * from f_common'
    pool.query(sql,(err,result) => {
		if(err) throw err
        res.send({'code':200,'msg':'succeed','data':result})
    })
})
//暴露路由器对象
module.exports = r