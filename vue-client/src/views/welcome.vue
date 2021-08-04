<template>
    <div class="w-screen h-screen flex justify-center items-center bg-gray-100 dark:bg-gray-900">
        <div class="flex flex-col justify-center items-center">
            <div class="flex gap-10 justify-center items-center">
                <img alt="Laravel logo" src="../assets/images/laravel-logo.png" class="w-20 h-20" />
                <svg xmlns="http://www.w3.org/2000/svg" class="h-12 w-12 dark:text-gray-500" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z" clip-rule="evenodd" />
                </svg>
                <img alt="Vue logo" src="../assets/images/logo.png" class="w-20 h-20" />
            </div>
            <h1 class="mt-8 text-center text-2xl text-gray-800 dark:text-white">
                Laravel-Vue Passport Authentication Starter
            </h1>
           <router-link :to="{name:'auth.login'}" class="mt-6 inline-flex items-center justify-center gap-2 bg-gray-700 hover:bg-gray-500 text-gray-100 text-sm leading-6 font-semibold py-2 px-4 border border-transparent rounded-lg focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none transition-colors duration-300">
                <span>Login</span>
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                </svg>

            </router-link>
        </div>
    </div>
</template>