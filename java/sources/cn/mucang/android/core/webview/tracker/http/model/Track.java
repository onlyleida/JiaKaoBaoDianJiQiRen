package cn.mucang.android.core.webview.tracker.http.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Track implements Serializable {
    public static final int CODE_200 = 200;
    public static final int CODE_302 = 302;
    private long durationMs;
    private int httpCode;
    private long startMs;
    private String url;

    public Track(cn.mucang.android.core.webview.tracker.a aVar, int i, long j) {
        this.url = aVar.c();
        this.startMs = aVar.b();
        this.httpCode = i;
        this.durationMs = j;
    }

    public long getDurationMs() {
        return this.durationMs;
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public long getStartMs() {
        return this.startMs;
    }

    public String getUrl() {
        return this.url;
    }

    public void setDurationMs(long j) {
        this.durationMs = j;
    }

    public void setHttpCode(int i) {
        this.httpCode = i;
    }

    public void setStartMs(long j) {
        this.startMs = j;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "Track{url='" + this.url + "', httpCode=" + this.httpCode + ", startMs=" + this.startMs + ", durationMs=" + this.durationMs + '}';
    }

    public Track() {
    }
}
