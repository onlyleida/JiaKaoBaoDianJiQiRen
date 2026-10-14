package cn.mucang.android.core.api;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ImageUploadResult implements Serializable {
    private int height;
    private String url;
    private int width;

    public int getHeight() {
        return this.height;
    }

    public String getUrl() {
        return this.url;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWidth(int i) {
        this.width = i;
    }
}
