package cn.mucang.android.jiakaoyi.signal.ai;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0086\u0001\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\tj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;", "", "type", "", "module", "", "voice", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V", "getModule", "()Ljava/lang/String;", "getType", "()I", "getVoice", "Other", "SteeringWheel", "GearLever", "LeftMirror", "DashBoard", "Central", "LightLever", "WiperLever", "KeySwitch", "Clutch", "Brake", "Throttle", "Companion", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum PartIdentityModule {
    Other(0, "其他", ""),
    SteeringWheel(1, "方向盘", "我是方向盘"),
    GearLever(2, "挡杆", "我是挡杆"),
    LeftMirror(3, "左后视镜", "我是左后视镜"),
    DashBoard(4, "仪表盘", "我是仪表盘"),
    Central(5, "中控屏", "我是中控屏"),
    LightLever(6, "灯光拨杆", "我是灯光拨杆"),
    WiperLever(7, "雨刷拨杆", "我是雨刷拨杆"),
    KeySwitch(8, "钥匙开关", "我是钥匙开关"),
    Clutch(101, "离合", "我是离合"),
    Brake(102, "刹车", "我是刹车"),
    Throttle(103, "油门", "我是油门");

    private final String module;
    private final int type;
    private final String voice;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final HashMap<Integer, PartIdentityModule> cache = new HashMap<>();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.ai.PartIdentityModule$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$Companion;", "", "()V", "cache", "Ljava/util/HashMap;", "", "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;", "getModule", "module", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final PartIdentityModule a(int i) {
            PartIdentityModule partIdentityModule = (PartIdentityModule) PartIdentityModule.cache.get(Integer.valueOf(i));
            return partIdentityModule == null ? PartIdentityModule.Other : partIdentityModule;
        }
    }

    static {
        for (PartIdentityModule partIdentityModule : values()) {
            cache.put(Integer.valueOf(partIdentityModule.getType()), partIdentityModule);
        }
    }

    PartIdentityModule(int i, String str, String str2) {
        this.type = i;
        this.module = str;
        this.voice = str2;
    }

    public static final PartIdentityModule getModule(int i) {
        return INSTANCE.a(i);
    }

    public final String getModule() {
        return this.module;
    }

    public final int getType() {
        return this.type;
    }

    public final String getVoice() {
        return this.voice;
    }
}
