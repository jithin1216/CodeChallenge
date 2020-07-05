class UrlMappings {

	static mappings = {
		
		'/phone'(resources: 'phone'){
			collection {
				'/customercontact'(controller: 'phone', action: 'customercontact')
				'/contacts'(controller: 'phone', action: 'contacts')
			}
		}
		'/customer'(resources: 'customer'){
			collection{
				'/activatecontact'(controller:'customer',action: 'activatecontact')
			}
		}
		
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
