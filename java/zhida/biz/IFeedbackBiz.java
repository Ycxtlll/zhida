package zhida.biz;

import zhida.po.Feedback;

import java.util.List;

public interface IFeedbackBiz {
    public List<Feedback> showInfos();
    public Feedback showOne(String feedback_id);
    public void insertOne(Feedback feedback);
    public void deleteOne(String feedback_id);
}
