package com.place4code.springdemo.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {
	
	//setup logger
	private Logger logger = Logger.getLogger(getClass().getName());
	
	//setup pointcut
	
	//add @Before advice
	
	//add AfterReturning advice

}
