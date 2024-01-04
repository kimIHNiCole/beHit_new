package com.behit.todo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.behit.employee.dto.EmployeeDTO;
import com.behit.todo.dto.TodoDTO;
import com.behit.todo.service.TodoService;

@Controller
public class TodoController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired TodoService service;
	
	@GetMapping(value="/todoList.go")
	public String todoList() {
		return "todoList";
	}
	
	@GetMapping(value="/todoList.do")
	@ResponseBody
	public Map<String, Object> todoListDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		logger.info("사원id: "+emp_id);
		
		ArrayList<TodoDTO> list = service.todoList(emp_id);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	@PostMapping(value="/todoListwrite.do")
	@ResponseBody
	public Map<String, Object> todoListWriteDo(HttpSession session, @RequestParam String todoText){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		service.todowrite(emp_id, todoText);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", emp_id);
		
		return map;
	}
	
	@PostMapping(value="/todoListdel.do")
	@ResponseBody
	public Map<String, Object> todoListdelDo(@RequestParam String todoIdx){
		
		service.tododel(todoIdx);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", todoIdx);
		
		return map;
	}
	
	@PostMapping(value="/todoListcheck.do")
	@ResponseBody
	public Map<String, Object> todoListcheckDo(@RequestParam String checked, @RequestParam String todoIdx){
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(checked.equals("true")) { // checked의 상태가 true일 경우
			service.todocheckt(todoIdx);
			map.put("success", checked);		
		}else { // checked의 상태가 false일 경우
			service.todocheckf(todoIdx);
			map.put("success", checked);
		}
		return map;
	}
	
	////////////////////////투두히스토리/////////////////////////////
	@GetMapping(value="/todohistory.do")
	@ResponseBody
	public Map<String, Object> todohistoryDo(HttpSession session){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		logger.info("사원id: "+emp_id);
		
		ArrayList<TodoDTO> list = service.todohistory(emp_id);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		
		return map;
	}
	
}
