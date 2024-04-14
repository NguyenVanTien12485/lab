import { inject, ref } from 'vue'
import Api from "@/helpers/api"

function useDemo() {
    const axios = inject('axios')
    const listDemo = ref([])

    const fetchDemo = async (params) => {
        try {
            const response = await axios.get(Api.getApi('demo', params))
            let data = response.data.data
            listDemo.value = data
        } catch (error) {
            console.log(error);
        }
    }

    const fetchDemoDetail = async (id) => {
        try {
            const response = await axios.get(Api.getApi('demo-detail', id))
            let data = response.data.data
            return data
        }   catch (error) {
            console.log(error);
        }
    }

    return {
        fetchDemo,
        listDemo
    }
}