package cn.mucang.android.jiakaoyi.teachingk2.safe;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;", "Ljava/io/Serializable;", "()V", "visible", "", "getVisible", "()Ljava/lang/Boolean;", "setVisible", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class SafeVisibleModel implements Serializable {
    private Boolean visible = Boolean.TRUE;

    public final Boolean getVisible() {
        return this.visible;
    }

    public final void setVisible(Boolean bool) {
        this.visible = bool;
    }
}
