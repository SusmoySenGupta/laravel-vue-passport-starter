import { createRouter, createWebHistory } from "vue-router";
import AuthRoutes from "./auth.js";
import AdminRoutes from "./admin.js";
import AnotherUserRoutes from "./anotheruser.js";
import UserRoutes from "./user.js";

const router = createRouter({
    history: createWebHistory('/laravel-vue/passport-starter-with-welcome-email/'),
    routes: [{
            path: "/",
            name: "welcome",
            component: () =>
                import ("../views/welcome.vue"),
        },
        ...AuthRoutes,
        ...AdminRoutes,
        ...UserRoutes,
        ...AnotherUserRoutes,
        {
            path: "/:pathMatch(.*)*",
            name: "error.404",
            component: () =>
                import ("../views/Error/404.vue"),
        }
    ],
});

// guard
router.beforeEach((to, from, next) => {
    const USER = Store.getters.getCurrentUser;
    const ROLE = USER ? USER.role : null;
    const IS_LOGGED_IN = USER ? true : false;

    if (to.meta.requiresAuth) {
        if (IS_LOGGED_IN && to.meta.role === USER.role) next();
        else next({ name: "auth.login" });
    } else {
        if (IS_LOGGED_IN && (to.name === "auth.login" || to.name === "auth.register")) {
            if (ROLE === "admin") router.push({ name: "admin.home" });
            else if (ROLE === "user") router.push({ name: "user.home" });
            else if (ROLE === "another_user") router.push({ name: "anotheruser.home" });
        } else
            next();
    }
});

export default router;