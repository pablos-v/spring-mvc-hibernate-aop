package com.pablos.spring.mvc.controller;

import com.pablos.spring.mvc.dao.EmployeeDAO;
import com.pablos.spring.mvc.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MyController {
    @Autowired
    private EmployeeDAO employeeDAO;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
        List<Employee> allEmployees = employeeDAO.getAllEmployees();
        model.addAttribute("allEmployees", allEmployees);
        return "all-employees";
    }
}
