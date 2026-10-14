package cn.mucang.android.jiakaoyi.teachingk2.calibration;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import kotlin.Metadata;
import org.opencv.videoio.Videoio;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.calibration.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u0002\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0007J\b\u0010\u001c\u001a\u00020\u0004H\u0007J\b\u0010\u001d\u001a\u00020\u0004H\u0007J\b\u0010\u001e\u001a\u00020\u0004H\u0007J\b\u0010\u001f\u001a\u00020\u0004H\u0007J\b\u0010 \u001a\u00020\u0004H\u0007J\b\u0010!\u001a\u00020\u0004H\u0007J\b\u0010\"\u001a\u00020\u0004H\u0007J\b\u0010#\u001a\u00020\u0004H\u0007J\b\u0010$\u001a\u00020\u0004H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010(\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010)\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010*\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010+\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010,\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007J\u0010\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020\u0004H\u0007J\u0010\u0010/\u001a\u00020&2\u0006\u00100\u001a\u00020\u0004H\u0007J\u0010\u00101\u001a\u00020&2\u0006\u00100\u001a\u00020\u0004H\u0007J\u0010\u00102\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibarDataUtil;", "", "()V", "HALF_CLUTCH_TYPE_RPM", "", "HALF_CLUTCH_TYPE_XC", "KEY_ASSIST_HALF_CLUTCH_START", "", "KEY_CTRL_BACK_CLUTCH_VALUE", "KEY_CTRL_SPEED_BRAKE_VALUE", "KEY_CTRL_SPEED_CLUTCH_VALUE", "KEY_HALF_CLUTCH_END", "KEY_HALF_CLUTCH_START", "KEY_HALF_CLUTCH_TYPE", "KEY_LEFT_FULL_ANGEL", "KEY_RIGHT_FULL_ANGEL", "KEY_THROTTLE_VALUE", "assistHalfClutchStart", "ctrlBackClutchValue", "ctrlSpeedBrakeValue", "ctrlSpeedClutchValue", "halfClutchEnd", "halfClutchStart", "halfClutchType", "leftAngel", "rightAngel", "throttleValue", "getAssistHalfClutchStart", "getCtrlBackClutchValue", "getCtrlSpeedBrakeValue", "getCtrlSpeedClutchValue", "getHalfClutchEnd", "getHalfClutchStart", "getHalfClutchType", "getLeftAngel", "getRightAngel", "getThrottleValue", "saveAssistHalfClutchStart", "", "value", "saveCtrlBackClutchValue", "saveCtrlSpeedBrakeValue", "saveCtrlSpeedClutchValue", "saveHalfClutchEnd", "saveHalfClutchStart", "saveHalfClutchType", "type", "saveLeftAngel", "angel", "saveRightAngel", "saveThrottleValue", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CalibarDataUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CalibarDataUtil f6458a = new CalibarDataUtil();
    private static int b = -1;
    private static int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f6459d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f6460e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f6461f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f6462g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f6463h = -1;
    private static int i = -1;
    private static int j = -1;
    private static int k = -1;

    private CalibarDataUtil() {
    }

    public static final int a() {
        if (j < 0) {
            j = i0.d("_key_assist_half_clutch_start_", 50);
        }
        return j;
    }

    public static final int b() {
        if (i < 0) {
            i = i0.d("_key_ctrl_back_clutch_value_", 57);
        }
        return i;
    }

    public static final int c() {
        if (f6462g < 0) {
            f6462g = i0.d("_key_ctrl_speed_brake_value_", 0);
        }
        return f6462g;
    }

    public static final int d() {
        if (f6463h < 0) {
            f6463h = i0.d("_key_ctrl_speed_clutch_value_", 55);
        }
        return f6463h;
    }

    public static final int e() {
        if (f6460e < 0) {
            f6460e = i0.d("_key_half_clutch_end_", 20);
        }
        return f6460e;
    }

    public static final int f() {
        if (f6459d < 0) {
            f6459d = i0.d("_key_half_clutch_start_", 50);
        }
        return f6459d;
    }

    public static final int g() {
        if (k < 0) {
            k = i0.d("_key_half_clutch_type_", 0);
        }
        return k;
    }

    public static final int h() {
        if (b < 0) {
            b = i0.d("_key_left_full_angel_", Videoio.CAP_PROP_XI_HDR_KNEEPOINT_COUNT);
        }
        return b;
    }

    public static final int i() {
        if (c < 0) {
            c = i0.d("_key_right_full_angel_", Videoio.CAP_PROP_XI_HDR_KNEEPOINT_COUNT);
        }
        return c;
    }

    public static final int j() {
        if (f6461f < 0) {
            f6461f = i0.d("_key_throttle_value_", 0);
        }
        return f6461f;
    }

    public static final void k(int i2) {
        i0.k("_key_assist_half_clutch_start_", i2);
        j = i2;
    }

    public static final void l(int i2) {
        i0.k("_key_ctrl_back_clutch_value_", i2);
        i = i2;
    }

    public static final void m(int i2) {
        i0.k("_key_ctrl_speed_brake_value_", i2);
        f6462g = i2;
    }

    public static final void n(int i2) {
        i0.k("_key_ctrl_speed_clutch_value_", i2);
        f6463h = i2;
    }

    public static final void o(int i2) {
        i0.k("_key_half_clutch_end_", i2);
        f6460e = i2;
    }

    public static final void p(int i2) {
        i0.k("_key_half_clutch_start_", i2);
        f6459d = i2;
    }

    public static final void q(int i2) {
        i0.k("_key_half_clutch_type_", i2);
        k = i2;
    }

    public static final void r(int i2) {
        i0.k("_key_left_full_angel_", i2);
        b = i2;
    }

    public static final void s(int i2) {
        i0.k("_key_right_full_angel_", i2);
        c = i2;
    }

    public static final void t(int i2) {
        i0.k("_key_throttle_value_", i2);
        f6461f = i2;
    }
}
