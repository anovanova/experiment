<script setup lang="ts">
import TheWelcome from '../components/TheWelcome.vue'
import { ref } from 'vue';

const date = ref(new Date());
const format = (date: { getDate: () => any; getMonth: () => number; getFullYear: () => any; }) => {
  const day = date.getDate();
  const month = date.getMonth() + 1;
  const year = date.getFullYear();

  return `${day}/${month}/${year}`;
}
</script>

<template>
  <main>
    <h1>WALA AKONG ALAM</h1>
    <VueDatePicker v-model="date" :format="format"/>
    <input type="date" name="" id="">
    <TheWelcome />
  </main>
</template>
