<template>
  <div>
    <nav class="nav">
      <div class="nav-container">
        <div class="product-title">
          <router-link to="/"  @mouseover.native="n=0" :class="{active:n==0}" @mouseleave.native="n=6">DJI Mini 3 Pro</router-link>
        </div>
        <ul class="nav-right">
          <li>
            <router-link to="/tec" @mouseover.native="n=5" :class="{active:n==5}"  @mouseleave.native="n=6">技术参数</router-link>
          </li>
          <li>
            <router-link to="/compare"  @mouseover.native="n=1" :class="{active:n==1}"  @mouseleave.native="n=6">机型比较</router-link>
          </li>
          <li>
            <router-link to="video"  @mouseover.native="n=2" :class="{active:n==2}"  @mouseleave.native="n=6">视频</router-link>
          </li>
          <li>
            <router-link to="download"   @mouseover.native="n=3" :class="{active:n==3}"  @mouseleave.native="n=6">下载</router-link>
          </li>
          <li>
            <router-link to="common"  @mouseover.native="n=4" :class="{active:n==4}"  @mouseleave.native="n=6">常见问题</router-link>
          </li>
          <li>
            <div @mouseenter="enter" @mouseleave="leave">
              <div style="line-height: 64px">
                <img
                  style="width: 20px; line-height: 64px"
                  src="../assets/login.png"
                  alt=""
                />
              </div>
              <div v-show="show" class="reslog" >
                <div v-show="!$store.state.name">
                   <router-link to="/login"><a style="color:black;">登录</a></router-link>
                  
               <router-link to="/reg"> <p style="color:black;">注册</p></router-link>
                </div>
                <div v-show="$store.state.name">
                  <a style="color:black;">欢迎{{this.$store.state.name}}登录</a>
                 
                  <p @click="$store.commit('deleteName')">退出</p>
                </div>
              </div>
              
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false,
      n:6,
    };
  },
  methods: {
    enter() {
      //console.log("鼠标进入");
      this.show = true;
    },
    leave() {
      //console.log("鼠标出来");
      this.show = false;
    },
  },
};
</script>

<style lang="scss" scoped>

* {
  margin: 0;
  padding: 0;
  text-decoration: none;
  list-style: none;
  user-select: none;
}
.nav {
  background-color: rgba(35, 37, 38, 0.9);
  width: 100%;
  height: 64px;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 20;

}
.nav-container {
  height: 64px;
  width: 1200px;
  display: flex;
  margin-left: auto;
  margin-right: auto;
  align-items: center;
  justify-content: space-between;
}
.product-title {
  font-size: 14px;
  line-height: 64px;
  font-weight: 400;
  cursor: pointer;
}
.product-title a {
  color: white;
}
.nav-right {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  text-transform: none;
   li {
  height: 100%;
  line-height: 64px;
  padding: 0 16px;
}
}

.nav-right a {
  color: white;
}
.reslog {
  background-color: white;
  position: absolute;
  font-size: 14px;
  top: 50px;
  font-weight: 500;
  width: 100px;
  text-align: center;
  border-radius: 3px;
}
.active {
  //color: #FFA500!important;
 color: #919699!important;
}
</style>