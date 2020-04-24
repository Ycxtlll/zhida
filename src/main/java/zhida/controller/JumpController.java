package zhida.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JumpController {
    @RequestMapping(value = "/about")
    public String toAbout(){
        return "front/about";
    }

    @RequestMapping(value = {"/index","/"})
    public String toIndex(){
        return "front/index";
    }

    @RequestMapping(value = "/toUs")
    public String toUs(){
        return "front/toUs";
    }

    @RequestMapping(value = "/login")
    public String toLogin(){
        return "front/login/login";
    }

    @RequestMapping(value = "/register")
    public String toRegister(){
        return "front/login/register";
    }

    @RequestMapping(value = "/forgetPass")
    public String toForgetPass(){
        return "front/login/forgetPass";
    }

    @RequestMapping(value = "/news")
    public String toIndexNews(){
        return "front/news/index_news";
    }

    @RequestMapping(value = "/courseOrder")
    public String toCOrder(){
        return "front/course/courseOrder";
    }

    @RequestMapping(value = "/interSkill")
    public String toISkill(){
        return "front/course/interSkill";
    }

    @RequestMapping(value = "/personTest")
    public String toPTest(){
        return "front/course/personTest";
    }

    @RequestMapping(value = "/pt1")
    public String toP01(){
        return "front/course/personTest/p01";
    }

    @RequestMapping(value = "/pt2")
    public String toP02(){
        return "front/course/personTest/p02";
    }

    @RequestMapping(value = "/news001")
    public String toNews01(){
        return "front/news/news_001";
    }

    @RequestMapping(value = "/resume")
    public String toResumeMake(){
        return "front/course/interSkill/resumeMake";
    }

    @RequestMapping(value = "/baidu1")
    public String tobaidu01(){
        return "front/course/personTest/baidu01";
    }

    @RequestMapping(value = "/baidu2")
    public String tobaidu02(){
        return "front/course/personTest/baidu02";
    }

    @RequestMapping(value = "/msg")
    public String toMsg(){
        return "front/message";
    }

    @RequestMapping(value = "/joinVip")
    public String toJoinVip(){
        return "front/joinVip";
    }
}
