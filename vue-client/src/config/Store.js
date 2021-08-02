import { createApp } from "vue";
import { createStore } from "vuex";
import App from "../App.vue";
import AuthApi from "./AuthApi.js";
import axios from "axios";
import env from "./env.js";
import createPersistedState from "vuex-persistedstate";

const Store = createStore({
    plugins: [createPersistedState()],

    state() {
        return {
            token_response: {},
            current_user: null,
        }
    },
    actions: {
        login(context, user) {
            return new Promise((resolve, reject) => {
                let data = {
                    client_id: env.CLIENT_ID,
                    grant_type: env.GRANT_TYPE,
                    client_secret: env.CLIENT_SECRET,
                    username: user.email,
                    password: user.password,
                };

                axios.post(AuthApi.GET_TOKEN, data)
                    .then((response) => {
                        context.commit("updateTokens", response.data);
                        axios.defaults.headers.common["Authorization"] = `Bearer ${response.data.access_token}`;
                        resolve(response);
                    }).catch((login_error) => {
                        reject(login_error);
                    });
            });
        },

        getCurrentUser(context) {
            return new Promise((resolve, reject) => {
                axios.get(AuthApi.USER)
                    .then((response) => {
                        context.commit("updateCurrentUser", response.data);
                        resolve(response);
                    })
                    .catch((user_error) => {
                        reject(user_error);
                    });
            });
        },

        logout(context) {
            return new Promise((resolve, reject) => {
                context.commit("logout");
                delete axios.defaults.headers.common["Authorization"];
                resolve();
            }).catch((login_error) => {
                reject(login_error);
            });
        },
    },
    mutations: {
        updateTokens(state, tokens) {
            state.tokens = tokens;
        },

        updateCurrentUser(state, currentUser) {
            state.currentUser = currentUser;
        },

        logout(state) {
            state.currentUser = null;
            state.tokens = {};
        },
    },
    getters: {
        getAccessToken(state) {
            return state.tokens.access_token;
        },
        getCurrentUser(state) {
            return state.currentUser;
        },
    },
});

const app = createApp(App);
app.use(Store);

export default Store;