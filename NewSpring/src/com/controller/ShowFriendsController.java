package com.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.StudentLocation;
import com.entity.LocationDetails;
import com.service.FindStudentService;



@Controller
public class ShowFriendsController {

    /**
     * 1. 使用RequestMapping注解来映射请求的URL
     * 2. 返回值会通过视图解析器解析为实际的物理视图, 对于InternalResourceViewResolver视图解析器，会做如下解析
     * 通过prefix+returnVal+suffix 这样的方式得到实际的物理视图，然后会转发操作
     * "/chart/success.jsp"
     * @return
     */

  	@RequestMapping(value = "/findFriend", method= RequestMethod.GET) 
    public String findFriend(String studentId,Model model) {  
        model.addAttribute("studentId", studentId);
        return "showFriend";  
    }
  	
  	
  	@Autowired
  	private FindStudentService findStudentService;
  	
    @RequestMapping(value = "/ShowFriend",method= RequestMethod.GET) 
  	@ResponseBody  
    public Map<String, Object> showFriend(String studentId){  
        Map<String, Object> result=new HashMap<String, Object>();
        List<StudentLocation> studentLocation=findStudentService.findStudent(studentId);
        result.put("studentLocation",studentLocation);  
        return result;  
    }  
    
    
    @RequestMapping(value = "/ShowFriendDetails",method= RequestMethod.GET) 
    public String ShowFriendDetails(String studentId,Model model){  
    	List<LocationDetails> locationDetailsList=findStudentService.findStudentDetails(studentId);
    	model.addAttribute(locationDetailsList);
        return "showFriendDetails"; 
    }  
  	
  	 
  	 
}