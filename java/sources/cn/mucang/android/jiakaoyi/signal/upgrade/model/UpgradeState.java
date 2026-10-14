package cn.mucang.android.jiakaoyi.signal.upgrade.model;

import cn.mucang.jiakaoyi.uilib.cost.entity.ConsumeRecord;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "", "singleState", "", "(Ljava/lang/String;II)V", "state", "getState", "()I", "setState", "(I)V", ConsumeRecord.Start, "FAIL", "SUCCESS", "SINGLE_MODEL_START", "SINGLE_MODEL_UPGRADING", "SINGLE_MODEL_PACK_FINISH", "SINGLE_MODEL_SUCCESS", "SINGLE_MODEL_FAIL", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum UpgradeState {
    START(0),
    FAIL(0),
    SUCCESS(0),
    SINGLE_MODEL_START(1),
    SINGLE_MODEL_UPGRADING(10),
    SINGLE_MODEL_PACK_FINISH(0),
    SINGLE_MODEL_SUCCESS(20),
    SINGLE_MODEL_FAIL(30);

    private int state;

    UpgradeState(int i) {
        this.state = i;
    }

    public final int getState() {
        return this.state;
    }

    public final void setState(int i) {
        this.state = i;
    }
}
