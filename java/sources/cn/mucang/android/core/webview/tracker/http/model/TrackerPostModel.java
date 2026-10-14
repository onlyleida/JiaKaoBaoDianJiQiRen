package cn.mucang.android.core.webview.tracker.http.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TrackerPostModel implements Serializable {
    private List<Track> data;

    public List<Track> getData() {
        return this.data;
    }

    public void setData(List<Track> list) {
        this.data = list;
    }
}
