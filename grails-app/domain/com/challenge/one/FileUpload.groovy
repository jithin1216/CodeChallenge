package com.challenge.one

class FileUpload {
	String userId
	int coin
	String userName
	
	static mapping={
		userId column: "UserId", sqlType: "char(10)"
		coin column: "CoinCount", sqlType: "int"
		userName column: "UserName"
	}

	static constraints = {
		 userId blank:false, validator :{val,obj->
			 try{
				int x=Integer.parseInt(obj.userId)
				if(obj.userId.length()!=10)
				{
					return false;
				}
				
			 }catch(Exception e){
			 return false;
			 }
		 }
		 coin nullable:false
		 userName blank:false
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", coin=" + coin + ", userName=" + userName
				+ "]";
	}
    
}
