package cn.mucang.android.jiakaoyi.signal.calibration;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.calibration.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/calibration/CalibrationCommandManager;", "", "()V", "calibrationWheel", "", AuthActivity.ACTION_KEY, "", "angle", "", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CalibrationCommandManager {
    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] b(byte b, short s) {
        v vVar = new v(true);
        vVar.c(b);
        vVar.h(s);
        return vVar.b();
    }

    public final synchronized void a(final byte b, final short s) {
        m.h().P(Cmd.OrderCalibarWheel, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.calibration.a
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return CalibrationCommandManager.b(b, s);
            }
        });
    }
}
