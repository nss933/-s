<template>
    <div>
       <div style="position:fixed;top:50%;left:45%;">
       <h3 style="margin-bottom:3px;color:#fff;">请输入密码:</h3>
       <el-input placeholder="请输入密码" v-model="input" show-password style="width:23vw;" @blur="check"></el-input>
       </div>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        input: ''
      }
    },
    methods:{
        check(){
            let params = `pwd=${this.input}`
            console.log('params',params)
            this.axios.post('v1/uploadserver/check',params).then(res=>{
                console.log('res',res)
                if(res.data.code==200){
                    this.$router.push('/manage/geturls')
                }
            })
        }
    }
  }
</script>

<style lang="scss" scoped>
*{
    
}
</style>