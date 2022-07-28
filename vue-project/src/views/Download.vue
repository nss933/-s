<template>
  <div class="download">
    <div class="title">
      <div class="center">
        <h1>下载</h1>
      </div>
    </div>

    <div class="app">
      <div class="center">
        <h4 style="margin:20px 0;">App应用程序</h4>
        <div class="line"></div>
        <div class="log-model">
          <img src="../assets/download/dj.png" alt="" />
          <a class="right">
            <div class="r1">DJI Fly</div>
            <a class="r2"
              >全新航拍界面简洁美观，便捷易用。支持 御 Mavic Mini、御 Mavic Air
              2、DJI Mini 2、DJI FPV、DJI Air 2S、DJI Mini SE、DJI Mavic 3、DJI
              Mini 3 Pro</a
            >
          </a>
        </div>
        <div class="line"></div>
        <ul>
          <li>
            <img src="../assets/download/1.svg" alt="" />
            <div>iOS 版本 V 1.6.8</div>
            <div>需要 iOS 11.0 或更高版本。</div>
            <a>
               <el-button type="text" @click="open">查看推荐机型</el-button>
            </a>
          </li>
          <li>
            <img src="../assets/download/10.png" style="width:135px;" alt="" />
            <div>Android 版本 V 1.6.8</div>
            <div>需要 Android 6.0 或更高版本。</div>
            <a>
              <el-button type="text" @click="openTwo">查看推荐机型</el-button>
            </a>
          </li>
          <li>
            <img src="../assets/download/1.jpg" style="width: 120px" alt="" />
            <!-- <p>iOS 版本 V 1.6.8</p>
            <p>需要 iOS 11.0 或更高版本。</p>
            <a>查看推荐机型</a> -->
          </li>
        </ul>
      </div>
    </div>
    <div class="software">
      <div class="center">
        <h3 class="title">软件与驱动</h3>
        <div class="line"></div>
        <div class="log-model">
          <img src="../assets/download/1.png" alt="" />
          <a class="right">
            <div class="r1">DJI Assistant 2 (消费机系列)</div>
            <a class="r2">支持消费无人机系列产品，包括Mavic系列。</a>
          </a>
        </div>
        <div class="line"></div>
        <ul class="compute">
          <li class="mac">
            <img src="../assets/download/2.png" alt="" />
            <div class="com-b">
              <div>Mac 版本 V2.1.10</div>
              <div>2021-05-11</div>
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/SG/DJI_Mini_3_Pro_No_RC_Safety_Guidelines_5_lan_v1.0.pdf">
                <span>pkg</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </div>
          </li>
          <li class="window">
            <img src="../assets/download/3.png" alt="" />
            <div class="com-b">
              <div>Windows 版本 V2.1.10</div>
              <div>2022-05-11</div>
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/UM/20220630/DJI_Mini_3_Pro_User_Manual_v1.2_CHS.pdf">
                <p>pkg</p>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </div>
          </li>
        </ul>
        <div class="line"></div>
        <div class="down" style="width:1100px; padding-right:0;">
          <ul>
            <li class="li1">
              <p>DJI Assistant 2 (消费机系列) 发布记录 V2.1.10</p>
              <p>2022-05-11</p>
            </li>
            <li class="li2">
              <a  href="https://dl.djicdn.com/downloads/dji_assistant/20220511/DJI+Assistant+2+(Consumer+Drones+Series)+%E5%8F%91%E5%B8%83%E8%AE%B0%E5%BD%95(2.1.10).pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
       
      </div>
    </div>

    <div class="tab">
      <h4>文档</h4>
      <div class="line"></div>
      <div class="down" >
          <ul>
            <li class="li1">
              <p>DJI Mini 3 Pro - 用户手册 v1.2</p>
              <p>2022-06-30</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/UM/20220630/DJI_Mini_3_Pro_User_Manual_v1.2_CHS.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
      <div class="line"></div>
       <!-- 第二个 -->
  <div class="down down2">
          <ul>
            <li class="li1">
              <p>DDJI Mini 3 Pro - 快速入门指南 v1.0</p>
              <p>2022-05-10</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/QSG/DJI_Mini_3_Pro_Quick_Start_Guide_29_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
        <!-- 第三个 -->
        <div class="line"> </div>
