<script setup>
import Footer from '../shared/Footer.vue';
import Header from '../shared/Header.vue';
import { RouterLink, RouterView } from "vue-router";
</script>
<template>
    <Header />
    <!-- Container -->
    <main>
        <RouterView />
    </main>

    <Footer />
</template>