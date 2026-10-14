package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeModeChanged;
import cn.mucang.android.jiakaoyi.teachingk2.safe.api.SafeServerModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.iflytek.cloud.SpeechConstant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.l1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R,\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00048\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;", "", "()V", "MODE_HIGH", "", "MODE_LOW", "MODE_MIDDLE", "value", "mode", "getMode$annotations", "getMode", "()I", "setMode", "(I)V", "modes", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;", "createDefaultList", "getInUseMode", "getLocalKey", "", "loadConfig", "", "refreshConfig", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;", "SafeModeParam", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeModeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SafeModeManager f7731a;
    private static int b = 1;
    private static List<SafeModeParam> c;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00106\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001a\u0010*\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0012\"\u0004\b,\u0010\u0014R\u001a\u0010-\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0012\"\u0004\b/\u0010\u0014R\u001a\u00100\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0012\"\u0004\b5\u0010\u0014¨\u00067"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;", "Ljava/io/Serializable;", "()V", "b2HighSpeed", "", "getB2HighSpeed", "()I", "setB2HighSpeed", "(I)V", "b2Speed", "getB2Speed", "setB2Speed", "backSpeed", "getBackSpeed", "setBackSpeed", "hardwareBeltBrake", "", "getHardwareBeltBrake", "()Z", "setHardwareBeltBrake", "(Z)V", "hardwareDoorBrake", "getHardwareDoorBrake", "setHardwareDoorBrake", "hardwareSpeedBrake", "getHardwareSpeedBrake", "setHardwareSpeedBrake", "houLiu", "getHouLiu", "setHouLiu", "k3Speed", "getK3Speed", "setK3Speed", "k3StraightSpeed", "getK3StraightSpeed", "setK3StraightSpeed", "mode", "getMode", "setMode", "projectOutSpeed", "getProjectOutSpeed", "setProjectOutSpeed", "ringRadar", "getRingRadar", "setRingRadar", "showRadar", "getShowRadar", "setShowRadar", SpeechConstant.SPEED, "getSpeed", "setSpeed", "wheel", "getWheel", "setWheel", "appendParam", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class SafeModeParam implements Serializable {
        private int b2HighSpeed;
        private int b2Speed;
        private int backSpeed;
        private boolean hardwareBeltBrake;
        private boolean hardwareDoorBrake;
        private boolean hardwareSpeedBrake;
        private int houLiu;
        private int k3Speed;
        private int k3StraightSpeed;
        private int mode = 1;
        private int projectOutSpeed;
        private boolean ringRadar;
        private boolean showRadar;
        private int speed;
        private boolean wheel;

        public final SafeModeParam appendParam() {
            this.hardwareSpeedBrake = LocalConfigManager.f(LocalConfig.SpeedBrake);
            this.wheel = LocalConfigManager.f(LocalConfig.WheelBrake);
            this.showRadar = LocalConfigManager.f(LocalConfig.ShowRadar);
            this.ringRadar = LocalConfigManager.f(LocalConfig.RingRadar);
            return this;
        }

        public final int getB2HighSpeed() {
            return this.b2HighSpeed;
        }

        public final int getB2Speed() {
            return this.b2Speed;
        }

        public final int getBackSpeed() {
            return this.backSpeed;
        }

        public final boolean getHardwareBeltBrake() {
            return this.hardwareBeltBrake;
        }

        public final boolean getHardwareDoorBrake() {
            return this.hardwareDoorBrake;
        }

        public final boolean getHardwareSpeedBrake() {
            return this.hardwareSpeedBrake;
        }

        public final int getHouLiu() {
            return this.houLiu;
        }

        public final int getK3Speed() {
            return this.k3Speed;
        }

        public final int getK3StraightSpeed() {
            return this.k3StraightSpeed;
        }

        public final int getMode() {
            return this.mode;
        }

        public final int getProjectOutSpeed() {
            return this.projectOutSpeed;
        }

        public final boolean getRingRadar() {
            return this.ringRadar;
        }

        public final boolean getShowRadar() {
            return this.showRadar;
        }

        public final int getSpeed() {
            return this.speed;
        }

        public final boolean getWheel() {
            return this.wheel;
        }

        public final void setB2HighSpeed(int i) {
            this.b2HighSpeed = i;
        }

        public final void setB2Speed(int i) {
            this.b2Speed = i;
        }

        public final void setBackSpeed(int i) {
            this.backSpeed = i;
        }

        public final void setHardwareBeltBrake(boolean z) {
            this.hardwareBeltBrake = z;
        }

        public final void setHardwareDoorBrake(boolean z) {
            this.hardwareDoorBrake = z;
        }

        public final void setHardwareSpeedBrake(boolean z) {
            this.hardwareSpeedBrake = z;
        }

        public final void setHouLiu(int i) {
            this.houLiu = i;
        }

        public final void setK3Speed(int i) {
            this.k3Speed = i;
        }

        public final void setK3StraightSpeed(int i) {
            this.k3StraightSpeed = i;
        }

        public final void setMode(int i) {
            this.mode = i;
        }

        public final void setProjectOutSpeed(int i) {
            this.projectOutSpeed = i;
        }

        public final void setRingRadar(boolean z) {
            this.ringRadar = z;
        }

        public final void setShowRadar(boolean z) {
            this.showRadar = z;
        }

        public final void setSpeed(int i) {
            this.speed = i;
        }

        public final void setWheel(boolean z) {
            this.wheel = z;
        }
    }

    static {
        SafeModeManager safeModeManager = new SafeModeManager();
        f7731a = safeModeManager;
        c = safeModeManager.e();
    }

    private SafeModeManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SafeModeParam> e() {
        SafeModeParam safeModeParam = new SafeModeParam();
        safeModeParam.setMode(1);
        safeModeParam.setSpeed(8);
        safeModeParam.setProjectOutSpeed(15);
        safeModeParam.setBackSpeed(8);
        safeModeParam.setHardwareDoorBrake(true);
        safeModeParam.setHardwareBeltBrake(true);
        safeModeParam.setHouLiu(40);
        safeModeParam.setK3Speed(20);
        safeModeParam.setK3StraightSpeed(30);
        safeModeParam.setB2Speed(30);
        safeModeParam.setB2HighSpeed(60);
        kotlin.v vVar = kotlin.v.f15822a;
        SafeModeParam safeModeParam2 = new SafeModeParam();
        safeModeParam2.setMode(2);
        safeModeParam2.setSpeed(10);
        safeModeParam2.setProjectOutSpeed(20);
        safeModeParam2.setBackSpeed(8);
        safeModeParam2.setHardwareDoorBrake(true);
        safeModeParam2.setHardwareBeltBrake(true);
        safeModeParam2.setHouLiu(40);
        safeModeParam2.setK3Speed(20);
        safeModeParam2.setK3StraightSpeed(30);
        safeModeParam2.setB2Speed(30);
        safeModeParam2.setB2HighSpeed(60);
        SafeModeParam safeModeParam3 = new SafeModeParam();
        safeModeParam3.setMode(3);
        safeModeParam3.setSpeed(12);
        safeModeParam3.setProjectOutSpeed(20);
        safeModeParam3.setBackSpeed(8);
        safeModeParam3.setHardwareDoorBrake(false);
        safeModeParam3.setHardwareBeltBrake(false);
        safeModeParam3.setHouLiu(40);
        safeModeParam3.setK3Speed(20);
        safeModeParam3.setK3StraightSpeed(30);
        safeModeParam3.setB2Speed(30);
        safeModeParam3.setB2HighSpeed(60);
        return kotlin.collections.u.p(safeModeParam, safeModeParam2, safeModeParam3);
    }

    public static final SafeModeParam f() {
        for (SafeModeParam safeModeParam : c) {
            if (safeModeParam.getMode() == h()) {
                return safeModeParam.appendParam();
            }
        }
        return ((SafeModeParam) kotlin.collections.s.c0(c)).appendParam();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String g() {
        return kotlin.jvm.internal.r.m("safe_param_", Long.valueOf(ExamSiteUtil.e(0L)));
    }

    public static final int h() {
        return b;
    }

    public static final void i() {
        kotlinx.coroutines.g.b(l1.f16051a, null, null, new SafeModeManager$loadConfig$1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(SafeServerModel safeServerModel) {
        for (SafeModeParam safeModeParam : c) {
            if (safeModeParam.getMode() == safeServerModel.getSafeType()) {
                Integer speed = safeServerModel.getSpeed();
                if (speed != null) {
                    safeModeParam.setSpeed(speed.intValue());
                }
                Boolean doorBrake = safeServerModel.getDoorBrake();
                if (doorBrake != null) {
                    safeModeParam.setHardwareDoorBrake(doorBrake.booleanValue());
                }
                Boolean beltBrake = safeServerModel.getBeltBrake();
                if (beltBrake != null) {
                    safeModeParam.setHardwareBeltBrake(beltBrake.booleanValue());
                }
                Integer houLiu = safeServerModel.getHouLiu();
                if (houLiu != null) {
                    safeModeParam.setHouLiu(houLiu.intValue());
                }
                Integer backSpeed = safeServerModel.getBackSpeed();
                if (backSpeed != null) {
                    safeModeParam.setBackSpeed(backSpeed.intValue());
                }
                Integer projectOutSpeed = safeServerModel.getProjectOutSpeed();
                if (projectOutSpeed != null) {
                    safeModeParam.setProjectOutSpeed(projectOutSpeed.intValue());
                }
                Integer k3Speed = safeServerModel.getK3Speed();
                if (k3Speed != null) {
                    safeModeParam.setK3Speed(k3Speed.intValue());
                }
                Integer k3StraightSpeed = safeServerModel.getK3StraightSpeed();
                if (k3StraightSpeed != null) {
                    safeModeParam.setK3StraightSpeed(k3StraightSpeed.intValue());
                }
                Integer b2HighSpeed = safeServerModel.getB2HighSpeed();
                if (b2HighSpeed != null) {
                    safeModeParam.setB2HighSpeed(b2HighSpeed.intValue());
                }
                Integer b2Speed = safeServerModel.getB2Speed();
                if (b2Speed != null) {
                    safeModeParam.setB2Speed(b2Speed.intValue());
                }
            }
        }
        LiveBus.d(SafeModeChanged.class).l(new SafeModeChanged());
    }

    public static final void k(int i) {
        b = i;
        LiveBus.d(SafeModeChanged.class).l(new SafeModeChanged());
    }
}
