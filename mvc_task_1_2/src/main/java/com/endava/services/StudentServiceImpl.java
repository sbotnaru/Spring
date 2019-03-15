package com.endava.services;

import com.endava.dao.StudentDao;
import com.endava.enity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    @Override

    public void add(Student student) {
        studentDao.add(student);
    }

    @Override
    public List<Student> getAllStudents() {
        List<String> helpList=new ArrayList<>();
        for (int i = 0; i < studentDao.getSizeOfList() ; i++) {
            helpList.add(String.valueOf(studentDao.getById(i)));
        }


        return studentDao.getAllStudents();
    }

    @Override
    public Student getStudentById(int id) {
        return studentDao.getById(id);
    }
}
