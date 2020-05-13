package zhida.biz;

import zhida.po.Course_order;

import java.util.List;

public interface ICourse_orderBiz {
	public List<Course_order> showInfos();
    public Course_order showOne(String order_id);
    public List<Course_order> selectCourse(String course_title);
    public void insertOne(Course_order course_order);
    public void updateOne(Course_order course_order);
    public void deleteOne(String order_id);
}
