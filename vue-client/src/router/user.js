const ROLE = "user";

export default [{
    path: "/user",
    name: "user.home",
    component: () =>
        import ("../views/User/index.vue"),
    meta: { requiresAuth: true, role: ROLE },
}];