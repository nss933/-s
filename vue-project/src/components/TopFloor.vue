<template>
  <div>
    <div class="box-3">
      <div class="screen1-img">
        <img src="../assets/bgi-3.jpg" alt="" />
        <div class="screen-1-product_name">
          <div class="screen-1-product_name-content">
            <img
              src="/indexImg/logo.svg"
              alt=""
            />
            <h2>小有成就</h2>
          </div>
          <div class="screen-1-product_name-content-bottom">
            <router-link
              to="/one"
              class="screen-1-product_name-content-bottom-a"
            >
              <button class="show-btn">
                <span>观看视频</span>
                <i></i>
              </button>
            </router-link>
          </div>
        </div>
      </div>
    </div>
    <div class="screen2">
      <div class="center">
        <p class="p1">
          延续 Mini 系列的轻巧便携，DJI Mini 3 Pro 搭载 1/1.3
          英寸传感器，带来影像性能大跃升，不分昼夜，直出高品质画面；更将创新构型、智能功能、避障系统集于一身，全方位革新航拍体验。
        </p>
        <div class="screen2-img">
          <img src="../assets/air.png" alt="" />
        </div>
        <div class="screen2-icon">
          <ul>
            <li>
              <img
                src="/indexImg/1.svg"
                alt=""
              />
              <p>低于 249 克<sup>[1]</sup></p>
            </li>
            <li>
              <img
                src="/indexImg/2.svg"
                alt=""
              />
              <p>三向环境感知</p>
            </li>
            <li>
              <img
                src="/indexImg/3.svg"
                alt=""
              />
              <p>4K HDR 视频</p>
            </li>
          </ul>
          <ul>
            <li>
              <img
                src="/indexImg/4.svg"
                alt=""
              />
              <p>可选 34/47 分钟续航<sup>[2]</sup></p>
            </li>
            <li>
              <img
                src="/indexImg/5.svg"
                alt=""
              />
              <p>无损竖拍</p>
            </li>
            <li>
              <img
                src="/indexImg/6.svg"
                alt=""
              />
              <p>焦点跟随</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>
<style scoped>
* {
  padding: 0;
  margin: 0;
}
.screen1-img img {
  
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
}
.screen-1-product_name {
  width: 1200px;
  margin: 0 auto;
}
.screen-1-product_name-content {
  position: absolute;
  top: 40%;
  transform: translateY(-50%);
}
.screen-1-product_name-content img {
  /* height: 48px; */
  margin-bottom: 16px;
  max-width: 100%;
}
.screen-1-product_name-content h2 {
  font-size: 32px;
  color: #000;
  letter-spacing: -0.03em;
  font-weight: 600;
  line-height: 36px;
  width: 490px;
}
.screen-1-product_name-content-bottom {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.screen-1-product_name-content-bottom-a {
  display: inline-block;
  width: auto;
}
.show-btn {
  background: linear-gradient(#535759, #3b3e40);
  color: #fff;
  border-radius: 60px;
  position: relative;
  display: inline-flex;
  height: 40px;
  padding: 0 16px;
  justify-content: center;
  align-items: center;
  font-size: 16px;
  line-height: 20px;
  letter-spacing: -0.02em;
  font-weight: 400;
  text-align: center;
  transition: all 0.3s ease;
  border: none;
  margin-top: 32px;
  outline: none;
}
i {
  width: 16px;
  height: 16px;
  background-image: url(https://www1.djicdn.com/dps/c7f41d6dc3651480bd88aad6de822a3f.svg);
  background-size: cover;
  background-position: 50%;
  background-repeat: no-repeat;
  margin-left: 8px;
}
.screen2 {
  background-color: #eaeced;
}
.center {
  width: 1200px;
  padding: 128px 0;
  margin: 0 auto;
}
.p1 {
  line-height: 28px;
  font-size: 20px;
  color: rgba(0, 0, 0, 0.65);
  max-width: 794px;
  text-align: center;
  margin: 0 auto 36px;
}
.screen2-img img {
  display: block;
  width: 1200px;
  height: 600px;
  margin: 0 auto 16px;
}
.screen2-icon {
  width: 896px;
  margin: 0 auto;
}
ul {
  list-style: none;
  display: flex;
  justify-content: space-between;
  flex-wrap: nowrap;
}
li {
  width: 288px;
  text-align: center;
  margin-top: 48px;
}
.screen2-icon img {
  display: block;
  width: 64px;
  height: auto;
  margin: 0 auto 8px;
}
.screen2-icon p {
  line-height: 24px;
  font-size: 18px;
  font-weight: 600;
  word-wrap: break-word;
}
</style>
<style lang="scss" scoped>
</style>