package com.hotels.api01.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = {"com.hotels.api01"})
@MapperScan("com.hotels.api01.model")
@EnableAspectJAutoProxy
@EnableTransactionManagement
public class RootConfig {
	
	@Bean
	public DataSource dataSource() {
//		BasicDataSource dataSource=new BasicDataSource();
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/xe");
		dataSource.setUsername("scott");
		dataSource.setPassword("tiger");
		return dataSource;
	}
	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		JdbcTemplate template=new JdbcTemplate();
		template.setDataSource(dataSource());
		return template;
	}
	
	@Bean
	public TransactionManager transactionManager() {
		DataSourceTransactionManager transaction;
		transaction=new DataSourceTransactionManager(dataSource());
		return transaction;
	}

	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean factory=new SqlSessionFactoryBean();
		factory.setDataSource(dataSource());
		return factory.getObject();
	}
}
