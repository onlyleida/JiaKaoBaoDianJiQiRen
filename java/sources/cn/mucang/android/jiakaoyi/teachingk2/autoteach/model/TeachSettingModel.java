package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachSettingModel;", "Ljava/io/Serializable;", "()V", "allowPause", "", "getAllowPause", "()Z", "setAllowPause", "(Z)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachSettingModel implements Serializable {
    private boolean allowPause = true;

    public final boolean getAllowPause() {
        return this.allowPause;
    }

    public final void setAllowPause(boolean z) {
        this.allowPause = z;
    }
}
