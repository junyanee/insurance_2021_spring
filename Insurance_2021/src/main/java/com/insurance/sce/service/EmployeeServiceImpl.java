package com.insurance.sce.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insurance.sce.dao.EmployeeDAO;
import com.insurance.sce.model.employee.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	@Autowired
	EmployeeDAO employeeDAO;
	
	public Map<String, Object> loginEmployee(String id, String pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 해당 Id를 가진 Employee 불러오기
		Employee tmp = new Employee();
		tmp.setEmployeeId(id);
		tmp.setPassword(pw);
		Employee employee= employeeDAO.selectByIdPw(tmp);
		
		if(employee == null) return null;
		else {
			String employeeRole = "redirect:/";
			switch(employee.getERole()) {
			case insuranceDeveloper: employeeRole += "developerView";
				break;
			case insuranceConfirmer: employeeRole += "confirmInsurance";
				break;
			case underWriter: employeeRole += "underWriter";
				break;
			case salesperson :employeeRole += "salesperson";
				break;
			default:
				break;
			}
			map.put("employeeRole", employeeRole);
			map.put("employee", employee);
			
			return map;
		}
	}
}
