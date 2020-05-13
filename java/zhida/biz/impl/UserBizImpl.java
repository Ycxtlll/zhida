package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.IUserBiz;
import zhida.dao.IUserDao;
import zhida.po.User;

import java.util.List;

@Service
public class UserBizImpl implements IUserBiz {
    private IUserDao userDao;

    public IUserDao getUserDao() {
        return userDao;
    }
    @Autowired
    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    //select
    public List<User> showInfos(){
        List<User> ulist = userDao.selectAll();
        return ulist;
    }

    public User showOne(Integer user_id){
        return userDao.selectOneByID(user_id);
    }

    public User login(String user_login_name, String user_password) {
    	User user = new User();
    	user.setUserLoginName(user_login_name);
    	user.setUserPassword(user_password);
    	return userDao.login(user);
    }

    public List<User> selectUser(String user_login_name) {
		List<User> list = userDao.selectByLoginName(user_login_name);
		return list;
	}

    public User checkLoginName(String user_login_name){
        return userDao.checkLoginName(user_login_name);
    }

    //insert
    public void insertOne(User user){
        System.out.println("This is a insert method!");
        userDao.insertOne(user);
    }

    //update
    public void updateOne(User user){
        System.out.println("This is a update method!");
        userDao.updateOne(user);
    }

    //delete
    public void deleteOne(String user_id){
        System.out.println("This is a delete method!");
        userDao.deleteOne(user_id);
    }
}
