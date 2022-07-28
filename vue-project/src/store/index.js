import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    name:sessionStorage.getItem('name'),
  },
  getters: {
   
  },
  mutations: {
    changeName(state,name){
      state.name=name
      sessionStorage.setItem('name',name)
    },
    deleteName(state){
      state.name=null
      sessionStorage.removeItem('name')
    
    },
  },
  actions: {
  },
  modules: {
  }
})
