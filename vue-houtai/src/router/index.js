import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'root',
    component: () => import('../views/RootLogin.vue'),
    meta:{

      title:'DJI Mini 3 Pro-管理员登录-DJI',
    },
  },
  {
    path: '/first',
    name: 'Dj',
    component: () => import('../views/Dj.vue'),
    meta:{

      title:'DJI Mini 3 Pro-大疆后台管理-DJI',
    },
  },
  {
    path: '/2',
    name: 'echarts',
    component: () => import('../views/Echarts.vue'),
  },
  {
    path: '/manage',
    name: 'Manage',
    component: () => import('../views/Manage.vue'),
    meta:{

      title:'DJI Mini 3 Pro-后台管理-DJI',
    },
    children:[
      {
        path:'check',
        component:()=>import('../views/Check.vue')
      },
      {
        path:'geturls',
        component:()=>import('../views/Geturls.vue')
      },
      {
        path:'upload',
        component:()=>import('../views/Upload.vue')
      },
      {
        path:'/',
        component:()=>import('../views/Home.vue'),
        meta:{

          title:'DJI Mini 3 Pro-后台管理-DJI',
        },

      },
     
      {
        path:'docu',
        component:()=>import('../views/Docu.vue'),
        meta:{

          title:'DJI Mini 3 Pro-后台管理-DJI',
        },
      },
      {
        path:'setup',
        component:()=>import('../views/Setup.vue'),
        meta:{

          title:'DJI Mini 3 Pro-后台管理-DJI',
        },
      },
       {
        path:'calendar',
        component:()=>import('../views/Calendar.vue'),
        meta:{

          title:'DJI Mini 3 Pro-后台管理-DJI',
        },
      },
      {
        path:'map',
        component:()=>import('../views/Map.vue'),
        meta:{

          title:'DJI Mini 3 Pro-后台管理-DJI',
        },
      }
      
    ]
  },
]

const router = new VueRouter({
  mode: 'hash',
  base: process.env.BASE_URL,
  routes
})


//路由的全局守卫
router.beforeEach((to,from,next)=>{
  document.title=to.meta.title
  //console.log('to是:',to)
 // console.log('from是:',from)
  next()
})
export default router
