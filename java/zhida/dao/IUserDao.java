package zhida.dao;

import zhida.po.User;

import java.util.List;

public interface IUserDao {
	//select
    public List<User> selectAll();
    public User selectOneByID(Integer user_id);
    public User login(User user);
    public List<User> selectByLoginName(String user_login_name);
    public User checkLoginName(String user_login_name);
    //insert
    public int insertOne(User user);
    //update
    public int updateOne(User user);
    //delete
    public int deleteOne(String user_id);
}
