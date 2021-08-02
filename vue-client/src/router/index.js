import { createRouter, createWebHistory } from "vue-router";
import AuthRoutes from "./auth.js";
import AdminRoutes from "./admin.js";
import UserRoutes from "./user.js";

const router = createRouter({
    history: createWebHistory(),
    routes: [{
            path: "/",
            name: "welcome",
            component: () =>
                import ("../views/welcome.vue"),
        },
        ...AuthRoutes,
        ...AdminRoutes,
        ...UserRoutes,
        {
            path: "/:pathMatch(.*)*",
            name: "error.404",
            component: () =>
                import ("../views/Error/404.vue"),
        }
    ],
});

export default router;