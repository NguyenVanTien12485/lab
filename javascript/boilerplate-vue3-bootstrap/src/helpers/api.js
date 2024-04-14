const api = {
    'demo': '/api/v1/demo',
    'demo-detail': '/api/v1/demo/:id',
}

const getApi = (key, id) => {
	if (!key) {
		return
	}

	if (api[key]) {
		return api[key].replace(':id', id || '')
	}
}

export default getApi
