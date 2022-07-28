<template>
  <div class="container" @mousewheel.prevent='gunlun'>
    <img src="../assets/index/11.jpg" alt="" class="img" id="img" 
    :style="{transform:'scale('+multiples+')'}"
     />
  </div>
</template>

<script>
export default {
  data() {
    return {
     multiples: 1
    }
  },
 
  mounted() {
    document.body.style.backgroundColor = "black";

    

},
methods:{
// 滚轮滑动
      gunlun(e) {
        let direction = e.deltaY > 0 ? 'down' : 'up'
        //console.log(e)
        if (direction === 'up') {
          // 滑轮向上滚动
         
          if(this.multiples>=4.2){
            this.multiples=4.2
          }else{
             this.multiples+=0.2
          }
        } else {
          // 滑轮向下滚动
          
          if(this.multiples<=0.5){
            this.multiples=0.5
          }else{
            this.multiples-=0.2
          }
        }

        // console.log(this.multiples)
      },
},


};
</script>

<style lang="scss" scoped>
.container {
  cursor: url("../assets/index/fada.svg") 0 0, auto;
}
.img {
  display: block;
  margin: 0 auto;
  height: 80vh;
  padding-top: 10vh;
}
</style>