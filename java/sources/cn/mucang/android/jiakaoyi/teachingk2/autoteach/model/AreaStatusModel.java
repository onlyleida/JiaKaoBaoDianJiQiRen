package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AreaStatusModel;", "Ljava/io/Serializable;", "()V", "posId", "", "getPosId", "()I", "setPosId", "(I)V", "posState", "getPosState", "setPosState", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AreaStatusModel implements Serializable {
    private int posId;
    private int posState = 1;

    public final int getPosId() {
        return this.posId;
    }

    public final int getPosState() {
        return this.posState;
    }

    public final void setPosId(int i) {
        this.posId = i;
    }

    public final void setPosState(int i) {
        this.posState = i;
    }
}
