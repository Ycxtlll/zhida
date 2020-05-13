package zhida.dao;

import zhida.po.Feedback;

import java.util.List;

public interface IFeedbackDao {
    public List<Feedback> selectAll();
    public Feedback selectOneByID(String feedback_id);
    public int insertOne(Feedback feedback);
    public int deleteOne(String feedback_id);
}
