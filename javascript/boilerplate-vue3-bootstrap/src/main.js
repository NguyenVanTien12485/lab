import './index.scss'
import * as bootstrap from 'bootstrap'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import axios from '@/plugins/axios'

import App from './App.vue'
import router from './router'
import User from './helpers/user.js'

const app = createApp(App)


window.User = User

// axios config
app.config.globalProperties.$axios = axios

app.use(User)
app.use(createPinia())
app.use(router)

app.mount('#app')
