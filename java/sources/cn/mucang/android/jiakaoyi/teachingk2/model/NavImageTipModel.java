package cn.mucang.android.jiakaoyi.teachingk2.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\f¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;", "Ljava/io/Serializable;", "resId", "", "text", "", "(ILjava/lang/String;)V", "()V", "pic", "getPic", "()Ljava/lang/String;", "setPic", "(Ljava/lang/String;)V", "getResId", "()I", "setResId", "(I)V", "title", "getTitle", "setTitle", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavImageTipModel implements Serializable {
    private String pic;
    private int resId;
    private String title;

    public NavImageTipModel() {
    }

    public final String getPic() {
        return this.pic;
    }

    public final int getResId() {
        return this.resId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setPic(String str) {
        this.pic = str;
    }

    public final void setResId(int i) {
        this.resId = i;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public NavImageTipModel(int i, String str) {
        this();
        this.resId = i;
        this.title = str;
    }
}
