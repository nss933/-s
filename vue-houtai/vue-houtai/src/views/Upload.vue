<template>
  <div style="padding:30px 50px">
    <h2 style="color:#fff;margin-bottom:1vh;">Upload</h2>
    <div style="height-min:77vh; width:77vw;background-color:#fff;padding:30px;border-radius:13px;">
      
      <div style="width:30vw;margin-left:20vw;">
       <span>员工姓名：</span>
       <el-input id="inp1" v-model="name" placeholder="请输入员工姓名"  clearable></el-input>
       <span>手机号：</span>
       <el-input v-model="phone" placeholder="请输入手机号"  clearable></el-input>
      
      <!-- 上传框 -->
      <span>身份证正反面：</span>
      <el-upload
        style="margin-top:1vh;"
        class="upload-demo"
        drag
        action="http://43.142.78.250:3001/upload"

        name="uploadFile"
        multiple
        show-file-list
        :on-success="cg"
        
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
        <div class="el-upload__tip" slot="tip">
          只能上传jpg/png文件,且不超过500kb
        </div>
      </el-upload>
      <el-button type="info" style="margin:2vh 16vh;" size="medium" @click="Submit">确认提交</el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
 data() {
    return {
          name: "",
          phone:"",
          urls:[]
    }
 },
 methods:{
    cg(response, file, fileList){
        // console.log('response',response)
        // console.log('file',file)
        // console.log('fileList',fileList)
        this.urls.push(response.urls[0])
        console.log(this.urls)
    },
    
    Submit(){
        let params=`name=${this.name}&phone=${this.phone}&urls=${this.urls}`
        console.log('params',params)
        this.axios.post('v1/uploadserver/add',params).then(res => {
            console.log(res)
            this.name=null
            this.phone=null
            this.urls=[]
        })
        this.$router.go(0)
        
    }
 },
};
</script>

<style lang="scss" scoped>
 span {
    display: block;
    margin:6vh 0 1vh;
    font-size: 17px;
    font-weight: 600;
 }
</style>