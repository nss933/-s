const express = require("express");
//引入连接池模块
const pool = require("../pool.js");
//引入路由器下模块
const r = express.Router();

//1.管理员登录接口（post /rootLogin）
//接口地址：http://127.0.0.1:3000/useroot/rootLogin
//请求方式：post
r.post("/rootLogin", (req, res, next) => {
  console.log(req.body);
  //判断是否为空
  // if(!req.body.dname){
  // 	res.send({code:401,msg:'用户名不能为空'})
  // 	return//阻止往后执行
  // }
  if (!req.body.dpwd) {
    res.send({ code: 401, msg: "密码名不能为空" });
    return; //阻止往后执行
  }
  // if(!req.body.demail){
  // 	res.send({code:401,msg:'邮箱不能为空'})
  // 	return//阻止往后执行
  // }
  if (!req.body.dphone) {
    res.send({ code: 401, msg: "电话不能为空" });
    return; //阻止往后执行
  }
  let dphone = req.body.dphone;
  let dpwd = req.body.dpwd;
  pool.query(
    "select * from admin where dphone=? && dpwd=?",
    [dphone, dpwd],
    (err, r) => {
      if (err) {
        next(err);
        return;
      }
      console.log(r);
      //成功结果是数组
      //如果是空数组，说明登录失败

      if (r.length === 0) {
        res.send({ code: 501, msg: "登陆失败" });
      } else {
        res.send({ code: 200, msg: "登录成功" });
      }
    }
  );
});
//2. 管理员注册接口(post  /rge)
//接口地址：http://127.0.0.1:3000/useroot/reg
//请求方式：post
r.post("/reg", (req, res) => {
  //console.log(md5('12345678'));
  // 获取用户名和密码信息
  let dname = req.body.dname;
  let dpwd = req.body.dpwd;
  //以dname为条件进行查找操作，以保证用户名的唯一性
  let sql = "SELECT COUNT(did) AS count FROM admin WHERE dname=?";
  pool.query(sql, [dname], (error, results) => {
    if (error) throw error;
    let count = results[0].count;
    if (count == 0) {
      // 将用户的相关信息插入到数据表
      sql = "INSERT admin(dname,dpwd) VALUES(?,?)";
      pool.query(sql, [dname, dpwd], (error, results) => {
        if (error) throw error;
        res.send({ message: "ok", code: 200 });
      });
    } else {
      res.send({ message: "user exists", code: 201 });
    }
  });
});

// 3.删除离职管理员接口(delete  /root)
// 接口地址：http://127.0.0.1:3000/useroot/root/4
//  请求方法：delete

r.delete("/root/:kw", (req, res) => {
  console.log(req.params);
  pool.query("delete from admin where did=?", [req.params.kw], (err, r) => {
    if (err) {
      throw err;
    }
    console.log(r);
    if (r.affectedRows === 0) {
      res.send({ code: 501, msg: "删除失败" });
    } else {
      res.send({ code: 200, msg: "删除成功" });
    }
  });
});
// 4.查询管理员接口(get /roots)
// 接口地址：http://127.0.0.1:3000/useroot/roots
//  请求方法get
r.get("/roots", (req, res) => {
  let sql = "select * from admin";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

// 5.修改管理员信息
// 接口地址：http://127.0.0.1:3000/useroot/revise
r.put("/revise", (req, res, next) => {
  // console.log('测通')
  console.log(req.body);
  let obj = req.body;
  pool.query("update admin set ? where did=?", [obj, obj.did], (err, r) => {
    if (err) {
      next();
      return;
    }
    console.log(r);
    if (r.affectedRows === 0) {
      res.send({ code: 501, msg: "修改失败" });
    } else {
      res.send({ code: 200, msg: "修改成功" });
    }
  });
});
//6.添加管理员信息接口
//管理员注册接口(post  /add)
//接口地址：http://127.0.0.1:3000/useroot/add

r.post("/add", (req, res) => {
  //获取请求主体中的信息
  let dname = req.body.dname;
  let dpwd = req.body.dpwd;
  let dphone = req.body.dphone;
  let demail = req.body.demail;

  //可以给数据进行一下非空判断,如果为空,就阻止插入数据库
  if (!dname & dpwd & dphone & demail) {
    res.send({ code: 401, msg: "not null" });
    return;
  }
  //准备SQL,并执行插入操作
  let sql = "insert into admin(dname,dpwd,dphone,demail) values(?,?,?,?)";
  pool.query(sql, [dname, dpwd, dphone, demail], (err, result) => {
    if (err) throw err;
    res.send({ code: 200, msg: "succeed" });
  });
});

//暴露路由器对象
module.exports = r;
