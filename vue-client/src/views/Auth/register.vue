<template>
    <div class="max-w-xl px-10 py-12 bg-white dark:bg-gray-800 rounded-lg shadow-lg">
        <router-link :to="{name: 'welcome'}" class="flex items-center max-w-md mb-4 font-medium title-font md:mb-0 cursor-pointer">
            <div class="w-2 h-2 p-2 mr-2 rounded-full bg-gradient-to-tr from-blue-300 to-blue-600">
            </div>
            <h2 class="text-lg font-semibold tracking-tight text-black uppercase duration-300 ease-in-out transform transition hover:text-blue-500 dark:text-gray-100"> 
                Laravel Vue Passport Starter 
            </h2>
        </router-link>

        <h3 class="mt-6 text-lg font-semibold text-gray-900 tracking-ringtighter title-font dark:text-gray-100">
            Sign Up
        </h3>

        <form class="mt-4">
            <div class="flex items-center justify-center gap-4">
                <div>
                    <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Name</label>
                    <input type="text" required placeholder="Your Name" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
                </div>
                <div>
                    <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Email Address</label>
                    <input type="email" required placeholder="Your Email" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
                </div>
            </div>
            <div class="mt-4">
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Password</label>
                <input type="password" required minlength="6" placeholder="Your Password" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <div class="mt-4">
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Confirm Password</label>
                <input type="password" required minlength="6" placeholder="Confirm Your Password" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <button type="submit" class="mt-6 w-full flex-none bg-gray-900 hover:bg-gray-700 text-gray-100 text-sm leading-6 font-semibold py-2 px-4 border border-transparent rounded-lg focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none transition-colors duration-300">
                <span>Register</span> 
            </button>
        </form>

        <hr class="w-full my-6 border-gray-300">

        <p class="mt-8 text-center dark:text-gray-100">
            Already have an account?
            <router-link :to="{ name: 'auth.login'}" class="font-semibold text-blue-500  hover:text-blue-700">
                Sign in
            </router-link>
        </p>
    </div>
</template>