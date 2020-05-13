package zhida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import zhida.biz.*;
import zhida.po.*;

@Controller
public class BackController {
	
	@Autowired
	private IUserBiz userBiz;
	@Autowired
	private ICourseBiz courseBiz;
	@Autowired
	private ICourse_orderBiz course_orderBiz;
	@Autowired
	private IGuideBiz guideBiz;
	@Autowired
	private INewsBiz newsBiz;
	@Autowired
	private IFeedbackBiz feedbackBiz;
	@Autowired
	private IMessageBiz messageBiz;
	
	
	
//User
	@RequestMapping(value = "showUser.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showUser() {
		ModelAndView mv = new ModelAndView();
		List<User> list = userBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_user");
		mv.addObject("userlist",list);
		return mv;
	}

	@RequestMapping(value = "editUser.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView editu1(Integer user_id) {
		ModelAndView mv=new ModelAndView("back/editUser");
		User list = userBiz.showOne(user_id);
		mv.addObject("userlist", list);
		return mv;
	}

	@RequestMapping(value = "editUser.do",method = RequestMethod.POST,produces = "application/json; charset=UTF-8")
	public ModelAndView editu2(User u) {
		ModelAndView mv=new ModelAndView("back/info_user");
		userBiz.updateOne(u);
		List<User> userlist = userBiz.showInfos();
		mv.addObject("userlist", userlist);
		System.out.println(userlist);
		return mv;
	}

	@RequestMapping(value = "deleteUser.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteUser(String user_id) {
		ModelAndView mv=new ModelAndView("back/info_user");
		userBiz.deleteOne(user_id);
		List<User> userlist = userBiz.showInfos();
		mv.addObject("userlist", userlist);
		System.out.println(userlist);
		return mv;
	}

	@RequestMapping(value = "searchUser.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView searchUser(String user_login_name) {
		ModelAndView mv = new ModelAndView();
		List<User> list = userBiz.selectUser(user_login_name);
		System.out.println(list);
		mv.setViewName("back/info_user");
		mv.addObject("userlist",list);
		return mv;
	}

//Course
	@RequestMapping(value = "showCourse.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showCourse() {
		ModelAndView mv = new ModelAndView();
		List<Course> list = courseBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_course");
		mv.addObject("courselist",list);
		return mv;
	}

	@RequestMapping(value = "editCourse.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView editc1(String course_id) {
		ModelAndView mv=new ModelAndView("back/editCourse");
		Course list = courseBiz.showOne(course_id);
		mv.addObject("courselist", list);
		return mv;
	}

