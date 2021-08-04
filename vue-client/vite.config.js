import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
    base: '/laravel-vue/passport-starter-with-welcome-email/',
    mode: 'production',
    plugins: [vue()]
})