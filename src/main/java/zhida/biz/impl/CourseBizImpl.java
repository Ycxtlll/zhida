package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.ICourseBiz;
import zhida.dao.ICourseDao;
import zhida.po.Course;

import java.util.List;

@Service
public class CourseBizImpl implements ICourseBiz {
    private ICourseDao courseDao;

    public ICourseDao getICourseDao() {
        return courseDao;
    }
    @Autowired
    public void setICourseDao(ICourseDao ICourseDao) {
        this.courseDao = ICourseDao;
    }

    public List<Course> showInfos(){
        List<Course> clist = courseDao.selectAll();
        return clist;
    }

    public Course showOne(String course_id){
        return courseDao.selectOneByID(course_id);
    }

    public List<Course> selectCourse(String course_title) {
		List<Course> list =  courseDao.selectByTitle(course_title);
		return list;
	}

    public void insertOne(Course course){
        System.out.println("This is a insert method!");
        courseDao.insertOne(course);
    }

    public void updateOne(Course course){
        System.out.println("This is a update method!");
        courseDao.updateOne(course);
    }

    public void deleteOne(String course_id){
        System.out.println("This is a delete method!");
        courseDao.deleteOne(course_id);
    }
}
