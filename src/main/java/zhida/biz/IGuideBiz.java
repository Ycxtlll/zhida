package zhida.biz;

import zhida.po.Guide;

import java.util.List;

public interface IGuideBiz {
    public List<Guide> showInfos();
    public Guide showOne(String guide_id);
    public List<Guide> selectGuides(String guide_title);
    public void insertOne(Guide guide);
    public void updateOne(Guide guide);
    public void deleteOne(String guide_id);
}
