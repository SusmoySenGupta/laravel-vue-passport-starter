import App from "../App.vue";
import { createApp } from "vue";
import { createStore } from "vuex";
import { login } from "./modules/login.js";
import createPersistedState from "vuex-persistedstate";

const Store = createStore({
    plugins: [createPersistedState()],
    modules: {
        login
    }
});

const app = createApp(App);
app.use(Store);

export default Store;