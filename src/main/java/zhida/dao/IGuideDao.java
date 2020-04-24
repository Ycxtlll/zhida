package zhida.dao;

import zhida.po.Guide;

import java.util.List;

public interface IGuideDao {
    public List<Guide> selectAll();
    public Guide selectOneByID(String guide_id);
    public List<Guide> selectByTitle(String guide_title);
    public int insertOne(Guide guide);
    public int updateOne(Guide guide);
    public int deleteOne(String guide_id);
}
