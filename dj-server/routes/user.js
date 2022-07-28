const express = require("express")
const pool = require("../pool.js")
const r = express.Router()

//用户手机号登录（post/dphone）
//接口地址：http://127.0.0.1:3000/users/dphone
//请求方式：post
r.post('/dphone', (req, res) => {
	//获取用户名和密码信息
	let dphone = req.body.dphone;
	let dpwd = req.body.dpwd;
	// SQL语句
	let sql = 'SELECT * FROM user WHERE dphone=? AND dpwd=?';
	pool.query(sql, [dphone, dpwd], (error, results) => {
	  if (error) throw error;
	  if(results.length == 0){ //登录失败
		res.send({message:'login failed',code:201});
	  } else {                 //登录成功
		res.send({message:'ok',code:200,result:results[0]});
	  }
	});
  
  });

//用户邮箱登录（post/deamil）
//接口地址：http://127.0.0.1:3000/users/demail
//请求方式：post
r.post('/demail', (req, res) => {
	//获取用户名和密码信息
	let demail = req.body.demail;
	let dpwd = req.body.dpwd;
	// SQL语句
	let sql = 'SELECT * FROM user WHERE demail=? AND dpwd=?';
	pool.query(sql, [demail, dpwd], (error, results) => {
	  if (error) throw error;
	  if(results.length == 0){ //登录失败
		res.send({message:'login failed',code:201});
	  } else {                 //登录成功
		res.send({message:'ok',code:200,result:results[0]});
	  }
	});
  
  });

// 用户邮箱注册接口(post/login_eamil)
//传递手机号dphone，获取传递的参数，执行SQL命令，查询数据库中是否存在该用户，如果有（{code:501,msg:"登陆失败"}），否则({code:200,msg:"登陆成功"})
r.post("/login_email", (req, res, next) => {
	var obj = req.body
	console.log(obj)
	//验证邮箱格式
	if (!/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(obj.demail)) {
		res.send({ code: 401, msg: "邮箱格式错误" })
		return
	} 
	//执行SQL命令，插入数据
	pool.query("insert into user set ?", [obj], (err, r) => {
		if (err) {
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		if (r.length === 0) {
			res.send({ code: 501, msg: "注册失败" })	
		} else {
			res.send({ code: 200, msg: "注册成功" })
		}
	})
})


//手机号登陆接口（post/login_phone），传递手机号dphone，获取传递的参数，执行SQL命令，查询数据库中是否存在该用户，如果有（{code:501,msg:"登陆失败"}），否则({code:200,msg:"登陆成功"})
r.post("/login_phone", (req, res, next) => {
	var obj = req.body
	console.log(obj)
	if (!/^1[3-9]\d{9}$/.test(obj.dphone)) {
		res.send({ code: 401, msg: "手机号格式错误" })
		return
	}
	//执行SQL命令
	pool.query("insert into user set ?", [obj], (err, r) => {
		if (err) {
			next(err)
			return
		}
		console.log(r)
		if (r.length === 0) {
			res.send({ code: 501, msg: "注册失败" })
		} else {
			res.send({ code: 200, msg: "注册成功" })
		}
	})
})



//修改用户接口(put /)，使用post传参方式传递编号，邮箱，手机，真实姓名，性别；获取传递的参数，执行SQL命令，修改成功，响应{code:200,msg:'修改成功'}，否则{code:501,msg:'修改失败'}
r.put("/", (req, res, next) => {
	//获取post传递的参数
	var obj = req.body
	console.log(obj)
	//验证是否为空，格式是否正确

	//执行SQL命令
	pool.query("update user set ? where did=?", [obj, obj.did], (err, r) => {
		if (err) {
			next(err)
			return
		}
		console.log(r)
		if (r.affectedRows === 0) {
			res.send({ code: 501, msg: '修改失败' })
		} else {
			res.send({ code: 200, msg: '修改成功' })
		}
	})
})


//参数列表user 删除数据接口（delete /delu）
//接口地址：http://127.0.0.1:3000/users/delu
//请求方式：delete
r.delete('/delu', (req, res, next) => {
  var obj = req.query
  console.log(req.query)

  //1.3执行SQL命令，插入数据
  pool.query('delete from user where did=? ', [obj.did], (err, r) => {
    if (err) {
      //如果SQL中有错误，交给下一个错误处理中间件
      next(err)
      //阻止往后执行
      return
    }
    console.log(r)
    if (r.affectedRows === 0) {
      res.send({ code: 201, msg: '删除失败' })
    } else {
      res.send({ code: 200, msg: '删除成功' })
    }
  })
})

module.exports = r