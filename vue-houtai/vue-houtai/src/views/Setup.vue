<template>
  <div style="padding: 30px">
    <h2 style="color:#fff;">常见问题</h2>
    <template>
      <el-table
        :data="
          tableData.filter(
            (data) =>
              !search || data.name.toLowerCase().includes(search.toLowerCase())
          )
        "
        style="width: 100%"
      >
       <el-table-column label="Name" prop="name"> </el-table-column>
        <el-table-column label="数量" prop="count"> </el-table-column>
       
        <el-table-column align="right">
          <template slot="header" slot-scope="scope">
            <el-input
              v-model="search"
              size="mini"
              placeholder="输入关键字搜索"
            />
          </template>
          <template slot-scope="scope">
            <!-- <el-button size="mini" @click="handleEdit(scope.$index, scope.row)"
              >Edit</el-button
            > -->
            <el-button
              size="mini"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)"
              >Delete</el-button
            >
          </template>
        </el-table-column>
      </el-table>
    </template>
  </div>
</template>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [],
      search: "",
    };
  },
  mounted(){
     this.axios.get("v1/common/get").then((res) => {
      console.log("res", res);
      res.data.data.forEach(item => {
        this.tableData.push({
        name:`${item.c_name}`,
        count:`${item.c_title.split('$$').length}条`,
        id:`${item.c_id}`,
      })
      });
    });
  },
  methods: {
    // handleEdit(index, row) {
    //   console.log(index, row);
    // },
    handleDelete(index, row) {
      console.log(index, row);
      this.axios.delete(`v1/common/remove?lid=${row.id}`)
      this.tableData.splice(index,1)
    },
  },
};
</script>

<style lang="scss">
</style>