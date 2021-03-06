package com.school.bankjava.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class FactoryManager {
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/school/bankjava/config/mybatis-config.xml";
		InputStream inputStream;
		sqlSessionFactory = null;
		try{
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder()
										.build(inputStream);
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	/*public SqlSessionFactory getSqlSessionFactory() {
		String resource = "com/school/bankjava/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSessionFactory sqlSessionFactory = null;
		try{
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder()
										.build(inputStream);
		}catch(IOException e){
			e.printStackTrace();
		}
		return sqlSessionFactory;
	}*/
}
