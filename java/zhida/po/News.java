package zhida.po;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable {
    private Integer newsId;

    private String newsTitle;

    private String releaseDate;

    private String newsUrl;


    private static final long serialVersionUID = 1L;

    public News(Integer newsId, String newsTitle, String releaseDate, String newsUrl) {
        this.newsId = newsId;
        this.newsTitle = newsTitle;
        this.releaseDate = releaseDate;
        this.newsUrl = newsUrl;
    }

    public News() {
        super();
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getNewsUrl() {
        return newsUrl;
    }

    public void setNewsUrl(String newsUrl) {
        this.newsUrl = newsUrl == null ? null : newsUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", newsId=").append(newsId);
        sb.append(", newsTitle=").append(newsTitle);
        sb.append(", releaseDate=").append(releaseDate);
        sb.append(", newsUrl=").append(newsUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}