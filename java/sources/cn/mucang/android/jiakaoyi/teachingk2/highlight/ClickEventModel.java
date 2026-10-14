package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import com.tencent.tauth.AuthActivity;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ClickEventModel;", "Ljava/io/Serializable;", "()V", AuthActivity.ACTION_KEY, "", "x", "", "y", "(IFF)V", "getAction", "()I", "setAction", "(I)V", "getX", "()F", "setX", "(F)V", "getY", "setY", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ClickEventModel implements Serializable {
    private int action;
    private float x;
    private float y;

    public ClickEventModel() {
    }

    public final int getAction() {
        return this.action;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setX(float f2) {
        this.x = f2;
    }

    public final void setY(float f2) {
        this.y = f2;
    }

    public ClickEventModel(int i, float f2, float f3) {
        this.action = i;
        this.x = f2;
        this.y = f3;
    }
}
