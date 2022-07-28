<template>
  <div>
    <my-header v-show="!$route.meta.place" />
    <a title="返回顶部" id="btnTop" @click="returnTop"
      ><img src="./assets/shouye1.png" alt="" />
    </a>
    <router-view />
    <my-footer v-show="!$route.meta.videos" />
  </div>
</template>

<script>
import MyFooter from "./components/MyFooter.vue";
import MyHeader from "./components/MyHeader.vue";
export default {
  components: { MyHeader, MyFooter },
  mounted() {
    window.addEventListener("scroll", this.top);
  },
  methods: {
    top() {
      if (
        document.body.scrollTop > 1000 ||
        document.documentElement.scrollTop > 1200
      ) {
        document.getElementById("btnTop").style.display = "block";
      } else {
        document.getElementById("btnTop").style.display = "none";
      }
    },
    returnTop() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    },
  },
};
</script>

<style lang="scss" >
html {
  scroll-behavior: smooth;
}
* {
  margin: 0;
  padding: 0;
}
a {
  text-decoration: none;
}
</style>
<style scoped>
#btnTop {
  display: none;
  text-align: center;
  position: fixed;
  bottom: 80px;
  height: 60px;
  width: 60px;
  right: 20px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: #f8f9fb;
  color: gray;
  cursor: pointer;
  border-radius: 50%;
}
#btnTop:hover {
  background-color: #c8ceda;
  opacity: 0.5;
}
#btnTop img {
  width: 60px;
}
</style>