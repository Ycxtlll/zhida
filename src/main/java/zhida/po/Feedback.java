package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class Feedback implements Serializable {
    private Integer feedbackId;

    private Integer userId;

    private String contactInfo;

    private String feedbackContent;

    private Date modifiedTime;

    private static final long serialVersionUID = 1L;

    public Feedback(Integer feedbackId, Integer userId, String contactInfo, String feedbackContent, Date modifiedTime) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.contactInfo = contactInfo;
        this.feedbackContent = feedbackContent;
        this.modifiedTime = modifiedTime;
    }

    public Feedback() {
        super();
    }

    public Integer getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(Integer feedbackId) {
        this.feedbackId = feedbackId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo == null ? null : contactInfo.trim();
    }

    public String getFeedbackContent() {
        return feedbackContent;
    }

    public void setFeedbackContent(String feedbackContent) {
        this.feedbackContent = feedbackContent == null ? null : feedbackContent.trim();
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
        sb.append(", feedbackId=").append(feedbackId);
        sb.append(", userId=").append(userId);
        sb.append(", contactInfo=").append(contactInfo);
        sb.append(", feedbackContent=").append(feedbackContent);
        sb.append(", modifiedTime=").append(modifiedTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}