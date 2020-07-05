import com.challenge.two.*
class BootStrap {

    def init = { servletContext ->
		def adminRole=Role.findOrSaveWhere(authority:'ROLE_ADMIN')
		def userRole=Role.findOrSaveWhere(authority:'ROLE_USER')
		def user=User.findOrSaveWhere(username:'user',password:'user123')
		def admin=User.findOrSaveWhere(username:'admin',password:'admin123')
		//UserRole.create(user,userRole,true)
		
		if(!user.authorities.contains(adminRole)){
			UserRole.create(user,userRole,true)
		}
    }
    def destroy = {
    }
}
