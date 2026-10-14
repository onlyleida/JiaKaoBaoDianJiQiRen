package cn.mucang.android.core.webview.core;

/* JADX INFO: loaded from: classes.dex */
public enum ContentType {
    IMAGE("image/*"),
    VIDEO("video/*"),
    AUDIO("audio/*");

    String type;

    ContentType(String str) {
        this.type = str;
    }

    public String getType() {
        return this.type;
    }
}
