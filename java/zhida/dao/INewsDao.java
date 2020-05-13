package zhida.dao;

import zhida.po.News;

import java.util.List;

public interface INewsDao {
    public List<News> selectAll();
    public News selectOneByID(Integer news_id);
    public List<News> selectByTitle(String news_title);
    public List<News> selectByDate(String release_date);
    public int insertOne(News news);
    public int updateOne(News news);
    public int deleteOne(String news_id);
}
