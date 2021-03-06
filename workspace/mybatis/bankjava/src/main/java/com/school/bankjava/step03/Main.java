package com.school.bankjava.step03;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.school.bankjava.vo.UsersVo;

public class Main {

	public static void main(String[] args) {
		String resource = "com/school/bankjava/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSessionFactory sqlSessionFactory = null;
		try{
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder()
										.build(inputStream);
			SqlSession session = sqlSessionFactory.openSession();
			
			//사용
			List<UsersVo> userList 
				= session.selectList("com.school.bankjava.mapper.selectAllUserVo");
			
			
//			userList.forEach(
//					userVo ->
//						System.out.println(String.format("ID: %s, USERID: %s, NAME: %s",userVo.getId(),userVo.getUserId(),userVo.getName())
//							)
//			);
			for(UsersVo userVo : userList){
				System.out.println(String.format("ID: %s, USERID: %s, NAME: %s",userVo.getId(),userVo.getUserId(),userVo.getName()));
			}
			
			
			
			
			session.close();
		}catch(IOException e){
			e.printStackTrace();
		}
		
		System.out.println("ok");
		

	}

}
