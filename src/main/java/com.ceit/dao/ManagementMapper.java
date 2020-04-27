package com.ceit.dao;

import com.ceit.model.Grade;
import com.ceit.model.Student;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface ManagementMapper {
    public ArrayList<Student> selectAllStudentByPage(@Param(value = "firstPage") int min,@Param(value = "rows") int rows);
    public int allStudentCount();
    public ArrayList<Grade> selectAllGradeByPage(@Param(value = "firstPage")int firstPage,@Param(value = "rows") int rows);
    public int allGradeCount();
    public ArrayList<HashMap> selectGradeIdAndName();
    public void addStudent(Student student);
    public void updateStudent(@Param(value = "student") Student student,@Param("stuId") int stuId);
    public int selectMaxStuId();
    public void addGrade(Grade grade);
    public int selectMaxGradeId();
    public void updateGrade(@Param(value = "grade")Grade grade,@Param(value = "id")int id);
    public void deleteStudent(@Param(value = "idList") Integer idList []);
    public  void deleteGrade(@Param(value = "idList") Integer idList []);
    public List<Student> selectStudentBySexAndGrade(@Param(value="sex") String sex,@Param(value="gradeId") int gradeId);
}
