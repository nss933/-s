<template>
  <div class="box">
    <div class="center">
      <div class="content-1-text">
        <div class="c-1-1">
          <h3>全天候拍摄</h3>
        </div>
        <div class="c-1-2">
          <p>应对自如</p>
        </div>
        <div class="c-1-3">
          <p>
            在日间，光与影更清晰。
            <br />
            在黑夜，天与地更纯净。
            <br />
            直出即大片，创作更随心。
          </p>
        </div>
      </div>
      <div class="content-1-pic">
        <video id="video2" muted>
          <source src="/indexMp4/2.mp4" />
        </video>
      </div>
      <div class="content-2-text">
        <div class="c-2-1">
          <h3>影像系统</h3>
        </div>
        <div class="c-2-2">
          <p>真Pro</p>
        </div>
        <div class="c-2-3">
          <p>
            在各种光线环境下 DJI Mini 3 Pro
            都有出色的影像表现，激发无限灵感。1/1.3 英寸影像传感器拥有双原生
            ISO，支持直出 HDR
            影像<sup>[3]</sup>，更高的动态范围令明暗部位细节得以保留，提升画面层次感。
          </p>
        </div>
      </div>
      <div class="content-2-pic">
        <video id="video3" muted>
          <source src="/indexMp4/3.mp4" />
        </video>
      </div>
      <div class="content-3-text">
        <div class="c-3-1">
          <h3>成像品质</h3>
        </div>
        <div class="c-3-2">
          <p>毫不逊色</p>
        </div>
        <div class="c-3-3">
          <p>
            支持录制 4K HDR 视频<sup>[3]</sup>和拍摄 4800 万像素 RAW
            格式照片，画面放大后，依然清晰细腻。同时支持 1080p/120fps
            慢动作摄影，在快节奏的生活中慢下来，发掘另一种乐趣。
          </p>
        </div>
      </div>
      <div class="content-3-pic">
        <router-link to="/one" class="pic-1">
          <div class="p-1-1">
            <h4>
              4K HDR
              <br />
              视频
            </h4>
            <img src="../assets/空心暂停图标.png" alt="" class="pic-1-1" />
          </div>
        </router-link>
      </div>
      <div class="content-4-text">
        <div class="left">
          <div class="left-top">
            <router-link to="/one" class="pic-2">
              <h4>
                1080p/120fps
                <br />
                慢动作视频
              </h4>
              <img src="../assets/空心暂停图标.png" alt="" class="pic-2-1" />
            </router-link>
          </div>
          <div class="left-footer">
            <router-link to="/one" class="pic-3">
              <h4>
                4k/60fps
                <br />
                视频
              </h4>
              <img src="../assets/空心暂停图标.png" alt="" class="pic-3-1" />
            </router-link>
          </div>
        </div>
        <router-link to="/img">
          <div class="right pic-4">
            <h4>
              4800万像素
              <br />
              照片
            </h4>
            <img src="../assets/index/fada.svg" alt="" class="pic-4-1" />
          </div>
        </router-link>
      </div>
      <div class="content-5-text">
        <div class="c-5-1">
          <h3>创意，任你发挥</h3>
        </div>
        <div class="c-5-2">
          <p>
            新增 D-Cinelike
            色彩模式，能记录更丰富的色彩细节，过渡平滑自然，让热爱创作的你有更广阔的调整空间，尽情挥洒灵感。
          </p>
        </div>
      </div>
      <div class="content-5-pic">
        <video class="video-5" id="video4" muted>
          >
          <source src="/indexMp4/4.mp4" />
          <img src="../assets/空心暂停图标.png" alt="" />
        </video>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    //给窗口添加鼠标滚动监听事假
    window.addEventListener("scroll", this.menu);
  },
  methods: {
    menu() {
      this.scroll = document.documentElement.scrollTop;
      //打印滚动距离
      // console.log(this.scroll)

      //video2播放
      if (this.scroll > 3300 && this.scroll < 4700) {
        video2.setAttribute("autoplay", "autoplay");
        //给视频标签添加循环播放---video标签属性。
        video2.setAttribute("loop", "loop");
        //播放视频
        video2.play();
        //console.log("2开始播放...");
      }

      //video3播放
      if (this.scroll > 4200 && this.scroll < 5648) {
        video3.setAttribute("autoplay", "autoplay");
        //给视频标签添加循环播放---video标签属性。
        video3.setAttribute("loop", "loop");
        //播放视频
        video3.play();
        // console.log("3开始播放...");
      }

      //video4播放
      if (this.scroll > 7000 && this.scroll < 8400) {
        video4.setAttribute("autoplay", "autoplay");
        //给视频标签添加循环播放---video标签属性。
        video4.setAttribute("loop", "loop");
        //播放视频
        video4.play();
        //console.log("4开始播放...");
      }
    },
  },
};
</script>
<style  scoped>
/* 鼠标悬浮 鼠标光标切换 */
.pic-1:hover {
  cursor: url("../assets/空心暂停图标.png") 0 0, auto;
}
.pic-1:hover .pic-1-1 {
  display: none;
}

