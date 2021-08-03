import { ref } from "vue";
import { useStore } from "vuex";
import { useRouter } from "vue-router";

export default function() {
    const store = useStore();
    const router = useRouter();

    const is_loading = ref(false);
    const errors = ref(null);

    function routerPush(role) {
        if (role === "admin") router.push({ name: "admin.home" });
        else if (role === "user") router.push({ name: "user.home" });
        else if (role === "another_user") router.push({ name: "anotheruser.home" });
    }

    function errorAndLoader(response) {
        errors.value = response.response.data;
        is_loading.value = false;
    }

    function login(user) {
        delete axios.defaults.headers.common["Authorization"];
        is_loading.value = true;

        store.dispatch("login", user)
            .then(() => {
                store.dispatch("getCurrentUser").then((current_user_response) => {
                    routerPush(current_user_response.data.role);
                }).catch((get_current_user_error) => {
                    errorAndLoader(get_current_user_error);
                });
                errors.value = null;
            })
            .catch((login_error) => {
                errorAndLoader(login_error);
            });
    }

    return {
        login,
        is_loading,
        errors,
    }
};