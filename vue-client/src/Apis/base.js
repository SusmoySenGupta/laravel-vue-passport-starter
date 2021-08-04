import axios from "axios";

export default () => {
    return axios.create({
        baseURL: "https://susmoycse.com/laravel-vue/passport-starter-with-welcome-email/server/api/",
    });
};