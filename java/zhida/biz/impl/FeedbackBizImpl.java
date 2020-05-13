package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.IFeedbackBiz;
import zhida.dao.IFeedbackDao;
import zhida.po.Feedback;

import java.util.List;

@Service
public class FeedbackBizImpl implements IFeedbackBiz {
    private IFeedbackDao feedbackDao;

    public IFeedbackDao getFeedbackDao() {
        return feedbackDao;
    }

    @Autowired
    public void setFeedbackDao(IFeedbackDao feedbackDao) {
        this.feedbackDao = feedbackDao;
    }

    @Override
    public List<Feedback> showInfos() {
        List<Feedback> list = feedbackDao.selectAll();
        return list;
    }

    @Override
    public Feedback showOne(String feedback_id) {
        return feedbackDao.selectOneByID(feedback_id);
    }

    @Override
    public void insertOne(Feedback feedback) {
        System.out.println("This is a insert method!");
        feedbackDao.insertOne(feedback);
    }

    @Override
    public void deleteOne(String feedback_id) {
        System.out.println("This is a delete method!");
        feedbackDao.deleteOne(feedback_id);
    }
}
