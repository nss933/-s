<template>
  <div style="position: relative; height: 100%; width: 100%">
    <div id="e"></div>
    <div id="e2"></div>
    <div id="e3">
      <div class="block">
  <el-timeline>
    <el-timeline-item timestamp=" 2022/7/12" placement="top">
      <el-card>
        <h4>更新 大疆无人机 模板</h4>
        <p>王小虎 提交于 2022/7/12 20:46</p>
      </el-card>
    </el-timeline-item>

    <el-timeline-item timestamp="2022/7/22" placement="top">
      <el-card>
        <h4>更新 50年以后</h4>
        <p>王老虎 提交于 2022/7/22 20:46</p>
      </el-card>
    </el-timeline-item>
    <el-timeline-item timestamp="2022/7/23" placement="top">
      <el-card>
        <h4>更新 500年以后</h4>
        <p>王干虎 提交于 2022/7/23 20:46</p>
      </el-card>
    </el-timeline-item>
  </el-timeline>
</div>
    </div>
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
    this.axios.get("v1/common/get").then((res) => {
      //常见问题
      console.log(res);
      let data = {
        name: [],
        sum: [],
      };
      res.data.data.forEach((item) => {
        data.name.push(item.c_name);
        data.sum.push(item.c_title.split("$$").length);
      });
      // console.log('name',data.name,'sum',data.sum)
      var myChart = echarts.init(document.getElementById("e"));
      var option = {
        title: {
          text: "常见问题统计表",
          textStyle: {
            color: "#fff",
          },
        },
        xAxis: {
          type: "category",
          data: data.name,
        },
        yAxis: {
          type: "value",
        },
        series: [
          {
            data: data.sum,
            type: "line",
          },
        ],
      };
      // 绘制图表
      myChart.setOption(option);
    });

    this.axios.get("useroot/roots").then((res) => {
      //管理员
      console.log(res);
      let data = {
        legendData: [],
        seriesData: [],
      };
      res.data.forEach((item) => {
        data.legendData.push(item.dname);
        data.seriesData.push({ name: item.dname, value: item.dpwd });
      });
      console.log("data", data);
      var myChart = echarts.init(document.getElementById("e2"));
      var option = {
        title: {
          text: "管理员统计表",
          left: "center",
          textStyle: {
            color: "#fff",
          },
        },
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)",
        },
        legend: {
          type: "scroll",
          orient: "vertical",
          right: 10,
          top: 20,
          bottom: 20,
          data: data.legendData,
        },
        series: [
          {
            name: "密码",
            type: "pie",
            radius: "55%",
            center: ["40%", "50%"],
            data: data.seriesData,
            emphasis: {
              itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: "rgba(0, 0, 0, 0.5)",
              },
            },
          },
        ],
      };

      // 绘制图表
      myChart.setOption(option);
    });
    // var myChart = echarts.init(document.getElementById("e3"));
    // var option = {
    //   backgroundColor: config.backgroundColor,
    //   graphic: {
    //     elements: createElements(),
    //   },
    // };
    // myChart.setOption(option);
  },
};
</script>

<style lang="scss" scoped>
#e {
  position: absolute;
  width: 45.5%;
  height: 42.5%;
  top: 5%;
  left: 3%;
  // background-color: red;
}
#e2 {
  position: absolute;
  width: 45.5%;
  height: 42.5%;
  top: 5%;
  right: 3%;
  // background-color: red;
}
#e3 {
  position: absolute;
  width: 94%;
  height: 42.5%;
  left: 3%;
  bottom: 3%;
  // background-color: red;
}
</style>