import axios from "axios";
import env from "../../config/env.js";

export const login = {
    state: {
        token_response: {},
        current_user: null,
        is_loading: false
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

                axios.post('oauth/token', data)
                    .then((response) => {
                        context.commit("updateTokenResponse", response.data);
                        axios.defaults.headers.common["Authorization"] = `Bearer ${response.data.access_token}`;
                        resolve(response);
                    }).catch((login_error) => {
                        reject(login_error);
                    });
            });
        },

        getCurrentUser(context) {
            return new Promise((resolve, reject) => {
                axios.get('api/user')
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
        updateTokenResponse(state, token_response) {
            state.token_response = token_response;
        },

        updateCurrentUser(state, current_user) {
            state.current_user = current_user;
        },

        logout(state) {
            state.current_user = null;
            state.token_response = {};
        },
    },

    getters: {
        getAccessToken(state) {
            return state.token_response.access_token;
        },
        getCurrentUser(state) {
            return state.current_user;
        },
        getTest() {
            return "test";
        },
    }
};