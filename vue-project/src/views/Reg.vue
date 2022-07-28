<template >
  <div class="body" >
    <div id="d1"  :style="{ background: 'url(' + imageUrl + ')' }">
      <div class="login">
      <div class="img"><img src="/img/daj.svg" alt="" /></div>
      <h2>注册大疆</h2>
      <div class="a">
        <div class="a1" :class="{ active: n == 0 }" @click="n = 0">
          手机号注册
        </div>
        <div class="a2" :class="{ active: n == 1 }" @click="n = 1">
          邮箱注册
        </div>
      </div>

      <div class="main">
        <el-form
          :model="form"
          label-width="100px"
          :rules="rules"
          status-icon
          ref="form"
          class="log"
          v-show="n == 0"
        >
          <el-form-item label="手机号" prop="phone" class="ph">
            <el-input v-model="form.phone" placeholder="输入手机号"  @blur="test()" />
          </el-form-item>

           <Vcode :show="isShow" @success="success" @close="close" />
          <el-form-item label="密码" prop="pwd" class="pd">
            <el-input v-model="form.pwd" type="password" placeholder="密码"  @blur="test()"/>
          </el-form-item>

          <el-row>
              <el-button id="elbtn1"  @click="test1()" class="yz" type="info" :disabled="dis">点击验证</el-button>
            </el-row>

          <el-form-item class="btn">
            <el-button type="primary" @click="onSubmit()" id="elbtn" :disabled="disabled"
              >立即注册</el-button
            >
          </el-form-item>
        </el-form>

        <el-form
          :model="form"
          label-width="100px"
          :rules="rules"
          status-icon
          ref="form"
          class="log"
          v-show="n == 1"
        >
          <el-form-item label="邮箱号" prop="email" class="ph">
            <el-input v-model="form.email" placeholder="输入邮箱号" @blur="test2()"/>
          </el-form-item>

          <el-form-item label="密码" prop="pwd" class="pd">
            <el-input v-model="form.pwd" type="password" placeholder="密码" @blur="test2()"/>
          </el-form-item>

          <el-row>
              <el-button id="elbtn1"  @click="test1()" class="yz" type="info" :disabled="dis1">点击验证</el-button>
            </el-row>

          <el-form-item class="btn">
            <el-button type="primary" @click="onSubmit1()" id="elbtn2" :disabled="disabled"
              >立即注册</el-button
            >
          </el-form-item>
        </el-form>

        <div class="zhuce">
          <span>新用户</span>
          <span><router-link to="/login">登录</router-link></span>
        </div>

        <div class="foot">
          <p>注册遇到问题？</p>
          <router-link to="/common">常见问题</router-link>
          <span>联系客户</span>
        </div>
      </div>
      </div>
    </div>
    
  </div>
</template>


<script>
import Vcode from "vue-puzzle-vcode";
export default {
  data() {
    return {
      dis:'',
      dis1:'',
      disabled:'',
      isShow: false,
      p: "",
      imageUrl: '/img/2.jpg',
      n: 0,
      form: {
        // name:'',
        pwd: "",
        // upwd:'',
        phone: "",
        email: "",
      },

      rules: {
        // name:[
        //     {required:true,message:'姓名不能为空',trigger:'blur'},
        // ],
        pwd: [
          { required: true, message: "密码不能为空", trigger: "blur" },
          {
            pattern: /^\w{3}\d{6}$/,
            message: "请使用正确密码(前三位为小写字母,后六位数字)",
            trigger: "blur",
          },
        ],
        // upwd:[{ validator: validatePass2, trigger: 'blur' }],
        phone: [
          { required: true, message: "手机不能为空", trigger: "blur" },
          {
            pattern: /^1[3-9]\d{9}$/,
            message: "手机号格式不正确",
            trigger: "blur",
          },
        ],
        email: [
          { required: true, message: "邮箱号不能为空", trigger: "blur" },
          {
            pattern: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
            message: "邮箱格式不正确",
            trigger: "blur",
          },
        ],
      },
    };
  },
  components: {
    Vcode
  },
  methods: {
  
    onSubmit() {
      console.log("表单数据:", this.form);

      this.axios
        .post(
          "/users/login_phone",
          `dphone=${this.form.phone}&dpwd=${this.form.pwd}`
        )
        .then((res) => {
          if (res.data.code == 200) {
            console.log("注册成功...", res);
            alert("注册成功...", res);
           this.$router.push('/login')
            this.form.phone=''
            this.form.pwd=''

            //    this.$store.commit('updateUphone',this.form.phone)
            //  
          } else {
            console.log("注册失败...", res);
            alert("注册失败...", res);
          }
        });
    },

    onSubmit1() {
      console.log("表单数据:", this.form);

      this.axios
        .post(
          "/users/login_email",
          `demail=${this.form.email}&dpwd=${this.form.pwd}`
        )
        .then((res) => {
          if (res.data.code == 200) {
            console.log("注册成功...", res);
            alert("注册成功...", res);
            this.$router.push('/login')
            this.form.email=''
            this.form.pwd=''
           
          } else {
            console.log("注册失败...", res);
            alert("注册失败...", res);
          }
        });
    },

      test(){
      
      if(this.form.phone=='' || this.form.pwd==''){
        this.dis=true
      }else if(!/^1[3-9]\d{9}$/.test(this.form.phone) ||  !/^\w{3}\d{6}$/.test(this.form.pwd)){
        this.dis=true
      }
      else{
        this.dis=false
      }
    },
      test2(){
      
      if(this.form.email=='' || this.form.pwd==''){
        this.dis1=true
      }else if(!/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(this.form.email) ||  !/^\w{3}\d{6}$/.test(this.form.pwd)){
        this.dis1=true
      }
      else{
        this.dis1=false
      }
    },
     test1(){
      if( this.isShow = true){
        this.disabled=false
      }else{
         this.disabled=true
      }
     },

     success(msg) {
      this.isShow = false; // 通过验证后，需要手动隐藏模态框
      },
    // 用户点击遮罩层，应该关闭模态框
    close() {
      this.isShow =true;
    },
  },

  mounted() {
        let bg_img = [
       "/img/1c.jpg",
       "/img/2.jpg",
       " /img/3.jpg",
        "/img/4.jpg",
       "/img/5.jpg",
        ];

        let m = bg_img[Math.floor(Math.random() * bg_img.length)];
        this.imageUrl = m;
       // console.log(" this.imageUrl是", m);
      },
};
</script>