<div class="down">
          <ul>
            <li class="li1">
              <p>DJI Mini 3 Pro - 快速入门指南 (带屏遥控器版) v1.0</p>
              <p>2022-05-10</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/QSG/DJI_Mini_3_Pro_DJI_RC_Quick_Start_Guide_29_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
        <div class="line"></div>
        <!-- 第四个 -->
      <div class="down down2">
          <ul>
            <li class="li1">
              <p>DJI Mini 3 Pro - 快速入门指南 (单机) v1.0</p>
              <p>2022-05-10</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/QSG/DJI_Mini_3_Pro_No_RC_Quick_Start_Guide_29_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
        <!-- 第三个 -->
        <div class="line"> </div>
<div class="down">
          <ul>
            <li class="li1">
              <p>DDJI Mini 3 Pro - 安全概要 v1.0</p>
              <p>2022-05-11</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/QSG/DJI_Mini_3_Pro_No_RC_Quick_Start_Guide_29_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
        <div class="line"></div>
        <!-- 接下去 -->
    <div class="down down2">
          <ul>
            <li class="li1">
              <p>DJI Mini 3 Pro - 安全概要 (带屏遥控器版) v1.0</p>
              <p>2022-05-11</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/SG/DJI_Mini_3_Pro_DJI_RC_Safety_Guidelines_5_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
        <!-- 第三个 -->
        <div class="line"> </div>
<div class="down">
          <ul>
            <li class="li1">
              <p>DJI Mini 3 Pro - 安全概要 (单机) v1.0</p>
              <p>2022-05-11</p>
            </li>
            <li class="li2">
              <a href="https://dl.djicdn.com/downloads/DJI_Mini_3_Pro/SG/DJI_Mini_3_Pro_No_RC_Safety_Guidelines_5_lan_v1.0.pdf">
                <span>pdf</span>
                <img
                  src="../assets/download/xz.png"
                  alt=""
                  class="download-icon"
                />
              </a>
            </li>
          </ul>
        </div>
 </div>


  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  mounted(){
    document.body.style.backgroundColor='rgb(247, 247, 247)'
  },
  methods: {
    open() {
        this.$alert('机型：iPhone 13 Pro Max、iPhone 13 Pro、iPhone 13、iPhone 13 mini、iPhone 12 Pro Max、iPhone 12 Pro、iPhone 12、iPhone 12 mini、iPhone 11 Pro Max、iPhone 11 Pro、iPhone 11、iPhone XS Max、iPhone XS、iPhone XR、iPhone X、iPhone 8 Plus、iPhone 8  iOS 11.0 ', 'iOS 版本 V 1.6.8需要 iOS 11.0 或更高版本。', {
          confirmButtonText: '确定',
          
        });
      },

      openTwo() {
        this.$alert('机型：Samsung Galaxy S21，Samsung Galaxy S20，Samsung Galaxy S10+，Samsung Galaxy S10，Samsung Galaxy Note20，Samsung Galaxy Note10+ ，Samsung Galaxy Note9，HUAWEI Mate40 Pro，HUAWEI Mate30 Pro，HUAWEI P40 Pro，HUAWEI P30 Pro，HUAWEI P30，Honor 50 Pro，Mi 11，Mi 10，Mi MIX 4，Redmi Note 10，OPPO Find X3，OPPO Reno 4，vivo NEX 3，OnePlus 9 Pro，OnePlus 9，Pixel 6，Pixel 4，Pixel 3 XL', 
        'Android 版本 V 1.6.8需要 Android 6.0 或更高版本', {
          confirmButtonText: '确定',
         
        });
      }
  },
};
</script>

<style lang="scss" scoped>
*{
  margin: 0;
  padding: 0;
}
a{
  text-decoration: none;
}


