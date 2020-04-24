package zhida.biz;

import zhida.po.User;

import java.util.List;

public interface IUserBiz {
	//select
    public List<User> showInfos();
    public User showOne(Integer user_id);
    public User login(String user_login_name, String user_password);
    public List<User> selectUser(String user_login_name);
    public User checkLoginName(String user_login_name);
    //insert
    public void insertOne(User user);
    //updata
    public void updateOne(User user);
    //delete
    public void deleteOne(String user_id);
}
