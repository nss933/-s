<template>
  <div>
    <div class="title">
      <div class="center">
        <h4>视频</h4>
      </div>
    </div>
    <div class="introduce">
      <div class="center">
        <h4>介绍视频</h4>
        <div class="line" style="margin-bottom:20px;"></div>
        <div class="middle">
          <img src="../assets/video/1.png" alt="" />
          <a @mouseover="active" @mouseleave="actives" @click="videoOne">
            <img :src="img1" alt="" />
          </a>
        </div>
        <div class="footer">
          <div>DJI Mini 3 Pro | 介绍视频</div>
          <div>2022-50-10</div>
        </div>
      </div>
    </div>
    <!-- 第二块 -->
    <div class="introduce two-introducte">
      <div class="center">
        <h4>教学视频</h4>
        <div class="line" style="margin-bottom:20px;"></div>
        <div class="two-middles">
          <div class="middles">
          <div class="middle">
            <img src="../assets/video/2.png" alt="" />
            <a @mouseover="activeTwo" @mouseleave="activesTwo" @click="videoTwo">
              <img :src="img2" alt=""  res="img"/>
            </a>
          </div>
          <div class="footer">
            <div>DJI Mini 3 Pro｜首次飞行指引</div>
            <div>2022-50-10</div>
          </div>
        </div>

        <div class="middles">
          <div class="middle">
            <img src="../assets/video/3.png" alt="" />
            <a @mouseover="activeThree" @mouseleave="activesThree" @click="videoThree">
              <img :src="img3" alt=""/>
            </a>
          </div>
          <div class="footer">
            <div>DJI Mini 3 Pro｜智能飞行</div>
            <div>2022-50-10</div>
          </div>
        </div>
        </div>
        
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
     img1:require('@/assets/video/6.png'),
     img2:require('@/assets/video/6.png'),
     img3:require('@/assets/video/6.png'),
     
    }
  },
  mounted() {
    document.body.style.backgroundColor = "rgb(247, 247, 247)";
    //this.$route.title='DJI Mini 3 Pro-视频教程01-DJI'
  },
  methods:{
    active(){
      this.img1=require('@/assets/video/4.png')
      //console.log('鼠标移入',this.img)
    },
     actives(){
      this.img1=require('@/assets/video/5.png')
      //console.log('鼠标移出',this.img1)
    },
     activeTwo(){
      this.img2=require('@/assets/video/4.png')
      //console.log('鼠标移入',this.img1)
    },
     activesTwo(){
      this.img2=require('@/assets/video/5.png')
     
    },
    activeThree(){
      this.img3=require('@/assets/video/4.png')
      
    },
     activesThree(){
      this.img3=require('@/assets/video/5.png')
     
    },
    videoOne(){

      this.$router.push('/one')
    },
    videoTwo(){
      this.$router.push('/one')
    },
    videoThree(){
     this.$router.push('/one')
    },
  },
};
</script>

<style lang="scss" scoped>

.center {
  width: 1200px;
  margin: 0 auto;
}
.title{
  margin-top: 90px;
}
.title h4 {
  margin: 12px;
  font-size: 32px;
  line-height: 48px;
  color: #3b3e40;
}
.introduce {
  background: #fff;
  //padding-top:24px;
  width: 1200px;
  margin: 0 auto;
  h4 {
    padding: 16px 24px;
    border-bottom: 1px solid #f0f1f2;
    font-size: 16px;
    line-height: 24px;
    color: #3b3e40;
  }
  .middle {
    //border: 1px solid red;
    //margin-right: 10px;
    display: inline-block;
    padding: 0 24px;
    width: 375px;
    position: relative;
    img:nth-child(1) {
      width: 100%;
    }
    a {
      opacity: 0.5;
      position: absolute;
      top: 50%;
      left: 50%;
      width: 64px;
      height: 64px;
      transform: translate(-50%, -50%);
      z-index: 2;
      transition: all 0.3s ease;
    }
  }
}
.footer {
  padding: 0 24px;
  margin-top: 7px;
  div:nth-child(1) {
    font-size: 16px;
    line-height: 24px;
    color: #3b3e40;
    overflow: hidden;
    max-height: 70px;
  }
  div:nth-child(2) {
    font-size: 10px;
    background: #f7f8f9;
    display: inline-block;
    padding: 3px 6px;
    margin-top: 8px;
    margin-bottom: 24px;
  }
}
.two-middles{
  display: flex;
}

.two-introducte{
  margin-bottom: 50px;
}
</style>