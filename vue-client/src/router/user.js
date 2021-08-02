export default [{
    path: "/user",
    name: "user.home",
    component: () =>
        import ("../views/User/index.vue"),
}];