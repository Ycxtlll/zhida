package zhida.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zhida.biz.ICourse_orderBiz;
import zhida.dao.ICourse_orderDao;
import zhida.po.Course_order;

@Service
public class Course_orderBizImpl implements ICourse_orderBiz{
	private ICourse_orderDao course_orderDao;

	public ICourse_orderDao getCourse_orderDao() {
		return course_orderDao;
	}
	@Autowired
	public void setCourse_orderDao(ICourse_orderDao course_orderDao) {
		this.course_orderDao = course_orderDao;
	}

	public List<Course_order> showInfos(){
		List<Course_order> cList = course_orderDao.selectAll();
		return cList;
	}

	public Course_order showOne(String order_id) {
		return course_orderDao.selectOneByID(order_id);
	}

	public List<Course_order> selectCourse(String course_title){
		List<Course_order> cList = course_orderDao.selectByTitle(course_title);
		return cList;
	}

	public void insertOne(Course_order course_order){
        System.out.println("This is a insert method!");
        course_orderDao.insertOne(course_order);
    }

    public void updateOne(Course_order course_order){
        System.out.println("This is a update method!");
        course_orderDao.updateOne(course_order);
    }

    public void deleteOne(String order_id){
        System.out.println("This is a delete method!");
        course_orderDao.deleteOne(order_id);
    }

}
