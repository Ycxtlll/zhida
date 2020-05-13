package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.IMessageBiz;
import zhida.dao.IMessageDao;
import zhida.po.Message;

import java.util.List;
@Service
public class MessageBizImpl implements IMessageBiz {
    private IMessageDao messageDao;
    @Autowired
    public void setMessageDao(IMessageDao messageDao) {
        this.messageDao = messageDao;
    }

    @Override
    public List<Message> showAll() {
        return messageDao.selectAll();
    }

    @Override
    public List<Message> showByUser(Integer userId) {
        return messageDao.selectByUserId(userId);
    }

    @Override
    public void readMsg(Integer messageId) {
        messageDao.updateStatus(messageId);
    }

    @Override
    public void readAll(Integer userId) {
        messageDao.updateByUserId(userId);
    }

    @Override
    public void newMsg(Message message) {
        messageDao.insertMsg(message);
    }

    @Override
    public void deleteOne(Integer messageId) {
        messageDao.deleteById(messageId);
    }
}
