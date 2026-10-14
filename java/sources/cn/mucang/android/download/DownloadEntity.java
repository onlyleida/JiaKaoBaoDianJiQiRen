package cn.mucang.android.download;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.download.client.DownloadManager;
import com.alibaba.fastjson.JSON;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DownloadEntity extends IdEntity {
    private int allowNetworkType;
    private long contentLength;
    private String downloadGroup;
    private int downloadStatus;
    private long downloadedLength;
    private String etag;
    private long finishTime;
    private String headers;
    private String mimeType;
    private boolean notification;
    private long startTime;
    private String storePath;
    private String title;
    private String url;

    public static DownloadEntity createFromRequest(DownloadManager.Request request) {
        DownloadEntity downloadEntity = new DownloadEntity();
        downloadEntity.allowNetworkType = request.f2949d;
        downloadEntity.title = request.b;
        downloadEntity.url = request.f2948a;
        downloadEntity.downloadGroup = request.f2950e;
        String str = request.f2951f;
        downloadEntity.mimeType = str;
        downloadEntity.notification = request.f2953h;
        if (TextUtils.isEmpty(str)) {
            String strD = c.d(downloadEntity.url);
            if (!TextUtils.isEmpty(strD)) {
                downloadEntity.mimeType = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strD.substring(1));
            }
        }
        downloadEntity.storePath = request.f2952g;
        List<DownloadManager.Request.Header> list = request.c;
        if (list != null && !list.isEmpty()) {
            downloadEntity.headers = JSON.toJSONString(request.c);
        }
        downloadEntity.startTime = System.currentTimeMillis();
        return downloadEntity;
    }

    public int getAllowNetworkType() {
        return this.allowNetworkType;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public String getDownloadGroup() {
        return this.downloadGroup;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public long getDownloadedLength() {
        return this.downloadedLength;
    }

    public String getEtag() {
        return this.etag;
    }

    public long getFinishTime() {
        return this.finishTime;
    }

    public String getHeaders() {
        return this.headers;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public String getStorePath() {
        return this.storePath;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isNotification() {
        return this.notification;
    }

    public void setAllowNetworkType(int i) {
        this.allowNetworkType = i;
    }

    public void setContentLength(long j) {
        this.contentLength = j;
    }

    public void setDownloadGroup(String str) {
        this.downloadGroup = str;
    }

    public void setDownloadStatus(int i) {
        this.downloadStatus = i;
    }

    public void setDownloadedLength(long j) {
        this.downloadedLength = j;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setFinishTime(long j) {
        this.finishTime = j;
    }

    public void setHeaders(String str) {
        this.headers = str;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setNotification(boolean z) {
        this.notification = z;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }

    public void setStorePath(String str) {
        this.storePath = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
