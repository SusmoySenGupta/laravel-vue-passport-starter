<template>

    <!-- <div class="flex items-center justify-center w-full px-6 md:max-w-md lg:max-w-full md:mx-auto md:w-1/2 xl:w-1/3 lg:px-16 xl:px-4">
        <div class="w-full h-100 bg-white px-8 py-6 rounded-lg shadow-lg dark:bg-gray-800">
            <a class="flex items-center w-32 mb-4 font-medium text-gray-900 title-font md:mb-0 dark:text-gray-100">
                <div class="w-2 h-2 p-2 mr-2 rounded-full bg-gradient-to-tr from-blue-300 to-blue-600">
                </div>
                <h2 class="text-lg font-bold tracking-tighter text-black uppercase duration-300 ease-in-out transform transition hover:text-blue-500 dark:text-gray-100"> Auction </h2>
            </a>
            <h1 class="mt-12 text-xl font-semibold text-gray-900 tracking-ringtighter sm:text-2xl title-font dark:text-gray-100">Sign in to your account</h1>
            <form class="mt-6">
                <div>
                    <label class="mb-1 block text-sm font-medium leading-relaxed tracking-tighter text-gray-700 dark:text-gray-100">Email Address</label>
                    <input type="email" required placeholder="Your Email" class="w-full px-4 py-2 text-base text-black transition duration-300 ease-in-out transform border-transparent rounded-lg bg-gray-100 focus:border-gray-500 focus:bg-white focus:outline-none focus:ring-2 ring-offset-2">
                </div>
                <div class="mt-4">
                    <label class="mb-1 block text-sm font-medium leading-relaxed tracking-tighter text-gray-700 dark:text-gray-100">Password</label>
                    <input type="password" required minlength="6" placeholder="Your Password" class="w-full px-4 py-2 text-base text-black transition duration-300 ease-in-out transform border-transparent rounded-lg bg-gray-100 focus:border-gray-500 focus:bg-white focus:outline-none focus:ring-2 ring-offset-2" >
                </div>
                <button type="submit" class="flex justify-center items-center w-full px-4 py-3 mt-6 font-semibold text-white transition duration-300 ease-in-out transform bg-black rounded-lg hover:bg-gray-700 active:bg-black focus:shadow-outline focus:outline-none focus:ring-2 focus:ring-black ring-offset-2">
                    <span>Log In</span> 
                </button>
            </form>

            <hr class="w-full my-6 border-gray-300">

            <p class="mt-8 text-center dark:text-gray-100">
                Need an account?
                <router-link :to="{ name: 'auth.register'}" class="font-semibold text-blue-500  hover:text-blue-700">
                    Sign Up
                </router-link>
            </p>
        </div>
    </div> -->


    <div class="max-w-md px-10 py-12 bg-white dark:bg-gray-800 rounded-lg shadow-lg">
        <!-- <h2 class="text-gray-900 text-2xl font-bold leading-snug">
        Getting Started with Tailwind CSS Custom Forms
        </h2>
        <p class="mt-2 text-lg">
        In this tutorial, I show you how to install the Tailwind CSS Custom Forms
        plugin and get started using it.
        </p>
        <a href="#" class="mt-6 inline-block text-blue-700">Read more</a> -->
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

        <form class="mt-4">
            <div>
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Email Address</label>
                <input type="email" required placeholder="Your Email" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <div class="mt-4">
                <label class="mb-1 block text-sm leading-relaxed tracking-tight text-gray-700 dark:text-gray-100">Password</label>
                <input type="password" required minlength="6" placeholder="Your Password" class="w-full px-4 py-2 text-gray-100 transition duration-300 ease-in-out transform border-transparent rounded-md bg-gray-600 focus:border-gray-600 focus:bg-gray-500 focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none">
            </div>
            <button type="submit" class="mt-6 w-full flex-none bg-gray-900 hover:bg-gray-700 text-gray-100 text-sm leading-6 font-semibold py-2 px-4 border border-transparent rounded-lg focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-blue-600 focus:outline-none transition-colors duration-300">
                <span>Log In</span> 
            </button>
        </form>

        <hr class="w-full my-6 border-gray-300">

        <p class="mt-8 text-center dark:text-gray-100">
            Need an account?
            <router-link :to="{ name: 'auth.register'}" class="font-semibold text-blue-500  hover:text-blue-700">
                Sign up
            </router-link>
        </p>
    </div>
</template>