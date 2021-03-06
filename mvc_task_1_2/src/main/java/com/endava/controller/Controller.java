package com.endava.controller;

import com.endava.enity.Student;
import com.endava.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.List;

@org.springframework.stereotype.Controller
@EnableWebMvc
@RequestMapping("/")
public class Controller {

    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/showForm", method = RequestMethod.GET)
    public String showForm() {
        return "show_form";
    }

    @RequestMapping(value = "/procesForm", method = RequestMethod.POST)
    public String procesFormVersionTwo(@RequestParam("studentName") String studentName,
                                       @RequestParam("lastName") String lastName, Model theModel) {

        String firstName=studentName;
        String lastN=lastName;

        studentService.add( new Student(firstName, lastN));
        System.out.println(studentService.getAllStudents());

        return "show_form";
    }


    @RequestMapping(value = "/display", method = RequestMethod.GET)
    public ModelAndView getdata() {

        List<Student> list = studentService.getAllStudents();
        ModelAndView model = new ModelAndView("proces_form");
        model.addObject("lists", list);

        return model;

    }

}


