package com.challenge.one

import org.hibernate.SessionFactory;
import org.hibernate.Transaction

class FileUploadController {
	
	SessionFactory sessionFactory

    def index() { }
	
	def upload(){
		def session = sessionFactory.currentSession
		Transaction tx = session.beginTransaction()
		int lineCount=0
		ArrayList<Integer> errorinfo=new ArrayList<Integer>()
		int temp=0;
		String[] resultArray = new String[0];
		request.getFile('file').inputStream.eachLine { line ->
			resultArray=line.split(",")
			try{
				lineCount++
				FileUpload user=new FileUpload()
				user.setUserId(resultArray[0].trim())
				user.setCoin(Integer.parseInt(resultArray[1].trim()))
				user.setUserName(resultArray[2].trim())
				if(user.validate()){
					session.save(user)
				}
				else{
					errorinfo.add(lineCount)
					temp=lineCount
				}
			}catch(Exception e){
				errorinfo.add(lineCount)
				temp=lineCount;
			}finally{
			resultArray=new String[0];
			}
		}
		if(temp==0){
			tx.commit()
			session.flush()
			session.clear()
			render(view: "/fileUpload/displayData", model: [userList : FileUpload.list()])
		}
		else{
			render(view: "/fileUpload/errorInfo", model: [errorList : errorinfo])
		}
	}
}
