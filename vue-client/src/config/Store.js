import { createApp } from "vue";
import { createStore } from "vuex";
import App from "../App.vue";
import createPersistedState from "vuex-persistedstate";

const Store = createStore({
    plugins: [createPersistedState()],

    state() {
        return {}
    },
    actions: {},
    mutations: {},
    getters: {},
});

const app = createApp(App);
app.use(Store);

export default Store;