package zhida.dao;

import zhida.po.Course;

import java.util.List;

public interface ICourseDao {
    public List<Course> selectAll();
    public Course selectOneByID(String course_id);
    public List<Course> selectByTitle(String course_title);
    public int insertOne(Course course);
    public int updateOne(Course course);
    public int deleteOne(String course_id);
}
