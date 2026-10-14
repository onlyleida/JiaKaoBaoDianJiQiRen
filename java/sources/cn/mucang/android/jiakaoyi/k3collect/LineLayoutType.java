package cn.mucang.android.jiakaoyi.k3collect;

import java.util.ArrayList;
import kotlin.Metadata;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DASH_LINE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\b\u0086\u0001\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001)B7\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR!\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fj\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "", "type", "", "lineName", "", "shapeTypes", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "Lkotlin/collections/ArrayList;", "lineType", "(Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;I)V", "getLineName", "()Ljava/lang/String;", "getLineType", "()I", "getShapeTypes", "()Ljava/util/ArrayList;", "getType", "DASH_LINE", "CENTER_DASH_LINE", "FULL_LINE", "KEEP_ASIDE_FULL_LINE", "NON_MOTOR_VEHICLE_FULL_LINE", "NON_MOTOR_VEHICLE_DASH_LINE", "GRID_LINE", "CENTRAL_CIRCLE", "SHUANG_HUANG_FULL", "SHUANG_HUANG_DASH", "ARROW", "CrossRoadMark", "BANMA_LINE", "STOP_LINE", "CENTRAL_CIRCLE_FULL_LINE", "JUDGE_AREA_LINE", "DIAO_TOU_AREA", "JIN_TING_AREA", "TING_CHE_AREA", "BUILDINGS", "NO_ENTER_AREA", "DASH_FULL_LINE", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LineLayoutType {
    private static final /* synthetic */ LineLayoutType[] $VALUES;
    public static final LineLayoutType ARROW;
    public static final LineLayoutType BANMA_LINE;
    public static final LineLayoutType BUILDINGS;
    public static final LineLayoutType CENTER_DASH_LINE;
    public static final LineLayoutType CENTRAL_CIRCLE;
    public static final LineLayoutType CENTRAL_CIRCLE_FULL_LINE;
    public static final LineLayoutType CrossRoadMark;
    public static final LineLayoutType DASH_FULL_LINE;
    public static final LineLayoutType DASH_LINE;
    public static final LineLayoutType DIAO_TOU_AREA;
    public static final LineLayoutType FULL_LINE;
    public static final LineLayoutType GRID_LINE;
    public static final LineLayoutType JIN_TING_AREA;
    public static final LineLayoutType JUDGE_AREA_LINE;
    public static final LineLayoutType KEEP_ASIDE_FULL_LINE;
    public static final LineLayoutType NON_MOTOR_VEHICLE_DASH_LINE;
    public static final LineLayoutType NON_MOTOR_VEHICLE_FULL_LINE;
    public static final LineLayoutType NO_ENTER_AREA;
    public static final LineLayoutType SHUANG_HUANG_DASH;
    public static final LineLayoutType SHUANG_HUANG_FULL;
    public static final LineLayoutType STOP_LINE;
    public static final LineLayoutType TING_CHE_AREA;
    private final String lineName;
    private final int lineType;
    private final ArrayList<K3ShapeType> shapeTypes;
    private final int type;

    private static final /* synthetic */ LineLayoutType[] $values() {
        return new LineLayoutType[]{DASH_LINE, CENTER_DASH_LINE, FULL_LINE, KEEP_ASIDE_FULL_LINE, NON_MOTOR_VEHICLE_FULL_LINE, NON_MOTOR_VEHICLE_DASH_LINE, GRID_LINE, CENTRAL_CIRCLE, SHUANG_HUANG_FULL, SHUANG_HUANG_DASH, ARROW, CrossRoadMark, BANMA_LINE, STOP_LINE, CENTRAL_CIRCLE_FULL_LINE, JUDGE_AREA_LINE, DIAO_TOU_AREA, JIN_TING_AREA, TING_CHE_AREA, BUILDINGS, NO_ENTER_AREA, DASH_FULL_LINE};
    }

    static {
        K3ShapeType k3ShapeType = K3ShapeType.STRAIGHT_LINE;
        K3ShapeType k3ShapeType2 = K3ShapeType.CURVE;
        DASH_LINE = new LineLayoutType("DASH_LINE", 0, 1, "虚线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 1);
        CENTER_DASH_LINE = new LineLayoutType("CENTER_DASH_LINE", 1, 2, "道路中心线-虚线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 10);
        FULL_LINE = new LineLayoutType("FULL_LINE", 2, 3, "实线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 1);
        KEEP_ASIDE_FULL_LINE = new LineLayoutType("KEEP_ASIDE_FULL_LINE", 3, 4, "最右侧车道实线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 3);
        NON_MOTOR_VEHICLE_FULL_LINE = new LineLayoutType("NON_MOTOR_VEHICLE_FULL_LINE", 4, 5, "非机动车道线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 4);
        NON_MOTOR_VEHICLE_DASH_LINE = new LineLayoutType("NON_MOTOR_VEHICLE_DASH_LINE", 5, 16, "非机动车道虚线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 4);
        GRID_LINE = new LineLayoutType("GRID_LINE", 6, 6, "网格线", new ArrayList(), 8);
        CENTRAL_CIRCLE = new LineLayoutType("CENTRAL_CIRCLE", 7, 7, "中心圈", kotlin.collections.u.f(K3ShapeType.CENTRAL_CIRCLE_ROUND, K3ShapeType.CENTRAL_CIRCLE_RHOMB), 7);
        SHUANG_HUANG_FULL = new LineLayoutType("SHUANG_HUANG_FULL", 8, 8, "双黄实线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 2);
        SHUANG_HUANG_DASH = new LineLayoutType("SHUANG_HUANG_DASH", 9, 9, "双黄虚线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 2);
        K3ShapeType k3ShapeType3 = K3ShapeType.ARROW_STRAIGHT;
        K3ShapeType k3ShapeType4 = K3ShapeType.ARROW_TURN_LEFT;
        K3ShapeType k3ShapeType5 = K3ShapeType.ARROW_TURN_RIGHT;
        K3ShapeType k3ShapeType6 = K3ShapeType.ARROW_TURN_AROUND;
        K3ShapeType k3ShapeType7 = K3ShapeType.ARROW_STRAIGHT_TURN_LEFT;
        K3ShapeType k3ShapeType8 = K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT;
        K3ShapeType k3ShapeType9 = K3ShapeType.ARROW_STRAIGHT_TURN_AROUND;
        K3ShapeType k3ShapeType10 = K3ShapeType.ARROW_TURN_LEFT_AROUND;
        K3ShapeType k3ShapeType11 = K3ShapeType.ARROW_TURN_LEFT_RIGHT;
        ARROW = new LineLayoutType("ARROW", 10, 10, "箭头", kotlin.collections.u.f(k3ShapeType3, k3ShapeType4, k3ShapeType5, k3ShapeType6, k3ShapeType7, k3ShapeType8, k3ShapeType9, k3ShapeType10, k3ShapeType11), 6);
        CrossRoadMark = new LineLayoutType("CrossRoadMark", 11, 11, "车道标识线", kotlin.collections.u.f(k3ShapeType3, k3ShapeType4, k3ShapeType5, k3ShapeType6, k3ShapeType7, k3ShapeType8, k3ShapeType9, k3ShapeType10, k3ShapeType11), 11);
        BANMA_LINE = new LineLayoutType("BANMA_LINE", 12, 12, "人行横道", new ArrayList(), 5);
        STOP_LINE = new LineLayoutType("STOP_LINE", 13, 13, "停止线", new ArrayList(), 9);
        CENTRAL_CIRCLE_FULL_LINE = new LineLayoutType("CENTRAL_CIRCLE_FULL_LINE", 14, 14, "中心圈实线", kotlin.collections.u.f(k3ShapeType, k3ShapeType2), 12);
        JUDGE_AREA_LINE = new LineLayoutType("JUDGE_AREA_LINE", 15, 15, "评判控制线", new ArrayList(), 13);
        DIAO_TOU_AREA = new LineLayoutType("DIAO_TOU_AREA", 16, 17, "掉头区域", new ArrayList(), 14);
        JIN_TING_AREA = new LineLayoutType("JIN_TING_AREA", 17, 18, "禁停区域", new ArrayList(), 15);
        TING_CHE_AREA = new LineLayoutType("TING_CHE_AREA", 18, 19, "停车区域", new ArrayList(), 16);
        BUILDINGS = new LineLayoutType("BUILDINGS", 19, 20, "建筑物", kotlin.collections.u.f(K3ShapeType.DefaultBuildings, K3ShapeType.RedGreenLight), 17);
        NO_ENTER_AREA = new LineLayoutType("NO_ENTER_AREA", 20, 21, "禁止驶入区域", new ArrayList(), 18);
        DASH_FULL_LINE = new LineLayoutType("DASH_FULL_LINE", 21, 22, "虚实线", kotlin.collections.u.f(K3ShapeType.RIGHT_DASH_LINE, K3ShapeType.LEFT_DASH_LINE), 19);
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    private LineLayoutType(String str, int i, int i2, String str2, ArrayList arrayList, int i3) {
        super(str, i);
        this.type = i2;
        this.lineName = str2;
        this.shapeTypes = arrayList;
        this.lineType = i3;
    }

    public static LineLayoutType valueOf(String str) {
        return (LineLayoutType) Enum.valueOf(LineLayoutType.class, str);
    }

    public static LineLayoutType[] values() {
        return (LineLayoutType[]) $VALUES.clone();
    }

    public final String getLineName() {
        return this.lineName;
    }

    public final int getLineType() {
        return this.lineType;
    }

    public final ArrayList<K3ShapeType> getShapeTypes() {
        return this.shapeTypes;
    }

    public final int getType() {
        return this.type;
    }
}
