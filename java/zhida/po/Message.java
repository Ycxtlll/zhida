package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
    private Integer messageId;

    private Integer userId;

    private String messageTitle;

    private String messageContent;

    private Date modifiedTime;

    private Integer messageStatus;

    private static final long serialVersionUID = 1L;

    public Message(Integer messageId, Integer userId, String messageTitle, String messageContent, Date modifiedTime, Integer messageStatus) {
        this.messageId = messageId;
        this.userId = userId;
        this.messageTitle = messageTitle;
        this.messageContent = messageContent;
        this.modifiedTime = modifiedTime;
        this.messageStatus = messageStatus;
    }

    public Message() {
        super();
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle == null ? null : messageTitle.trim();
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent == null ? null : messageContent.trim();
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    public Integer getMessageStatus() {
        return messageStatus;
    }

    public void setMessageStatus(Integer messageStatus) {
        this.messageStatus = messageStatus;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", messageId=").append(messageId);
        sb.append(", userId=").append(userId);
        sb.append(", messageTitle=").append(messageTitle);
        sb.append(", messageContent=").append(messageContent);
        sb.append(", modifiedTime=").append(modifiedTime);
        sb.append(", messageStatus=").append(messageStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}