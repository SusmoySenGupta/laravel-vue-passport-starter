<template>
    <div class="flex flex-col items-center">
        <h1 class="mt-8 text-2xl text-gray-800 dark:text-white"> Welcome, {{ username }} </h1>
        <button @click="logout" class="mt-6 inline-flex items-center justify-center gap-2 bg-gray-700 hover:bg-gray-500 text-gray-100 text-sm leading-6 font-semibold py-2 px-4 border border-transparent rounded-lg focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none transition-colors duration-300">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M9.707 16.707a1 1 0 01-1.414 0l-6-6a1 1 0 010-1.414l6-6a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l4.293 4.293a1 1 0 010 1.414z" clip-rule="evenodd" />
                </svg>
            <span>Log out</span>
        </button>
    </div>
</template>

<script setup>
import { computed } from "vue";
import { useStore } from "vuex";
import { useRouter } from "vue-router";

//Logout functionality
const router = useRouter();
const store = useStore();
const username = computed(() => store.state.login.current_user ? store.state.login.current_user.name : "stranger")

function logout() {
	store.dispatch("logout").then(() => {
        router.push({ name: "auth.login" });
    }).catch((error) => {
        alert(error);
    });
}

console.log();
</script>