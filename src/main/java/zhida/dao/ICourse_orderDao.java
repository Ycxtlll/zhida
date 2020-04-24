package zhida.dao;

import zhida.po.Course_order;

import java.util.List;

public interface ICourse_orderDao {
	public List<Course_order> selectAll();
    public Course_order selectOneByID(String order_id);
    public List<Course_order> selectByTitle(String course_title);
    public int insertOne(Course_order course_order);
    public int updateOne(Course_order course_order);
    public int deleteOne(String order_id);

}
