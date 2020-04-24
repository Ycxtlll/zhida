package zhida.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import zhida.biz.*;
import zhida.po.*;

@Controller
public class FrontController {
	@Autowired
	private IUserBiz userBiz;
	@Autowired
	private ICourseBiz courseBiz;
	@Autowired
	private IGuideBiz guideBiz;
	@Autowired
	private INewsBiz newsBiz;
	@Autowired
	private IFeedbackBiz feedbackBiz;
	@Autowired
	private IMessageBiz messageBiz;
	
	@RequestMapping(value = "login.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String login(
			String userLoginName,
			String userPassword,
			HttpServletResponse response,
			HttpServletRequest request) {
		System.out.println(userLoginName);
		System.out.println(userPassword);
		try {
			User user = userBiz.login(userLoginName, userPassword);
			System.out.println(user);
			Gson g=new Gson();
			String rtn=g.toJson(user);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "register.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String regster(User user,
			HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(user);
		try {
			user.setUserStatus(0);
			userBiz.insertOne(user);
			Integer user_id = userBiz.login(user.getUserLoginName(), user.getUserPassword()).getUserId();
			System.out.println(user_id);
			Message message = new Message();
			message.setUserId(user_id);
			message.setMessageTitle("欢迎来到职达面试！");
			message.setMessageContent("您已注册成功，我们十分感谢您的到来，希望您能在这里获得良好体验，若有问题，请反馈给我们！");
			messageBiz.newMsg(message);
			Gson g=new Gson();
			String rtn=g.toJson(user_id);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}



	@RequestMapping(value = "checkName.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String forgetPass(String user_login_name, HttpServletRequest request, HttpServletResponse response){
		System.out.println(user_login_name);
		try{
			Integer user_id = userBiz.checkLoginName(user_login_name).getUserId();
            Gson g=new Gson();
            String rtn=g.toJson(user_id);
            response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
            response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
            return rtn;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method", "POST,GET");//允许访问的方式
			return rtng;
		}
	}

    @RequestMapping(value = "forgetPass_updatePass.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
    @ResponseBody
    public String updateUserPass(User user, HttpServletRequest request, HttpServletResponse response){
        System.out.println(user);
        try {
            User u = userBiz.showOne(user.getUserId());
            if (u.getUserName().equals(user.getUserName())&&u.getUserPhone().equals(user.getUserPhone())
                    &&u.getUserEmail().equals(user.getUserEmail())){
                u.setUserPassword(user.getUserPassword());
                userBiz.updateOne(u);
                Gson g=new Gson();
                String rtn=g.toJson("update success");
                response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
                response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
                return rtn;
            }else {
                Gson g=new Gson();
                String rtn=g.toJson("failed");
                response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
                response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
                return rtn;
            }

        }catch (Exception e){
            e.printStackTrace();
            Gson gg = new Gson();
            String rtng = gg.toJson("false");
            System.out.println(rtng);
            response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
            response.addHeader("Access-Control-Allow-Method", "POST,GET");//允许访问的方式
            return rtng;
        }
    }

	@RequestMapping(value = "joinvip.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String joinvip(Integer user_id, HttpServletRequest request, HttpServletResponse response) {
		System.out.println(user_id);
		try {
			User user = userBiz.showOne(user_id);
			user.setUserStatus(1);
			System.out.println(user);
			userBiz.updateOne(user);
			Message message = new Message();
			message.setUserId(user_id);
			message.setMessageTitle("您已经成为VIP用户！");
			message.setMessageContent("感谢您对我们的信任，我们将为您提供更加优质的服务！");
			messageBiz.newMsg(message);
			Gson g=new Gson();
			String rtn=g.toJson("Join VIP success!");
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "news.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String showNews(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<News> list = newsBiz.showInfos();
            list.forEach(System.out::println);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}


	@RequestMapping(value = "selectnews.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectNews(String news_title,
			HttpServletRequest request,
			HttpServletResponse response) {
		try {
			List<News> list = newsBiz.selectNews(news_title);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "selectnewsbydate.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectNewsByData(String release_date,
							 HttpServletRequest request,
							 HttpServletResponse response) {
		try {
			List<News> list = newsBiz.selectNewsByData(release_date);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "guide.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String showGuides(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<Guide> list = guideBiz.showInfos();
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "selectguides.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectGuides(String guide_title,
			HttpServletRequest request,
			HttpServletResponse response) {
		try {
			List<Guide> list = guideBiz.selectGuides(guide_title);
			System.out.println(guide_title);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "selectcourse.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String selectCourse(String course_title,
			HttpServletRequest request,
			HttpServletResponse response) {
		try {
			List<Course> list = courseBiz.selectCourse(course_title);
			System.out.println(course_title);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "feedback.do",method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String feedback(Feedback feedback,
						   HttpServletRequest request,
						   HttpServletResponse response) {
		try {
			System.out.println(feedback);
			feedbackBiz.insertOne(feedback);
			Integer userId = feedback.getUserId();
			Message message = new Message();
			message.setUserId(userId);
			message.setMessageTitle("感谢您的反馈！");
			message.setMessageContent("我们已经收到了您的建议，我们会尽快改进并联系您，请关注消息通知。");
			messageBiz.newMsg(message);
			Gson g=new Gson();
			String rtn=g.toJson("Submit success!");
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "myMessage.do", method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String msg(Integer userId,HttpServletRequest request,
					  HttpServletResponse response){
		try {
			System.out.println(userId);
			List<Message> list = messageBiz.showByUser(userId);
			Gson g=new Gson();
			String rtn=g.toJson(list);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}

	@RequestMapping(value = "read.do", method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView read(Integer messageId){
		ModelAndView mv = new ModelAndView();
		messageBiz.readMsg(messageId);
		mv.setViewName("front/message");
		return mv;
	}

	@RequestMapping(value = "unNeed.do", method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView unNeed(Integer messageId){
		ModelAndView mv = new ModelAndView();
		messageBiz.deleteOne(messageId);
		mv.setViewName("front/message");
		return mv;
	}

	@RequestMapping(value = "allread.do", method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView readAll(Integer userId){
		ModelAndView mv = new ModelAndView();
		messageBiz.readAll(userId);
		mv.setViewName("front/message");
		return mv;
	}

	@RequestMapping(value = "checkMsg.do", method = {RequestMethod.GET,RequestMethod.POST},produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String checkMsg(Integer userId,HttpServletRequest request,
						   HttpServletResponse response){
		try {
			List<Message> list = messageBiz.showByUser(userId);
			int i = (int) list.stream().filter(l -> l.getMessageStatus() == 0).count();
			System.out.println("new message:"+i);
			Gson g=new Gson();
			String rtn=g.toJson(i);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtn;
		}catch (Exception e){
			// TODO: handle exception
			e.printStackTrace();
			Gson gg = new Gson();
			String rtng = gg.toJson("false");
			System.out.println(rtng);
			response.addHeader("Access-Control-Allow-Origin", "*");//允许所有来源访问
			response.addHeader("Access-Control-Allow-Method","POST,GET");//允许访问的方式
			return rtng;
		}
	}
}