<style lang="scss" scoped>
* {
  margin: 0;
  padding: 0;
  user-select: none;
}

#d1 {
  // display: block;
  position: fixed;
    top: 0;
    left: 0;
    z-index: -1;
    width: 100vw;
    height: 100%;
    background-position: 50%;
    background-position-x: 50%;
    background-position-y: center;
    background-size: cover;
   
}

.login {
    width: 500px;
    height: 700px;
  position: relative;
  left: 900px;
  background-color: #fff;

  margin-top: 20px;

  .img {
    padding-top: 50px;
    margin: 0 50px;
  }
  h2 {
    margin: 20px 50px;
  }

  .a {
    color: #ddd;
    div.active {
      color: #000;
      border-bottom: 2px solid #000;
    }
    margin: 0 50px;
    border-bottom: 1px solid #ccc;
    display: flex;
    .a1,
    .a2 {
      a {
        text-decoration: none;
      }
      margin-right: 30px;

      padding-bottom: 20px;
    }
  }
}


.log {
  .yz,
  .ph,
  .pd,
  .btn {
    color: #000;
    font-weight: 700;
    display: block;
    width: 400px;
    margin:40px 0;
  }
  #elbtn,
  #elbtn2 {
    width: 300px;
    height: 45px;
    background-color: #000;
    color: #fff;
  }
  #elbtn1{
    margin: 0 auto;
     width: 300px;
     height: 40px;
  }
//  #elbtn1{
//       margin: 0 auto;
//       width: 300px;
//       height: 40px;
//    }

  
}


.zhuce {
  margin: 0 auto;
  padding-bottom: 5px;
  width: 400px;
  text-align: center;
  border-bottom: 1px solid #ccc;
  a {
    margin-left: 5px;
    text-decoration: none;
    color: #2697ff;
  }
}

.foot {
  margin: 20px auto;
  padding-bottom: 5px;
  text-align: center;
  p {
    margin: 5px;
  }
  span {
    margin: 5px;
    color: #2697ff;
  }
   a{
    text-decoration:none;
    color: #2697ff;
    }
}
</style>
* {
  margin: 0;
  padding: 0;
}

.login {
  background-color: #fff;
  width: 500px;
  height: 700px;
  margin-top: 20px;

  .img {
    padding-top: 50px;
    margin: 0 50px;
  }
  h2 {
    margin: 20px 50px;
  }

  .a {
    color: #ddd;
    div.active {
      color: #000;
      border-bottom: 2px solid #000;
      
    }
    margin: 0 50px;
    border-bottom: 1px solid #ccc;
    display: flex;
    .a1,
    .a2 {
      a {
        text-decoration: none;
      }
      margin-right: 30px;

      padding-bottom: 20px;
    }
  }
}

#d1 {
  margin: 0;
  padding: 0;
  width: 100vw;
  height: 100vh;
  user-select: none;
  position: absolute;
  background-size: 100% 100%;
  background-size: cover;
  background-position: center;
}
.login {
  position: absolute;
  left: 900px;
}
.log {
  .ph,
  .pd,
  .btn {
    color: #000;
    font-weight: 700;
    display: block;
    width: 400px;
    margin: 50px 0;
  }
  #elbtn,#elbtn1 {
    width: 300px;
    height: 45px;
    background-color: #000;
    color: #fff;
  }
}
.zhuce {
  margin: 0 auto;
  padding-bottom: 5px;
  width: 400px;
  text-align: center;
  border-bottom: 1px solid #ccc;
  a {
    margin-left: 5px;
    text-decoration: none;
    color: #2697ff;
  }
}

.foot {
  margin: 20px auto;
  padding-bottom: 5px;
  text-align: center;
  p {
    margin: 5px;
  }
  span {
    margin: 5px;
    color: #2697ff;
  }
}
</style>

