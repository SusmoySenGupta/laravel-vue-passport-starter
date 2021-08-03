import { createApp } from 'vue'
import App from './App.vue'
import axios from 'axios';
import env from './config/env.js';
import Router from './router/index.js';
import Store from './store/index.js';
import './assets/css/main.css';

// baseURL(server) for axios 
axios.defaults.baseURL = env.BASE_API_URL;

// allowing axios, auth api and store to be used in the global scope
window.axios = axios;
window.Store = Store;

if (Store.getters.getAccessToken)
    axios.defaults.headers.common["Authorization"] = `Bearer ${Store.getters.getAccessToken}`;


// creating the app
const app = createApp(App);
app.use(Store);
app.use(Router);
app.mount("#app");