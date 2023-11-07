<script setup>
import { computed } from 'vue';
import { useRoute } from 'vue-router';
import layouts from './layouts';

const route = useRoute()
const layout = computed(() => {
  return layouts[route.meta.layout || 'DefaultLayout']
})
</script>

<template>
  <component :is="layout" />

</template>

<style scoped lang="scss">
.wrapper {
  background-color: palevioletred;
}
</style>
