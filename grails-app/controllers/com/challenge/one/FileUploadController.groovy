package com.challenge.one

import org.hibernate.Session
import org.hibernate.SessionFactory;
import org.hibernate.Transaction
import org.springframework.web.multipart.MultipartFile
import grails.converters.JSON

class FileUploadController {
	
	SessionFactory sessionFactory
	Session session

    def index() { }
	
	def upload(){
		session = sessionFactory.openSession()  
		Transaction tx = session.beginTransaction()
		int lineCount=0
		ArrayList<Integer> errorinfo=new ArrayList<Integer>()
		int temp=0;
		String[] resultArray = new String[0];
		request.getFile('filesList').inputStream.eachLine { line ->
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
			session.close()         
			render FileUpload.list() as JSON    
		}   
		else{  
			tx.rollback()
			session.close()         
			render errorinfo as JSON         
		}   
	}
}
