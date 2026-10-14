package cn.mucang.sundial.android.eventbus.event;

/* JADX INFO: loaded from: classes5.dex */
public class UploadImageEvent {
    public int code;
    public String message;
    public String photoId;

    public UploadImageEvent(int i, String str) {
        this(i, null, str);
    }

    public UploadImageEvent(int i, String str, String str2) {
        this.code = i;
        this.message = str;
        this.photoId = str2;
    }
}
