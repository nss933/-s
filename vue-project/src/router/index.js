import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/img',
    name: 'img',
    component: () => import('../views/Img.vue'),
    meta:{
      videos:true,
      place:true,
      title:'DJI Mini 3 Pro-图片-DJI',
    },
  },
  
  {
    path: '/reg',
    name: 'reg',
    component: () => import('../views/Reg.vue'),
    meta:{
      videos:true,
      place:true,
      title:'DJI Mini 3 Pro-注册-DJI',
    },
  },
{
  path: '/login',
  name: 'login',
  component: () => import('../views/Login.vue'),
  meta:{
    videos:true,
    place:true,
    title:'DJI Mini 3 Pro-登录-DJI',
  },
},
 
  {
    path: '/tec',
    name: 'Tec',
    component: () => import('../views/Technique.vue'),
    meta:{
      title:'DJI Mini 3 Pro-技术参数-DJI',
    },
  },
  {
    path: '/common',
    name: 'common',
    component: () => import('../views/Common.vue'),
    meta:{
      title:'DJI Mini 3 Pro-常见问题-DJI',
    },
  },
  
  {
    path: '/one',
    name: 'test',
    component: () => import('../views/VideoOne.vue'),
   
    meta:{
      title:'DJI Mini 3 Pro-视频教程01-DJI',
      videos:true,
      place:true,
    },
    
  },
  {
    path: '/compare',
    name: 'compare',
    component: () => import('../views/Compare.vue'),
    meta:{
      place:true,
      title:'DJI Mini 3 Pro-机型比较-DJI',
    },
  },
  {
    path: '/video',
    name: 'video',
    component: () => import('../views/Video.vue'),
    meta:{
      title:'DJI Mini 3 Pro-视频教程-DJI',
    },
  },
  {
    path: '/download',
    name: 'download',
    component: () => import('../views/Download.vue'),
    meta:{
      title:'DJI Mini 3 Pro-相关下载-DJI',
    },
  },
  {
    path: '/',
    name: 'Index',
    component:Index,
    meta:{
      title:'DJI Mini 3 Pro-首页-DJI',
    },
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
