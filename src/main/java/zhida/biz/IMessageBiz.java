package zhida.biz;

import zhida.po.Message;

import java.util.List;

public interface IMessageBiz {
    List<Message> showAll();
    List<Message> showByUser(Integer userId);
    void readMsg(Integer messageId);
    void readAll(Integer userId);
    void newMsg(Message message);
    void deleteOne(Integer messageId);
}
