<template>
  <div style="padding: 30px">
    <template>
      <h2 style="color: #fff">User Management</h2>
      <el-table :data="tableData" style="width: 100%">
        <el-table-column label="序号" width="180">
          <template slot-scope="scope">
            <i class="el-icon-caret-right"></i>
            <span style="margin-left: 10px">{{ scope.row.did }}</span>
          </template>
        </el-table-column>
        <el-table-column label=" 用户名" width="180">
          <template slot-scope="scope">
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.dname }}</el-tag>
            </div>
          </template>
        </el-table-column>
        <el-table-column label=" 密码" width="180">
          <template slot-scope="scope">
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.dpwd }}</el-tag>
            </div>
          </template>
        </el-table-column>
        <el-table-column label=" 手机号" width="180">
          <template slot-scope="scope">
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.dphone }}</el-tag>
            </div>
          </template>
        </el-table-column>
        <el-table-column label=" 邮箱" width="180">
          <template slot-scope="scope">
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.demail }}</el-tag>
            </div>
          </template>
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button size="mini" @click="handleEdit(scope.$index, scope.row)"
              >编辑</el-button
            >
            <el-button
              size="mini"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>
    </template>
    <!-- 编辑 -->
    <el-button type="text"></el-button>

    <el-dialog title="修改或添加管理员" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <el-form-item label="用户名" :label-width="formLabelWidth">
          <el-input v-model="form.name" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="密码" :label-width="formLabelWidth">
          <el-input v-model="form.pwd" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="手机号" :label-width="formLabelWidth">
          <el-input v-model="form.phone" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="邮箱" :label-width="formLabelWidth">
          <el-input v-model="form.email" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="Urevise">修改</el-button>
        <el-button type="primary" @click="Uadd">添加</el-button>
      </div>
    </el-dialog>
  </div>
</template>

    </div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [],
      dialogTableVisible: false,
      dialogFormVisible: false,
      did: [],
      form: {
        name: "",
        pwd: "",
        phone: "",
        email: "",
        delivery: false,
      },
      formLabelWidth: "120px",
    };
  },
  methods: {
    handleEdit(index, row) {
      // console.log("index", index);
      // console.log("row",row);
      this.dialogFormVisible = true;
      // console.log(row.did)
      this.did[0] = row.did;
    },
    handleDelete(index, row) {
      this.axios.delete(`useroot/root/${row.did}`).then((res) => {
        console.log("delete", res);
        if (res.data.code == 200) {
          this.$router.go();
        }
      });
    },
    Urevise() {
      //修改管理员
      this.dialogFormVisible = false;
      let { name, pwd, phone, email } = this.form;
      let params = `did=${this.did[0]}&dname=${name}&dpwd=${pwd}&dphone=${phone}&demail=${email}`;
      console.log(params);
      this.axios.put("useroot/revise", params).then((res) => {
        console.log(res);
        this.$router.go(0);
      });
    },
    Uadd() {
      //添加管理员
      this.dialogFormVisible = false;
      let { name, pwd, phone, email } = this.form;
      let params = `dname=${name}&dpwd=${pwd}&dphone=${phone}&demail=${email}`;
      this.axios.post("useroot/add", params).then((res) => {
        console.log(res);
        this.$router.go(0);
      });
    },
  },

  mounted() {
    this.axios.get("useroot/roots").then((res) => {
      console.log("res", res);
      res.data.forEach((item) => {
        this.tableData.push(item);
      });
      console.log("tableData", this.tableData);
    });
  },
};
</script>

<style lang="scss" scoped>
</style>