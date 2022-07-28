
<template>
  <div v-if="data" class="common">
    <template>
      <h1>常见问题</h1>
      <div style="background-color: #fff; position: relative">
        <div class="g"></div>
        <!-- 盖条 -->
        <el-tabs :tab-position="tabPosition">
          <el-tab-pane
            :label="item.c_name"
            class="pane"
            v-for="item in data.data"
            :key="item.c_id"
          >
            <h2>{{ item.c_name }}</h2>
            <el-collapse @change="handleChange" id="el">
              <el-collapse-item
                :title="item.c_title.split('$$')[i - 1]"
                v-for="i in item.c_title.split('$$').length"
                :key="i"
              >
                <div>
                  {{ item.c_details.split("$$")[i - 1] }}
                </div>
              </el-collapse-item>
            </el-collapse>
          </el-tab-pane>
        </el-tabs>
      </div>
    </template>
  </div>
</template>
<script>
</script>
<script>
export default {
  data() {
    return {
      tabPosition: "left",
      data: "",
    };
  },
  mounted() {
    this.axios.get("v1/common/get").then((res) => {
      console.log(res);
      this.data = res.data;
    });
  },
  methods: {
    handleChange(val) {
      console.log(val);
    },
  },
};
</script>

<style>
.g {
  background-color: #f0f1f2;
  width: 12px;
  height: 100%;
  position: absolute;
  z-index: 3;
  left: 23%;
}
body {
  background-color: #f0f1f2;
}
</style>
<style>
.common {
  width: 1200px;
  margin: 0 auto;
}
.el-tabs__nav-scroll {
  width: 288px;
}
.el-tabs--left .el-tabs__item.is-left {
  text-align: left;
  font-size: 16px;
  padding: 12px 24px;
}
.el-tabs__item:hover {
  color: rgba(0, 0, 0, 0.85);
}
.el-tabs__item.is-active {
  color: rgba(0, 0, 0, 0.85);
}
.el-tabs__nav-scroll {
  background-color: #fff;
  z-index: -1;
}
.el-tabs__content {
  background-color: #fff;
  padding: 48px 48px 56px;
}
.el-tabs__header .is-left {
  height: 100%;
}
.is-active {
  color: #000 !important;
}
.el-tabs__item:hover {
  background: #f0f1f2;
}
</style>