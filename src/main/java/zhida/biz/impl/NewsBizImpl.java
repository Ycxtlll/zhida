package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.INewsBiz;
import zhida.dao.INewsDao;
import zhida.po.News;

import java.util.List;

@Service
public class NewsBizImpl implements INewsBiz {
    private INewsDao newsDao;

    public INewsDao getNewsDao() {
        return newsDao;
    }
    @Autowired
    public void setNewsDao(INewsDao newsDao) {
        this.newsDao = newsDao;
    }

    public List<News> showInfos(){
        List<News> nlist = newsDao.selectAll();
        return nlist;
    }

    public News showOne(Integer news_id){
        return newsDao.selectOneByID(news_id);
    }

    public List<News> selectNews(String news_title){
    	List<News> list = newsDao.selectByTitle(news_title);
    	return list;
    }

    @Override
    public List<News> selectNewsByData(String release_date) {
        List<News> list = newsDao.selectByDate(release_date);
        return list;
    }

    public void insertOne(News news){
        System.out.println("This is a insert method!");
        newsDao.insertOne(news);
    }

    public void updateOne(News news){
        System.out.println("This is a update method!");
        newsDao.updateOne(news);
    }

    public void deleteOne(String news_id){
        System.out.println("This is a delete method!");
        newsDao.deleteOne(news_id);
    }
    
}
