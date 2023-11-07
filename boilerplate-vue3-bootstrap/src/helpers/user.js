/* eslint-disable no-debugger */
import axios from "@/plugins/axios"

class User {
    login(res) {
        const accessToken = res.data.access_token

        if (!accessToken) {
            return false
        }
        const user = {
            ...res.data.user
        }

        localStorage.setItem('token', accessToken)
        localStorage.setItem('user', JSON.stringify(user))
        axios.defaults.headers.common['Authorization'] = `Bearer ${accessToken}`;

        return true
    }
    logout() {
        localStorage.removeItem("token")
        localStorage.removeItem("user")
        axios.defaults.headers.common['Authorization'] = ``;
    }
}

export default new User()