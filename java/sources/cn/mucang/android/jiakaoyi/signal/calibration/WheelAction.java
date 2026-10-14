package cn.mucang.android.jiakaoyi.signal.calibration;

import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0005\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;", "", AuthActivity.ACTION_KEY, "", "(Ljava/lang/String;IB)V", "getAction", "()B", "LEFT_TO_DEAD", "CENTER", "RIGHT_TO_DEAD", "RECOVERY", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum WheelAction {
    LEFT_TO_DEAD((byte) 0),
    CENTER((byte) 1),
    RIGHT_TO_DEAD((byte) 2),
    RECOVERY((byte) 3);

    private final byte action;

    WheelAction(byte b) {
        this.action = b;
    }

    public final byte getAction() {
        return this.action;
    }
}
