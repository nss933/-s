<template>
  <div style="padding: 30px">
    <!-- <h1>map</h1> -->
    <template>
      <div id="container"></div>
    </template>
  </div>
</template>
    </div>
</template>

<script>
import AMapLoader from "@amap/amap-jsapi-loader";

export default {

  
  data() {
    return {
      map: null,
      lat:null,
      lng:null,
    }
  },
  mounted() {
    // 获取地图
    AMapLoader.load({
      key: "efbd552ea6377c2d045c75fec010b799", // 申请好的Web端开发者Key，首次调用 load 时必填
      version: "2.0", // 指定要加载的 JSAPI 的版本，缺省时默认为 1.4.15
      plugins: ['AMap.ToolBar','AMap.Scale','AMap.HawkEye','AMap.MapType','AMap.Geolocation',
      'AMap.CitySearch','AMap.PlaceSearch','AMap.Weather' ], // 需要使用的的插件列表，如比例尺'AMap.Scale'等
    })
      .then((AMap) => {
      let  map = new AMap.Map("container",{
        zoom:15,//级别
        center:[116.397428, 39.90923]
      });
         //添加图层到地图
      var trafficLayer = new AMap.TileLayer.Traffic({
        zIndex: 10
      });
      map.add(trafficLayer);

     //添加点标记
      var marker = new AMap.Marker({
        position: [121.473701,31.230416]//位置
      })

      map.add(marker);

      //为marker标记绑定事件'
      marker.on('click', function (e) {
        console.log('当前位置:上海市人民政府')

        // 创建窗口对象
        var infoWindow = new AMap.InfoWindow({
          isCustom: true,  //使用自定义窗口
          content: `<div style="background:#fff;color:red; padding:10px;">上海市人民政府啦啦啦</div>`,
          offset: new AMap.Pixel(16, -45)
        })

        //打开窗口
        infoWindow.open(map, e.target.getPosition())
      })

      // 在图面添加工具条控件，工具条控件集成了缩放、平移、定位等功能按钮在内的组合控件
        map.addControl(new AMap.ToolBar({
          position: 'LT'
        }));
         // 在图面添加比例尺控件，展示地图在当前层级和纬度下的比例尺
        map.addControl(new AMap.Scale());

        // 在图面添加鹰眼控件，在地图右下角显示地图的缩略图
        map.addControl(new AMap.HawkEye({ isOpen: true }));

        // 在图面添加类别切换控件，实现默认图层与卫星图、实施交通图层之间切换的控制
        map.addControl(new AMap.MapType());
        // 在图面添加定位控件，用来获取和展示用户主机所在的经纬度位置
        map.addControl(new AMap.Geolocation({
          position: 'LB',
          offset: [20, 20]

        }));

       //加载城市 检索插件,查询当前城市
      AMap.plugin('AMap.CitySearch', function () {
        let citySearch = new AMap.CitySearch()
        citySearch.getLocalCity(function (status, result) {
          console.log(status, result.city)
        })
      })

      //位置信息搜索pol插件
      AMap.plugin('AMap.PlaceSearch', function () {
        let placeSearch = new AMap.PlaceSearch({
          city: '北京',
          map: map
        })
        placeSearch.search('娱乐场所', function (status, result) {
          console.log(status, result)
        })
      })

      //加载天气查询插件
      AMap.plugin('AMap.Weather', function () {
        //创建天气查询实例
       let weather = new AMap.Weather();

        //执行实时天气信息查询
        weather.getLive('宁波', function (err, data) {
          console.log(err, data);
        });
      });

      })

      .catch((e) => {
        console.log(e);
      });
  },
};
</script>


<style  scoped>
#container {
  padding: 0px;
  margin: 0px;
  width: 100%;
  height: 713px;
  /* background-color: red; */
  border-radius: 13px;
}
</style>