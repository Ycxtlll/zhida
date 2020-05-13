package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class Guide implements Serializable {
    private Integer guideId;

    private String guideTitle;

    private Date releaseDate;

    private String guideUrl;

    private static final long serialVersionUID = 1L;

    public Guide(Integer guideId, String guideTitle, Date releaseDate, String guideUrl) {
        this.guideId = guideId;
        this.guideTitle = guideTitle;
        this.releaseDate = releaseDate;
        this.guideUrl = guideUrl;
    }

    public Guide() {
        super();
    }

    public Integer getGuideId() {
        return guideId;
    }

    public void setGuideId(Integer guideId) {
        this.guideId = guideId;
    }

    public String getGuideTitle() {
        return guideTitle;
    }

    public void setGuideTitle(String guideTitle) {
        this.guideTitle = guideTitle == null ? null : guideTitle.trim();
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getGuideUrl() {
        return guideUrl;
    }

    public void setGuideUrl(String guideUrl) {
        this.guideUrl = guideUrl == null ? null : guideUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", guideId=").append(guideId);
        sb.append(", guideTitle=").append(guideTitle);
        sb.append(", releaseDate=").append(releaseDate);
        sb.append(", guideUrl=").append(guideUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}