<template>
    <div class="max-w-md px-10 py-12 bg-white dark:bg-gray-800 rounded-lg shadow-lg">
        <router-link :to="{name: 'welcome'}" class="flex items-center max-w-md mb-4 font-medium title-font md:mb-0 cursor-pointer">
            <div class="w-2 h-2 p-2 mr-2 rounded-full bg-gradient-to-tr from-blue-300 to-blue-600">
            </div>
            <h2 class="text-lg font-semibold tracking-tight text-black uppercase duration-300 ease-in-out transform transition hover:text-blue-500 dark:text-gray-100"> 
                Laravel Vue Passport Starter 
            </h2>
        </router-link>

        <h3 class="mt-6 text-lg font-semibold text-gray-900 tracking-ringtighter title-font dark:text-gray-100">
            Sign in
        </h3>

        <form class="mt-4" @submit.prevent="login(user)">
            <div>
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Email Address</label>
                <input type="email" v-model="user.email" required placeholder="Your Email" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <div class="mt-4">
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Password</label>
                <input type="password" v-model="user.password" required minlength="6" placeholder="Your Password" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <button type="submit" class="mt-6 inline-flex items-center justify-center w-full flex-none bg-gray-900 hover:bg-gray-700 text-gray-100 text-sm leading-6 font-semibold py-2 px-4 border border-transparent rounded-lg focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none transition-colors duration-300">
                <span v-if="!is_loading">Log In</span> 
                <span v-else>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 animate-spin" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M4 2a1 1 0 011 1v2.101a7.002 7.002 0 0111.601 2.566 1 1 0 11-1.885.666A5.002 5.002 0 005.999 7H9a1 1 0 010 2H4a1 1 0 01-1-1V3a1 1 0 011-1zm.008 9.057a1 1 0 011.276.61A5.002 5.002 0 0014.001 13H11a1 1 0 110-2h5a1 1 0 011 1v5a1 1 0 11-2 0v-2.101a7.002 7.002 0 01-11.601-2.566 1 1 0 01.61-1.276z" clip-rule="evenodd"/>
                    </svg>
                </span> 
            </button>
        </form>

        <backend-error-show :errors="errors"></backend-error-show>

        <hr class="w-full my-6 border-gray-300">

        <p class="mt-8 text-center dark:text-gray-100">
            Need an account?
            <router-link :to="{ name: 'auth.register'}" class="font-semibold text-blue-500  hover:text-blue-700">
                Sign up
            </router-link>
        </p>
    </div>
</template>

<script setup>
import {ref} from "vue";
import useLogin from "../../services/useLogin.js";
import BackendErrorShow from "../../components/BackendErrorShow.vue";

const user = ref({email: "admin@example.com", password: "secret"});
const {login, is_loading, errors} = useLogin();
</script>