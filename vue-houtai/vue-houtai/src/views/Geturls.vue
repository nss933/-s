<template>
  <div style="padding: 30px 50px">
    <h1 style="color: #fff">Geturls</h1>
    <div
      id="a"
      style="
        height: 77vh;
        width: 77vw;
        background-color: #fff;
        padding: 30px;
        border-radius: 13px;
        overflow-x: hidden;
      "
    >
      <template v-for="(item, i) in data">
        <el-descriptions
          class="margin-top"
          :column="3"
          :size="size"
          border
          style="margin-top: 6vh"
        >
          <template slot="extra">
            <el-button type="primary" size="small" @click="del" v-blind:aa="33" :data-d="item.up_id"
>删除</el-button>
          </template>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-user"></i>
              用户名
            </template>
            {{ item.name }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-mobile-phone"></i>
              手机号
            </template>
            {{ item.phone }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-location-outline"></i>
              序号
            </template>
            {{ i + 1 }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              身份证正面
            </template>
            <img style="height: 10vw" :src="item.urls.split(',')[0]" />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              身份证
            </template>
            <img style="height: 10vw" :src="item.urls.split(',')[1]" />
          </el-descriptions-item>
        </el-descriptions>
      </template>
    </div>
  </div>
</template>


<script>
export default {
  data() {
    return {
      data: "",
    };
  },
  methods: {
    del(event) {
      console.log("event", event);
      this.axios.delete(`v1/uploadserver/remove?lid=${event.target.dataset.d}`)
      this.$router.go(0)
    },
  },
  mounted() {
    this.axios.get("v1/uploadserver/get").then((res) => {
      console.log(res);
      this.data = res.data.data;
      console.log("data", this.data);
    });
  },
};
</script>

<style lang="scss" scoped>
#a::-webkit-scrollbar {
  //隐藏滚动条
  display: none;
}
</style>