import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入axios
import axios from 'axios'
import VueAxios from 'vue-axios'
// axios.defaults.baseURL='http://43.142.78.250:3000/'
axios.defaults.baseURL='http://43.142.78.250:3000/'
Vue.use(VueAxios,axios)


//引入element ui
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);



Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
