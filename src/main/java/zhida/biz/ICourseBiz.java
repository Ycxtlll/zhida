package zhida.biz;

import zhida.po.Course;

import java.util.List;

public interface ICourseBiz {
    public List<Course> showInfos();
    public Course showOne(String course_id);
    public List<Course> selectCourse(String course_title);
    public void insertOne(Course course);
    public void updateOne(Course course);
    public void deleteOne(String course_id);
}
