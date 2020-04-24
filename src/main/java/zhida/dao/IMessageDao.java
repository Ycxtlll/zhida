package zhida.dao;

import zhida.po.Message;

import java.util.List;

public interface IMessageDao {
    List<Message> selectAll();
    List<Message> selectByUserId(Integer userId);
    void updateStatus(Integer messageId);
    void updateByUserId(Integer userId);
    void insertMsg(Message message);
    void deleteById(Integer messageId);
}
