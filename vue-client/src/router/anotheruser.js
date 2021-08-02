const ROLE = "another_user";

export default [{
    path: "/another-user",
    name: "anotheruser.home",
    component: () =>
        import ("../views/AnotherUser/index.vue"),
    meta: { requiresAuth: true, role: ROLE },
}];