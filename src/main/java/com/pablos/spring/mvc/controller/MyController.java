package com.pablos.spring.mvc.controller;

import com.pablos.spring.mvc.dao.EmployeeDAO;
import com.pablos.spring.mvc.entity.Employee;
import com.pablos.spring.mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MyController {
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmployees", allEmployees);
        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmp(Model model) {
        Employee employee = new Employee();
        model.addAttribute("newEmployee", employee);
        return "add-employee-dialog";
    }

    @RequestMapping("/saveNewEmployee")
    public String saveNewEmployee(@ModelAttribute("newEmployee") Employee employee){
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }
}
