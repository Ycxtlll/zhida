package zhida.biz;

import zhida.po.News;

import java.util.List;

public interface INewsBiz {
    public List<News> showInfos();
    public News showOne(Integer news_id);
    public List<News> selectNews(String news_title);
    public List<News> selectNewsByData(String release_date);
    public void insertOne(News news);
    public void updateOne(News news);
    public void deleteOne(String news_id);
}