	@RequestMapping(value = "editCourse.do",method = RequestMethod.POST,produces = "application/json; charset=UTF-8")
	public ModelAndView editc2(Course c) {
		ModelAndView mv=new ModelAndView("back/info_course");
		courseBiz.updateOne(c);
		List<Course> list = courseBiz.showInfos();
		mv.addObject("courselist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "deleteCourse.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteCourse(String course_id) {
		ModelAndView mv=new ModelAndView("back/info_course");
		courseBiz.deleteOne(course_id);
		List<Course> list = courseBiz.showInfos();
		mv.addObject("courselist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "searchCourse.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView searchCourse(String course_title) {
		ModelAndView mv = new ModelAndView();
		List<Course> list = courseBiz.selectCourse(course_title);
		System.out.println(list);
		mv.setViewName("back/info_course");
		mv.addObject("courselist",list);
		return mv;
	}

//Course_order
	@RequestMapping(value = "showCourse_order.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showCourse_order() {
		ModelAndView mv = new ModelAndView();
		List<Course_order> list = course_orderBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_course_order");
		mv.addObject("course_orderlist",list);
		return mv;
	}

	@RequestMapping(value = "editCourse_order.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView editc_o1(String order_id) {
		ModelAndView mv=new ModelAndView("back/editCourse_order");
		Course_order list = course_orderBiz.showOne(order_id);
		mv.addObject("course_orderlist", list);
		return mv;
	}

	@RequestMapping(value = "editCourse_order.do",method = RequestMethod.POST,produces = "application/json; charset=UTF-8")
	public ModelAndView editc_o2(Course_order c_o) {
		ModelAndView mv=new ModelAndView("back/info_course_order");
		course_orderBiz.updateOne(c_o);
		List<Course_order> list = course_orderBiz.showInfos();
		mv.addObject("course_orderlist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "deleteCourse_order.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteCourse_order(String order_id) {
		ModelAndView mv=new ModelAndView("back/info_course_order");
		course_orderBiz.deleteOne(order_id);
		List<Course_order> list = course_orderBiz.showInfos();
		mv.addObject("course_orderlist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "searchCourse_order.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView searchCourse_order(String course_title) {
		ModelAndView mv = new ModelAndView();
		List<Course_order> list = course_orderBiz.selectCourse(course_title);
		System.out.println(list);
		mv.setViewName("back/info_course_order");
		mv.addObject("course_orderlist",list);
		return mv;
	}


//Guide
	@RequestMapping(value = "showGuide.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showGuide() {
		ModelAndView mv = new ModelAndView();
		List<Guide> list = guideBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_guide");
		mv.addObject("guidelist",list);
		return mv;
	}

	@RequestMapping(value = "editGuide.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView editg1(String guide_id) {
		ModelAndView mv=new ModelAndView("back/editGuide");
		Guide list = guideBiz.showOne(guide_id);
		mv.addObject("guidelist", list);
		return mv;
	}

	@RequestMapping(value = "editGuide.do",method = RequestMethod.POST,produces = "application/json; charset=UTF-8")
	public ModelAndView editg2(Guide g) {
		ModelAndView mv=new ModelAndView("back/info_guide");
		guideBiz.updateOne(g);
		List<Guide> list = guideBiz.showInfos();
		mv.addObject("guidelist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "deleteGuide.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteGuide(String guide_id) {
		ModelAndView mv=new ModelAndView("back/info_guide");
		guideBiz.deleteOne(guide_id);
		List<Guide> list = guideBiz.showInfos();
		mv.addObject("guidelist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "searchGuide.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView searchGuide(String guide_title) {
		ModelAndView mv = new ModelAndView();
		List<Guide> list = guideBiz.selectGuides(guide_title);
		System.out.println(list);
		mv.setViewName("back/info_guide");
		mv.addObject("guidelist",list);
		return mv;
	}

//News
	@RequestMapping(value = "showNews.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showNews() {
		ModelAndView mv = new ModelAndView();
		List<News> list = newsBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_news");
		mv.addObject("newslist",list);
		return mv;
	}

	@RequestMapping(value = "editNews.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView editn1(Integer news_id) {
		ModelAndView mv=new ModelAndView("back/editNews");
		News list = newsBiz.showOne(news_id);
		mv.addObject("newslist", list);
		return mv;
	}

	@RequestMapping(value = "editNews.do",method = RequestMethod.POST,produces = "application/json; charset=UTF-8")
	public ModelAndView editn2(News n) {
		ModelAndView mv=new ModelAndView("back/info_news");
		newsBiz.updateOne(n);
		List<News> list = newsBiz.showInfos();
		mv.addObject("newslist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "deleteNews.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteNews(String news_id) {
		ModelAndView mv=new ModelAndView("back/info_news");
		newsBiz.deleteOne(news_id);
		List<News> list = newsBiz.showInfos();
		mv.addObject("newslist", list);
		System.out.println(list);
		return mv;
	}

	@RequestMapping(value = "searchNews.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView searchNews(String news_title) {
		ModelAndView mv = new ModelAndView();
		List<News> list = newsBiz.selectNews(news_title);
		System.out.println(list);
		mv.setViewName("back/info_news");
		mv.addObject("newslist",list);
		return mv;
	}

//Feedback
	@RequestMapping(value = "showFeedback.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showFeedback() {
		ModelAndView mv = new ModelAndView();
		List<Feedback> list = feedbackBiz.showInfos();
		System.out.println(list);
		mv.setViewName("back/info_feedback");
		mv.addObject("feedbacklist",list);
		return mv;
	}

	@RequestMapping(value = "detailOfFeedback.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView detailOfFeedback(String feedback_id) {
		ModelAndView mv=new ModelAndView("back/feedbackDetail");
		Feedback feedback = feedbackBiz.showOne(feedback_id);
		mv.addObject("feedback", feedback);
		return mv;
	}

	@RequestMapping(value = "deleteFeedback.do",method = RequestMethod.GET,produces = "application/json; charset=UTF-8")
	public ModelAndView deleteFeedback(String feedback_id) {
		ModelAndView mv=new ModelAndView("back/info_feedback");
		feedbackBiz.deleteOne(feedback_id);
		List<Feedback> list = feedbackBiz.showInfos();
		mv.addObject("feedbacklist", list);
		System.out.println(list);
		return mv;
	}

//Message
	@RequestMapping(value = "showMessage.do",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView showMessage() {
		ModelAndView mv = new ModelAndView();
		List<Message> list = messageBiz.showAll();
		System.out.println(list);
		mv.setViewName("back/info_message");
		mv.addObject("messagelist",list);
		return mv;
	}
}
