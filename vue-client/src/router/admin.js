export default [{
    path: "/admin",
    name: "admin.home",
    component: () =>
        import ("../views/Admin/index.vue"),
}];