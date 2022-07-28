<template>
    <div style="padding:30px">
        <el-calendar v-model="value"></el-calendar>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        value: new Date()
      }
    }
  }
</script>

<style lang="scss" scoped>

</style>