.pic-2:hover {
  cursor: url("../assets/空心暂停图标.png") 0 0, auto;
}
.pic-2:hover .pic-2-1 {
  display: none;
}
.pic-3:hover {
  cursor: url("../assets/空心暂停图标.png") 0 0, auto;
}
.pic-3:hover .pic-3-1 {
  display: none;
}
.pic-4:hover {
  cursor: url("../assets/index/fada.svg") 0 0, auto;
}
.pic-4:hover .pic-4-1 {
  display: none;
}
* {
  margin: 0;
  padding: 0;
  text-decoration: none;
}
.box {
  background-color: black;
}
.center {
  padding: 128px 128px 0 128px;
  width: 1200px;
  margin: 0 auto;
}
.c-1-1 {
  padding-top: 64px;
}
.c-1-1 h3 {
  color: white;
  max-width: 693px;
  font-size: 40px;
  line-height: 48px;
  letter-spacing: -0.01em;
  margin-bottom: 3px;
}
.c-1-2 p {
  color: rgb(68, 68, 68);
  font-size: 40px;
  font-weight: 600;
  line-height: 1.4;
  background-image: linear-gradient(
    to right,
    rgb(137, 127, 227) 0%,
    rgb(245, 194, 124) 15%,
    rgb(68, 68, 68) 30%
  );
  background-clip: text;
  -webkit-background-clip: text;
  color: transparent;
  /* background-size: 300% 100%; */
}
.c-1-3 p {
  padding-top: 16px;
  color: rgba(255, 255, 255, 0.65);
  max-width: 795px;
  font-size: 18px;
  line-height: 28px;
  letter-spacing: -0.03em;
}
.content-1-pic {
  margin-top: 48px;
  border-radius: 16px;
  overflow: hidden;
}
.content-2-text {
  padding-top: 128px;
  width: 1200px;
}
.c-2-1 h3 {
  color: white;
  max-width: 693px;
  font-size: 40px;
  line-height: 48px;
  letter-spacing: -0.01em;
  margin-bottom: 3px;
}
.c-2-2 p {
  color: rgb(68, 68, 68);
  font-size: 40px;
  font-weight: 600;
  line-height: 1.4;
  background-image: linear-gradient(
    to right,
    rgb(0, 246, 255) 0%,
    rgb(0, 255, 138) 5%,
    rgb(68, 68, 68) 10%
  );
  background-clip: text;
  -webkit-background-clip: text;
  color: transparent;
  background-size: 300% 100%;
  padding-bottom: 20px;
}
.c-2-3 p {
  color: rgba(255, 255, 255, 0.65);
  max-width: 845px;
  font-size: 18px;
  line-height: 28px;
  letter-spacing: -0.03em;
}
.content-2-pic {
  margin-top: 48px;
  border-radius: 16px;
  overflow: hidden;
}
.content-3-text {
  padding-top: 128px;
  width: 1200px;
}
.c-3-1 h3 {
  color: white;
  max-width: 693px;
  font-size: 40px;
  line-height: 48px;
  letter-spacing: -0.01em;
  margin-bottom: 3px;
}
.c-3-2 p {
  color: rgb(68, 68, 68);
  font-size: 40px;
  font-weight: 600;
  line-height: 1.4;
  background-image: linear-gradient(
    to right,
    rgb(255, 234, 0) 0%,
    rgb(255, 114, 0) 5%,
    rgb(68, 68, 68) 10%
  );
  background-clip: text;
  -webkit-background-clip: text;
  color: transparent;
  background-size: 300% 100%;
  padding-bottom: 10px;
}
.c-3-3 p {
  color: rgba(255, 255, 255, 0.65);
  max-width: 845px;
  font-size: 18px;
  line-height: 28px;
  letter-spacing: -0.03em;
  padding-bottom: 45px;
}
.content-3-pic {
  border-radius: 16px;
  overflow: hidden;
}
.pic-1 {
  display: block;
  width: 1200px;
  height: 500px;
  outline: none;
  color: rgb(255, 255, 255);
  background-image: url("@/assets/index/3.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
}
.p-1-1 h4 {
  color: #fff;
  font-size: 36px;
  font-weight: 600;
  letter-spacing: -0.03em;
  position: absolute;
  top: 0;
  left: 0;
  padding: 32px;
}
.p-1-1 img {
  position: absolute;
  bottom: 0;
  right: 0;
  padding: 32px;
}
.content-4-text {
  display: flex;
  padding-top: 32px;
}
.content-4-text .left {
  padding-right: 32px;
}
.content-4-text .left-top {
  padding-bottom: 32px;
}
.content-4-text .left-top a {
  display: block;
  width: 584px;
  height: 583px;
  outline: none;
  color: rgb(255, 255, 255);
  background-image: url("@/assets/index/9.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
  border-radius: 16px;
}
.content-4-text .left-top h4 {
  color: #fff;
  font-size: 36px;
  font-weight: 600;
  letter-spacing: -0.03em;
  position: absolute;
  top: 0;
  left: 0;
  padding: 32px;
}
.content-4-text .left-top img {
  position: absolute;
  bottom: 0;
  right: 0;
  padding: 32px;
}
.content-4-text .left-footer a {
  display: block;
  width: 584px;
  height: 345px;
  outline: none;
  color: rgb(255, 255, 255);
  background-image: url("@/assets/index/10.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
  border-radius: 16px;
}
.content-4-text .left-footer h4 {
  color: #fff;
  font-size: 36px;
  font-weight: 600;
  letter-spacing: -0.03em;
  position: absolute;
  top: 0;
  left: 0;
  padding: 32px;
}
.content-4-text .left-footer img {
  position: absolute;
  bottom: 0;
  right: 0;
  padding: 32px;
}
.content-4-text .right {
  display: block;
  width: 584px;
  height: 960px;
  outline: none;
  color: rgb(255, 255, 255);
  background-image: url("@/assets/index/11.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
  border-radius: 16px;
}
.content-4-text .right h4 {
  color: #fff;
  font-size: 36px;
  font-weight: 600;
  letter-spacing: -0.03em;
  position: absolute;
  top: 0;
  left: 0;
  padding: 32px;
}
.content-4-text .right img {
  position: absolute;
  bottom: 0;
  right: 0;
  padding: 32px;
}
.content-5-text {
  padding-top: 128px;
}
.c-5-1 h3 {
  color: rgb(68, 68, 68);
  font-size: 40px;
  font-weight: 600;
  line-height: 1.4;
  background-image: linear-gradient(
    to right,
    rgb(255, 203, 62) 0%,
    rgb(165, 249, 46) 5%,
    rgb(68, 68, 68) 10%
  );
  background-clip: text;
  -webkit-background-clip: text;
  color: transparent;
  background-size: 300% 100%;
  padding-bottom: 20px;
}
.c-5-2 p {
  color: rgba(255, 255, 255, 0.65);
  max-width: 845px;
  font-size: 18px;
  line-height: 28px;
  letter-spacing: -0.03em;
  padding-bottom: 45px;
}
.content-5-pic {
  border-radius: 16px;
  overflow: hidden;
  padding-bottom: 256px;
}
.video-5 {
  position: relative;
}
.video-5 img {
  position: absolute;
  right: 0;
  bottom: 0;
  padding: 32px;
}
</style>
<style lang="scss" scoped>
</style>