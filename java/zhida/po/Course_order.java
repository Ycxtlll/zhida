package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class Course_order implements Serializable {
    private Integer orderId;

    private Integer courseId;

    private Integer userId;

    private String courseTitle;

    private Float payCost;

    private String pictureUrl;

    private Date payTime;

    private Date modifiedTime;

    private static final long serialVersionUID = 1L;

    public Course_order(Integer orderId, Integer courseId, Integer userId, String courseTitle, Float payCost, String pictureUrl, Date payTime, Date modifiedTime) {
        this.orderId = orderId;
        this.courseId = courseId;
        this.userId = userId;
        this.courseTitle = courseTitle;
        this.payCost = payCost;
        this.pictureUrl = pictureUrl;
        this.payTime = payTime;
        this.modifiedTime = modifiedTime;
    }

    public Course_order() {
        super();
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle == null ? null : courseTitle.trim();
    }

    public Float getPayCost() {
        return payCost;
    }

    public void setPayCost(Float payCost) {
        this.payCost = payCost;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl == null ? null : pictureUrl.trim();
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
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
        sb.append(", orderId=").append(orderId);
        sb.append(", courseId=").append(courseId);
        sb.append(", userId=").append(userId);
        sb.append(", courseTitle=").append(courseTitle);
        sb.append(", payCost=").append(payCost);
        sb.append(", pictureUrl=").append(pictureUrl);
        sb.append(", payTime=").append(payTime);
        sb.append(", modifiedTime=").append(modifiedTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}