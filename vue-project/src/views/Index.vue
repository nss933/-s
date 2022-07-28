<template>
  <div>
    <top-floor />
    <first-floor />
    <secon-floor />
    <third-floor />
  </div>
</template>

<script>
import FirstFloor from "../components/FirstFloor.vue";
import SeconFloor from "../components/SeconFloor.vue";
import ThirdFloor from "../components/ThirdFloor.vue";
import TopFloor from "../components/TopFloor.vue";
export default {
  components: { FirstFloor, SeconFloor, ThirdFloor, TopFloor },
};
</script>

<style lang="scss" scoped>
</style>