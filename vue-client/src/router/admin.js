  const ROLE = "admin";

  export default [{
      path: "/admin",
      name: "admin.home",
      component: () =>
          import ("../views/Admin/index.vue"),
      meta: { requiresAuth: true, role: ROLE },
  }];