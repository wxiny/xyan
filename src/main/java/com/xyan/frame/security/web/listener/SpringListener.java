package com.xyan.frame.security.web.listener;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.xyan.blog.model.DictModel;
import com.xyan.blog.model.MessageModel;
import com.xyan.blog.service.DictService;
import com.xyan.blog.service.MessageService;
import com.xyan.common.cache.CacheUtil;
import com.xyan.common.enums.DictType;

@Component
@Lazy(value=false)
public class SpringListener implements ApplicationListener<ContextRefreshedEvent>{
	private static Logger logger=Logger.getLogger(SpringListener.class);
	
	@Autowired
	private DictService dictService;
	
	@Autowired
	private MessageService messageService;
	
	public SpringListener() {
		logger.info("spring创建对象");
	}

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		logger.info("spring启动成功。。。");
		logger.info("当前时间："+event.getTimestamp());
		ApplicationContext applicationContext=event.getApplicationContext();
		if(applicationContext instanceof WebApplicationContext){
			logger.info("当前是web环境");
			WebApplicationContext webApplicationContext=(WebApplicationContext)applicationContext;
			DictModel example=new DictModel();
			example.setType(DictType.DICT_GD.getCode());
			List<DictModel> dictList=dictService.selectModelByExample(example);
			webApplicationContext.getServletContext().setAttribute("gdList", dictList);
			MessageModel message=new MessageModel();
			message.setRead("false");
			List<HashMap<String, Object>> messageList=messageService.selectByExample(message);
			webApplicationContext.getServletContext().setAttribute("messageList",messageList );
			webApplicationContext.getServletContext().setAttribute("messageSize",messageList.size());
		}
		CacheUtil.initCache();
	}
	
}