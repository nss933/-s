<template>
<div>
<img src="../assets/videomp4/11.png" id="imgq" class="img-quit" alt="">
  <div class="vieo-box">
    <img src="../assets/videomp4/10.jpg" alt="" class="img-sm" id="imgs" />
    <img src="../assets/videomp4/1.png" alt="" class="img-lg" id="imgl" />
    <video
      src="/videoMp4/720.mp4"
      width="640"
      height="360"
      controls
      class="view"
      id="view"
    ></video>
  </div>
  </div>
</template>

<script>
export default {
  mounted() {
    document.body.style.backgroundColor = "#232526";

    //点击播放,并且图片消失
    imgs.onclick = function () {
      imgl.style.display = "none";
      imgs.style.display="none"
      view.play();
    };
    imgq.onclick=function(){
        history.go(-1)
    }
    //点击退出 历史回退
    

    // 点击视频下方包房按钮  也要生效
   view.onplay=function(){
      imgl.style.display = "none";
      imgs.style.display="none"
}
  },
};
</script>

<style lang="scss" scoped>
* {
  margin: 0;
  padding: 0;
}

.vieo-box {
  padding-top: 5vh;
  //border: 1px solid red;
  width: 1200px;
  margin: 0 auto;
  position: relative;
}
.view {
  width: 100%;
  height: 100%;
}
.img-lg {
  position: absolute;
  width: 100%;
}
.img-sm {
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 10;
  width: 80px;
  transform: translate(-50%, -50%);
}
.img-quit{
    position: absolute;
    top: 20px;
    right:1%;
    width: 45px;
}
</style>