package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\"\b\u0086\u0001\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001&B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;", "", "value", "", "label", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getValue", "()I", "Type1", "Type2", "Type3", "Type4", "Type5", "Type6", "Type8", "Type9", "Type10", "Type11", "Type12", "Type13", "Type14", "Type15", "Type16", "Type17", "Type18", "Type19", "Type20", "Type21", "Type22", "Type23", "Type24", "Type25", "Type26", "Type27", "Type28", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum MonitorPointType {
    Type1(1, "锥形点位"),
    Type2(2, "前引擎盖"),
    Type3(3, "加强筋"),
    Type4(4, "方向盘中心点"),
    Type5(5, "车门沿"),
    Type6(6, "左后视镜下沿线"),
    Type8(8, "雨刮铆钉点"),
    Type9(9, "车门升降玻璃开关"),
    Type10(10, "空调出风口"),
    Type11(11, "车门内左侧把手"),
    Type12(12, "车门内右侧把手"),
    Type13(13, "挡泥板"),
    Type14(14, "车外左前门把手"),
    Type15(15, "车外左后门把手"),
    Type16(16, "车外右前门把手"),
    Type17(17, "车外右后门把手"),
    Type18(18, "车辆后轮翼子板（轮眉）"),
    Type19(19, "车辆B柱"),
    Type20(20, "左后视镜与车身连接处"),
    Type21(21, "右后视镜与车身连接处"),
    Type22(22, "通用"),
    Type23(23, "车头中心点"),
    Type24(24, "左大灯点"),
    Type25(25, "右大灯点"),
    Type26(26, "雨刮点"),
    Type27(27, "左后视镜下沿点"),
    Type28(28, "引擎盖左侧凹槽点");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String label;
    private final int value;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorPointType$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType$Companion;", "", "()V", "getType", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorPointType;", "type", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final MonitorPointType a(int i) {
            for (MonitorPointType monitorPointType : MonitorPointType.values()) {
                if (monitorPointType.getValue() == i) {
                    return monitorPointType;
                }
            }
            return MonitorPointType.Type1;
        }
    }

    MonitorPointType(int i, String str) {
        this.value = i;
        this.label = str;
    }

    public static final MonitorPointType getType(int i) {
        return INSTANCE.a(i);
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getValue() {
        return this.value;
    }
}
