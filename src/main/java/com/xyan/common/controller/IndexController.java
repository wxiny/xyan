package com.xyan.common.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.xyan.blog.model.ArticleModel;
import com.xyan.blog.service.ArticleService;
import com.xyan.blog.vo.ArticleVO;
import com.xyan.common.enums.ArticleType;
import com.xyan.frame.base.web.ResponseModel;
import com.xyan.frame.feature.mybatis.intercept.Page;
import com.xyan.frame.security.web.controller.UserController;
import com.xyan.frame.util.FileUtil;
import com.xyan.frame.util.PropertiesUtil;

/**
 * This controller is system home page.It provides all the common service and home service;
 * @author wangming
 */
@Controller
public class IndexController {
	
	protected Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired 
	private ArticleService articleService;
	
	@RequestMapping(value={"/index","/"},method=RequestMethod.GET)
	public ModelAndView index(){
		ArticleVO queryModel=new ArticleVO();
		queryModel.setTypeId(ArticleType.TYPE_LIFE.getCode());
		Page<HashMap<String, Object>> page=articleService.selectByPage(queryModel, new Page<HashMap<String,Object>>(1,2));
		queryModel.setTypeId(ArticleType.TYPE_TALK.getCode());
		Page<HashMap<String, Object>> page2=articleService.selectByPage(queryModel, new Page<HashMap<String,Object>>(1,2));
		queryModel.setTypeId(ArticleType.TYPE_TECHNOLOGY.getCode());
		Page<HashMap<String, Object>> page3=articleService.selectByPage(queryModel, new Page<HashMap<String,Object>>(1,2));
		page.getResult().addAll(page2.getResult());
		page.getResult().addAll(page3.getResult());
		return new ModelAndView("index")
				.addObject("page", page);
	}
	
	@RequestMapping(value="/index/about",method=RequestMethod.GET)
	public String about(){
		return "aboutMe";
	}
	
	@RequestMapping(value="/index/iconfont",method=RequestMethod.GET)
	public String iconfont(){
		return "iconfont/iconfont";
	}
	
	@RequestMapping(value="/index/ajaxUploadProcess")
	@ResponseBody
	public ResponseModel ajaxUploadProcess(HttpServletRequest request,HttpServletResponse response){
		try {
			MultipartRequest multipartRequest = (MultipartRequest) request;
			Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
			logger.warn("上传文件：\n");
			logger.warn(fileMap);
			return  new ResponseModel(true,"上传成功！");
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseModel(false,"上传失败！");
		}
	}
	
	@RequestMapping(value="/index/wangEditor/upload")
	public void ueConfig(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String projectUrl=PropertiesUtil.getProperties("project.url");
		String basePath =PropertiesUtil.getProperties("file.upload.path");
		String now=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		MultipartRequest multipartRequest = (MultipartRequest) request;
		MultipartFile mfile = (MultipartFile) multipartRequest.getFileMap().values().toArray()[0];
		// 文件全名称
		String fileName = mfile.getOriginalFilename();
		// 文件后缀
		String suffix = fileName.substring(fileName.lastIndexOf(".")+1);
		String prefix=fileName.substring(0, fileName.lastIndexOf("."));
		// 真正文件夹
		String realFolder = basePath+now+"/";
		// 真正文件路径
		String realFile = realFolder+fileName;
		prefix=FileUtil.getFileName(realFolder, fileName, suffix, prefix);
		realFile=realFolder+prefix+"."+suffix;
		// 保存文件
		FileUtil.writeFile(mfile.getBytes(), realFile);
		response.setContentType("text/plain;charset=utf-8");
		//输出文件访问路径
		response.getWriter().write(projectUrl+"/attach/viewPic?path="+now+"&name="+prefix+"."+suffix);
	}
	
	
	
}
