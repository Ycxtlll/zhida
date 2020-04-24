package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class Course implements Serializable {
    private Integer courseId;

    private String courseType;

    private String courseTitle;

    private String courseTeacher;

    private String courseContent;

    private Float courseCost;

    private String pictureUrl;

    private Date modifiedTime;

    private static final long serialVersionUID = 1L;

    public Course(Integer courseId, String courseType, String courseTitle, String courseTeacher, String courseContent, Float courseCost, String pictureUrl, Date modifiedTime) {
        this.courseId = courseId;
        this.courseType = courseType;
        this.courseTitle = courseTitle;
        this.courseTeacher = courseTeacher;
        this.courseContent = courseContent;
        this.courseCost = courseCost;
        this.pictureUrl = pictureUrl;
        this.modifiedTime = modifiedTime;
    }

    public Course() {
        super();
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType == null ? null : courseType.trim();
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle == null ? null : courseTitle.trim();
    }

    public String getCourseTeacher() {
        return courseTeacher;
    }

    public void setCourseTeacher(String courseTeacher) {
        this.courseTeacher = courseTeacher == null ? null : courseTeacher.trim();
    }

    public String getCourseContent() {
        return courseContent;
    }

    public void setCourseContent(String courseContent) {
        this.courseContent = courseContent == null ? null : courseContent.trim();
    }

    public Float getCourseCost() {
        return courseCost;
    }

    public void setCourseCost(Float courseCost) {
        this.courseCost = courseCost;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl == null ? null : pictureUrl.trim();
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", courseId=").append(courseId);
        sb.append(", courseType=").append(courseType);
        sb.append(", courseTitle=").append(courseTitle);
        sb.append(", courseTeacher=").append(courseTeacher);
        sb.append(", courseContent=").append(courseContent);
        sb.append(", courseCost=").append(courseCost);
        sb.append(", pictureUrl=").append(pictureUrl);
        sb.append(", modifiedTime=").append(modifiedTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}