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
	
	@GetMapping(value={"/todoList.do","/views/todoList.do","/project/todoList.do","/approval/todoList.do","/chat/todoList.do","/creators/todoList.do","/employee/todoList.do","/approval/approval_write.go/todoList.do","/approval/getApproval_detail.go/todoList.do","/myHr/todoList.do"})
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
	
	@PostMapping(value={"/todoListwrite.do","/views/todoListwrite.do","/project/todoListwrite.do","/approval/todoListwrite.do","/chat/todoListwrite.do","/creators/todoListwrite.do","/employee/todoListwrite.do","/approval/approval_write.go/todoListwrite.do","/approval/getApproval_detail.go/todoListwrite.do","/myHr/todoListwrite.do"})
	@ResponseBody
	public Map<String, Object> todoListWriteDo(HttpSession session, @RequestParam String todoText){
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
		String emp_id = dto.getEmp_id();
		
		service.todowrite(emp_id, todoText);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", emp_id);
		
		return map;
	}
	
	@PostMapping(value={"/todoListdel.do","/views/todoListdel.do","/project/todoListdel.do","/approval/todoListdel.do","/chat/todoListdel.do","/creators/todoListdel.do","/employee/todoListdel.do","/approval/approval_write.go/todoListdel.do","/approval/getApproval_detail.go/todoListdel.do","/myHr/todoListdel.do"})
	@ResponseBody
	public Map<String, Object> todoListdelDo(@RequestParam String todoIdx){
		
		service.tododel(todoIdx);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", todoIdx);
		
		return map;
	}
	
	@PostMapping(value={"/todoListcheck.do","/views/todoListcheck.do","/project/todoListcheck.do","/approval/todoListcheck.do","/chat/todoListcheck.do","/creators/todoListcheck.do","/employee/todoListcheck.do","/approval/approval_write.go/todoListcheck.do","/approval/getApproval_detail.go/todoListcheck.do","/myHr/todoListcheck.do"})
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
	
	@PostMapping(value={"/todoListhide.do","/views/todoListhide.do","/project/todoListhide.do","/approval/todoListhide.do","/chat/todoListhide.do","/creators/todoListhide.do","/employee/todoListhide.do","/approval/approval_write.go/todoListhide.do","/approval/getApproval_detail.go/todoListhide.do","/myHr/todoListhide.do"})
	@ResponseBody
	public Map<String, Object> todoListhideDo(@RequestParam String checked, @RequestParam String todoIdx){
		
		Map<String, Object> map = new HashMap<String, Object>();
		int up = 0;
		if(checked.equals("true")) {			
			up = service.todohide(todoIdx);
		}else {
			service.tododel(todoIdx);
		}
		
		map.put("success", up);
		return map;
	}
	
	////////////////////////투두히스토리/////////////////////////////
	@GetMapping(value={"/todoList_history.go","/views/todoList_history.go","/project/todoList_history.go","/approval/todoList_history.go","/chat/todoList_history.go","/creators/todoList_history.go","/employee/todoList_history.go","/approval/approval_write.go/todoList_history.go","/approval/getApproval_detail.go/todoList_history.go","/myHr/todoList_history.go"})
	public String todohistoryGo() {
		return "todoList_history";
	}
	
	@GetMapping(value={"/todohistory.do","/views/todohistory.do","/project/todohistory.do","/approval/todohistory.do","/chat/todohistory.do","/creators/todohistory.do","/employee/todohistory.do","/approval/approval_write.go/todohistory.do","/approval/getApproval_detail.go/todohistory.do","/myHr/todohistory.do"})
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
