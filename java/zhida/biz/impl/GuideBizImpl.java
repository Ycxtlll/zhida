package zhida.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhida.biz.IGuideBiz;
import zhida.dao.IGuideDao;
import zhida.po.Guide;

import java.util.List;

@Service
public class GuideBizImpl implements IGuideBiz {
    private IGuideDao guideDao;

    public IGuideDao getGuideDao() {
        return guideDao;
    }
    @Autowired
    public void setGuideDao(IGuideDao guideDao) {
        this.guideDao = guideDao;
    }

    public List<Guide> showInfos(){
        List<Guide> glist = guideDao.selectAll();
        return glist;
    }

    public Guide showOne(String guide_id){
        return guideDao.selectOneByID(guide_id);
    }

    public List<Guide> selectGuides(String guide_title){
    	List<Guide> list = guideDao.selectByTitle(guide_title);
    	return list;
    }

    public void insertOne(Guide guide){
        System.out.println("This is a insert method!");
        guideDao.insertOne(guide);
    }

    public void updateOne(Guide guide){
        System.out.println("This is a update method!");
        guideDao.updateOne(guide);
    }

    public void deleteOne(String guide_id){
        System.out.println("This is a delete method!");
        guideDao.deleteOne(guide_id);
    }
}
