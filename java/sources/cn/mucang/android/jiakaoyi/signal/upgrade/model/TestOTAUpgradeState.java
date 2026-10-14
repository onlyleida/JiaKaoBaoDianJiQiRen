package cn.mucang.android.jiakaoyi.signal.upgrade.model;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;", "Ljava/io/Serializable;", "state", "", "(Ljava/lang/String;)V", "getState", "()Ljava/lang/String;", "setState", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TestOTAUpgradeState implements Serializable {
    private String state;

    public TestOTAUpgradeState(String state) {
        r.e(state, "state");
        this.state = state;
    }

    public final String getState() {
        return this.state;
    }

    public final void setState(String str) {
        r.e(str, "<set-?>");
        this.state = str;
    }
}
