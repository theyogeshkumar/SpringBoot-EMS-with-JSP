package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.EmployeeDet;
import com.example.demo.dao.HRDet;
import com.example.demo.model.Employee;
import com.example.demo.model.HR;


@Controller 
public class ControllerClass {
	@Autowired
	HRDet hrdet;
	
	@Autowired
	EmployeeDet empdet;
	
		@RequestMapping("/")
		public String home() {
		return "home";
		}
		
		@RequestMapping("/login")
		public String hrLogin() {
		return "login";
		}
		
		
		@RequestMapping("/register")
		public String hrRegister() {
		return "register";
		}
		
		@RequestMapping("/reg_success")
		public ModelAndView empmain(
				@RequestParam("hr_name") String hr_name,
				@RequestParam("hr_uname") String hr_uname,
				@RequestParam("hr_password") String hr_password)
		{
			ModelAndView mv = new ModelAndView();
			mv.addObject("hr_name",hr_name);
			mv.addObject("hr_uname", hr_uname);
			mv.addObject("hr_password",hr_password);
			
			
			HR hr = new HR();
			hr.setHr_name(hr_name);
			hr.setHr_user(hr_uname);
			hr.setHr_password(hr_password);
			hrdet.save(hr);
			
			
			mv.setViewName("reg_success");
			return mv;
			
		}
		
		@RequestMapping("/hrhome")
		public String hrHome() {
		return "hrhome";
		}
		
		
		//adding emp
		@RequestMapping("/insertEmp")
		public String addEmp() {
		return "addemp";
		}
		
		@RequestMapping("/addEmpsucc")
		public ModelAndView addEmpSucc(
				@RequestParam("emp_name") String emp_name,
				@RequestParam("emp_phn") long emp_phn,
				@RequestParam("emp_add") String emp_add,
				@RequestParam("emp_role") String emp_role
				) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("emp_name",emp_name);
			mv.addObject("emp_phn",emp_phn);
			mv.addObject("emp_add",emp_add);
			mv.addObject("emp_role",emp_role);
			
			Employee emp = new Employee();
			emp.setEmp_name(emp_name);
			emp.setEmp_phone(emp_phn);
			emp.setEmp_address(emp_add);
			emp.setEmp_role(emp_role);
			
			empdet.save(emp);
			
			mv.setViewName("addEmpsucc");
			return mv;
		}
		
		
		//updating emp
				@RequestMapping("/updateEmp")
				public String updEmp() {
				return "updemp";
				}
				
				@RequestMapping("/updEmpsucc")
				public ModelAndView updEmpSucc(
						@RequestParam("emp_id") int emp_id,
						@RequestParam("emp_name") String emp_name,
						@RequestParam("emp_phn") long emp_phn,
						@RequestParam("emp_add") String emp_add,
						@RequestParam("emp_role") String emp_role
						) {
					ModelAndView mv = new ModelAndView();
					Optional<Employee> opt_emp = empdet.findById(emp_id);
					Employee em = opt_emp.get();
					mv.addObject("emp_name",emp_name);
					mv.addObject("emp_phn",emp_phn);
					mv.addObject("emp_add",emp_add);
					mv.addObject("emp_role",emp_role);
					
					Employee emp = new Employee();
					em.setEmp_name(emp_name);
					em.setEmp_phone(emp_phn);
					em.setEmp_address(emp_add);
					em.setEmp_role(emp_role);
					
					empdet.save(em);
					
					mv.setViewName("updEmpsucc");
					return mv;
				}
		
				//view all emp
				@RequestMapping("/viewAllEmp")
				public ModelAndView viewAllEmp() {
					
					ModelAndView mv = new ModelAndView();
					Iterable<Employee> listemp = empdet.findAll();
					mv.addObject("listemp",listemp);
					mv.setViewName("viewall");
					
				return mv;
				}
				
				//delete an emp
				@RequestMapping("/deleteEmp")
				public String delEmp() {
				return "delemp";
				}
				
				@RequestMapping("/delEmpsucc")
				public ModelAndView deleteProduct(@RequestParam("emp_id") int emp_id) {
				

					ModelAndView mv = new ModelAndView();
					empdet.deleteById(emp_id);
					System.out.println("employee deleted ");
					mv.setViewName("delEmpsucc");
					return mv;
				}
				
				
				@RequestMapping("/viewEmp")
				public String getOneProduct() {
					return "viewemp";
				}
				
				
				@RequestMapping("/viewEmpsucc")
				public ModelAndView OneProduct(@RequestParam("emp_id") int emp_id) {
				
					ModelAndView mv = new ModelAndView();
					Optional<Employee> opt =  empdet.findById(emp_id);
					Employee emp = opt.get();
					mv.addObject("emp_id",emp.getEmp_id());
					mv.addObject("emp_name",emp.getEmp_name());
					mv.addObject("emp_phn",emp.getEmp_phone());
					mv.addObject("emp_add",emp.getEmp_address());
					mv.addObject("emp_role",emp.getEmp_role());
					
					mv.addObject("emp",emp);
					mv.setViewName("viewEmpsucc");
					System.out.println("Employee details = "+emp);
					return mv;
				}
				
				
}