.center {
  width: 1200px;
  margin: 0 auto;
}
.title{
  margin-top: 100px;
}
.title h1 {
  margin: 12px;
  
  font-size: 32px;
  line-height: 48px;
  color: #3b3e40;
  // padding-bottom: 48px;
  opacity: 0.85;
  letter-spacing: -0.03em;
 
}
.app {
  box-sizing: border-box;
  padding: 10px 10px 0 10px;
  background-color: #fff;
  width: 1200px;
  margin: 0 auto;
  margin-bottom: 20px;
}
.app > .center > h4 {
  font-weight: 600;
  font-size: 28px;
  color: #000;
  line-height: 32px;
  letter-spacing: -0.03em;
  padding-left: 0;
}
.log-model {
  padding: 14px 0 48px;
  display: flex;
  img {
    width: 48px;
    height: 48px;
  }
  .right {
    margin-left: 24px;
    .r1 {
      // font-size: 24px;
      // line-height: 28px;
      // letter-spacing: -0.03em;
      font-size: 16px;
      color: #3b3e40;
      line-height: 24px;
    }
    .r2 {
      font-size: 16px;
      color: #6c7073;
      line-height: 24px;
    }
  }
}
.app ul {
  display: flex;
  justify-content: space-around;
  padding: 48px 0;

  list-style: none;
  li {
    width: 220px;
    text-align: center;
    vertical-align: top;

    div:nth-child(2) {
      color: #3b3e40;
      font-size: 16px;
      text-align: center;
      font-weight: 500;
      margin-top: 16px;
    }
    div:nth-child(3) {
      padding-top: 8px;
      font-size: 14px;
      min-height: 48px;
      line-height: 24px;
    }
    a {
      font-size: 16px;
      color: #1897f2;
      line-height: 24px;
      cursor: pointer;
      display: block;
      text-align: center;
      p {
        font-size: 16px;
        color: #1897f2;
        line-height: 24px;
      }
    }
  }
}
.software {
  width: 1200px;
  margin: 0 auto;
  background-color: #fff;
  padding: 10px 10px 0 10px;
  box-sizing: border-box;

  .title{
    margin: 20px 0;
  }
}
.software h3 {
  font-weight: 600;
  font-size: 28px;
  color: #000;
  line-height: 32px;
  letter-spacing: -0.03em;
  padding-left: 0;
}
.line {
  border-bottom: 1px solid #f0f1f2;
}
.compute {
  height: 78px;
  list-style: none;
  vertical-align: baseline;
  padding: 32px 24px;
  display: flex;
  justify-content: space-between;
  li {
    margin-right: 16px;
    img {
      width: 64px;
      height: 64px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 16px;
    }
    .com-b {
      flex: 1;
      div:nth-child(1) {
        font-size: 16px;
        font-weight: 500;
        color: #3b3e40;
      }
      div:nth-child(2) {
        color: #9fa3a6;
        font-size: 16px;
        line-height: 24px;
      }
      a {
        flex-wrap: wrap;
        margin-top: 8px;
        display: flex;
        align-items: center;
        margin-right: 16px;
        font-size: 16px;
        color: #1897f2;
        line-height: 24px;
      }
    }
  }
  .download-icon {
    width: 16px;
    height: 16px;
    vertical-align: middle;
    margin-left: 4px;
  }
}
.mac {
  display: flex;
  flex: 1;
  justify-content: flex-start;
}
.window {
  display: flex;
  flex: 1;
  justify-content: flex-start;
}

.down {
  
  box-sizing: border-box;
  padding: 24px;
  background: #fff;
  ul {
      
    box-sizing: border-box;
    margin: 0;
    list-style: none;
    background: #f7f9fa;
    padding: 16px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    .li1 {
      
      width: 774px;
      display: flex;
      p:nth-child(1) {
         line-height: 24px;
      height: 24px;
        width: 387px;
        display: inline-block;
        font-size: 14px;
        color: #3b3e40;
      }
      p:nth-child(2) {
         line-height: 24px;
      height: 24px;
        width: 387px;
        text-align: center;
        display: inline-block;
        flex: 1;
        font-size: 14px;
        color: #3b3e40;
      }
    }
    .li2 {
     
      text-align: right;
      width: 378px;
      font-size: 14px;
      color: #3b3e40;
      a {
        color: #1897f2;
        //vertical-align: middle;
        font-size: 16px;
        line-height: 24px;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        display: block;
        margin-top: 12px;
        img {
          width: 16px;
          height: 16px;
          vertical-align: middle;
          margin-left: 4px;
        }
      }
    }
  }
}

.tab {
  width: 1200px;
  margin: 0 auto;
  box-sizing: border-box;
  margin-top: 20px;
  padding: 20px;
  background-color: #fff;
  margin-bottom: 50px;
   border-bottom: 1px solid #f0f1f2;

   h4{
    padding: 0 16px;
    font-size: 24px;
    line-height: 24px;
    color: #3b3e40;
    font-weight: 500;
    // border-bottom: 1px solid #f0f1f2;
    text-align: left;
   }
}
.down2 ul{
  background-color: #fff;
  
}
</style>