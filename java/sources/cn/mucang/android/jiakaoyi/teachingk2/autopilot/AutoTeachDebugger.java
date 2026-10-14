package cn.mucang.android.jiakaoyi.teachingk2.autopilot;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;", "Ljava/io/Serializable;", "data", "", "(Ljava/lang/String;)V", "getData", "()Ljava/lang/String;", "setData", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoTeachDebugger implements Serializable {
    private String data;

    /* JADX WARN: Multi-variable type inference failed */
    public AutoTeachDebugger() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public AutoTeachDebugger(String str) {
        this.data = str;
    }

    public final String getData() {
        return this.data;
    }

    public final void setData(String str) {
        this.data = str;
    }

    public /* synthetic */ AutoTeachDebugger(String str, int i, o oVar) {
        this((i & 1) != 0 ? null : str);
    }
}
