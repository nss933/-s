
<template>
  <div>
    <!-- 页头 -->
    <div style="height: 56px; background-color: rgb(84, 92, 100)">
      <div class="nav">
        <span>欢迎超级管理员{{ this.$store.state.name }}登录</span>
        <span @click="goQuit">退出</span>
      </div>
    </div>
    <!-- 导航栏 -->
    <el-col
      :span="12"
      style="width: 240px; height: 100vh; background-color: rgb(84, 92, 100)"
    >
      <div class="demo-type" style="padding: 20px">
        <div>
          <el-avatar
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
        </div>
        <p style="color: #cfcfcf; font-size: 14px" class="el-icon-user">
          -禁言小亮
        </p>
      </div>

      <el-menu
        default-active="2"
        class="el-menu-vertical-demo"
        @open="handleOpen"
        @close="handleClose"
        background-color="#545c64"
        text-color="#282d2f"
        active-text-color="#fff"
      >
        <el-submenu index="1">
          <template slot="title">
            <i class="el-icon-location"></i>
            <span>首页</span>
          </template>
          <el-menu-item-group>
            <el-menu-item index="1-1" @click="$router.push('/manage/calendar')"
              >日历</el-menu-item
            >
            <el-menu-item index="1-2" @click="$router.push('/manage/map')"
              >全国地图网</el-menu-item
            >
          </el-menu-item-group>
        </el-submenu>
        <el-menu-item index="2" @click="$router.push('/manage')">
          <i class="el-icon-menu"></i>
          <span slot="title">首页</span>
        </el-menu-item>
        <el-menu-item index="3" @click="$router.push('/manage/docu')">
          <i class="el-icon-document"></i>
          <span slot="title">用户管理</span>
        </el-menu-item>
        <el-menu-item index="4" @click="$router.push('/manage/setup')">
          <i class="el-icon-setting"></i>
          <span slot="title">设置</span>
        </el-menu-item>
        <el-menu-item index="5" @click="$router.push('/manage/check')">
          <i class="el-icon-setting"></i>
          <span slot="title">查询身份证</span>
        </el-menu-item>
         <el-menu-item index="6" @click="$router.push('/manage/upload')">
          <i class="el-icon-setting"></i>
          <span slot="title">上传</span>
        </el-menu-item>
        
      </el-menu>
    </el-col>
    <!-- 主体 -->
    <div
      style="
        background-color: rgb(77, 88, 100);
        height: 100vh;
        margin-left: 240px;
      "
    >
      <router-view />
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    goQuit() {
      this.$store.commit("deleteName");
      this.$router.push("/");
    },
  },
};
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
}
el-col {
  width: 240px;
  height: 966px;
}
.nav {
  padding: 20px;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  span {
    display: inline-block;
    margin-right: 20px;
    //color: #b7cfcf;
    color: #fff;
  }
}
</style>