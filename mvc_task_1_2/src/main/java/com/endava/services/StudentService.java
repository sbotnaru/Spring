package com.endava.services;

import com.endava.enity.Student;

import java.util.List;

public interface StudentService {

    public void add(Student student);

    public List<Student> getAllStudents();

    public Student getStudentById(int id);

}
