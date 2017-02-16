var geolocation = require('@weex-module/nat/geolocation')

var newgeo = {
	get(callbackId) {
		geolocation.get.then(res => {
			this.sender.performCallback(callbackId, res)
		}).catch(err => {
			this.sender.performCallback(callbackId, err)
		})
	}
}

var meta = {
	geo: [{
		name: 'get',
		args: ['function']
	}]
}

export default {
	init(Weex) {
		Weex.registerApiModule('geo', newgeo, meta)
	}
}