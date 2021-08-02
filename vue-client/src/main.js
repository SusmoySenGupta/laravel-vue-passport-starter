import { createApp } from 'vue'
import App from './App.vue'
import router from './router/index.js';
import Store from './config/Store.js';
import './assets/css/main.css';

window.Store = Store;

const app = createApp(App);
app.use(Store);
app.use(router);
app.mount("#app");