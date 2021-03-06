package com.entity;

import java.util.Map;

/**
 * 
 * @author Hangxy
 *
 */
public class StudentLocation{

	//学生姓名
    private String name;
    
    //这里指班级
    private String grade;
   
    //出入地点
    private String locationMap ;

    //学生id
    private String id;
    
    
    public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


    public String getName(){
        return name;
    }

    
    public void setName(String name){
        this.name = name;
    }

    
    public String getGrade(){
        return grade;
    }

    
    public void setGrade(String grade){
        this.grade = grade;
    }

    
    public String getLocationMap(){
        return locationMap;
    }

    
    public void setLocationMap(String locationMap){
        this.locationMap = locationMap;
    }


	@Override
	public String toString() {
		return "StudentLocation [name=" + name + ", grade=" + grade + ", locationMap=" + locationMap + "]";
	}


	public StudentLocation(String name, String grade, String locationMap, String id) {
		super();
		this.name = name;
		this.grade = grade;
		this.locationMap = locationMap;
		this.id = id;
	}


	public StudentLocation() {
		super();
	}
    
    
    
    
}
