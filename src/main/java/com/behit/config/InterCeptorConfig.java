/*
package com.behit.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.behit.util.LoginCheck;

@Configuration
public class InterCeptorConfig implements WebMvcConfigurer{
	
	@Autowired LoginCheck check;
	
	// 인터셉터 추가
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		List<String> excludeList = new ArrayList<String>();
		excludeList.add("/");
		excludeList.add("/login.*");		// login. 뒤에 뭐가 오던지
		excludeList.add("/empadd.*");			// empadd 뒤에 뭐가 오던지 
		excludeList.add("/logout");
		excludeList.add("/assets/**");	// resource 하위 모두
		
		registry.addInterceptor(check)			// 1. 인터셉터에 걸리면 실행할 클래스 추가
			.addPathPatterns("/**")				// 2. 인터셉터를 적용할 url 패턴 지정
			.excludePathPatterns(excludeList);	// 3. 인터셉터의 예외를 적용할 패턴 지정
	}

}
*/