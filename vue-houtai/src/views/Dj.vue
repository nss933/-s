<template>
  <div>
    <div id="dj" @click="$router.push('/manage')"></div>
  </div>
</template>

    
<script>
import * as echarts from "echarts";
export default {
  data() {
    return {
      data: "",
    };
  },
  mounted() {
    var myChart = echarts.init(document.getElementById("dj"));
    var option = {
      graphic: {
        elements: [
          {
            type: "text",
            left: "center",
            top: "center",
            style: {
              text: "大疆无人机后台管理",
              fontSize: 80,
              fontWeight: "bold",
              lineDash: [0, 200],
              lineDashOffset: 0,
              fill: "transparent",
              stroke: "#000",
              lineWidth: 1,
            },
            keyframeAnimation: {
              duration: 3000,
              loop: true,
              keyframes: [
                {
                  percent: 0.7,
                  style: {
                    fill: "transparent",
                    lineDashOffset: 200,
                    lineDash: [200, 0],
                  },
                },
                {
                  // Stop for a while.
                  percent: 0.8,
                  style: {
                    fill: "transparent",
                  },
                },
                {
                  percent: 1,
                  style: {
                    fill: "#545c64",
                  },
                },
              ],
            },
          },
        ],
      },
    };
    // 绘制图表
    myChart.setOption(option);
  },
};
</script>

<style lang="scss" scoped>
#dj {
  width: 100vw;
  height: 100vh;
  //   background-color: red;
}
</style>