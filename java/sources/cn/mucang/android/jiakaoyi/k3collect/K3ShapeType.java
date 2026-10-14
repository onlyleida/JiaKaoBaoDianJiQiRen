package cn.mucang.android.jiakaoyi.k3collect;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0001\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001b¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "", "type", "", "shapeName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getShapeName", "()Ljava/lang/String;", "getType", "()I", "STRAIGHT_LINE", "CURVE", "CENTRAL_CIRCLE_ROUND", "CENTRAL_CIRCLE_RHOMB", "ARROW_STRAIGHT", "ARROW_TURN_LEFT", "ARROW_TURN_RIGHT", "ARROW_TURN_AROUND", "ARROW_STRAIGHT_TURN_LEFT", "ARROW_STRAIGHT_TURN_RIGHT", "ARROW_STRAIGHT_TURN_AROUND", "ARROW_TURN_LEFT_AROUND", "ARROW_TURN_LEFT_RIGHT", "LEFT_DASH_LINE", "RIGHT_DASH_LINE", "DefaultBuildings", "RedGreenLight", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum K3ShapeType {
    STRAIGHT_LINE(10, "直线"),
    CURVE(11, "曲线"),
    CENTRAL_CIRCLE_ROUND(12, "圆形中心圈"),
    CENTRAL_CIRCLE_RHOMB(13, "菱形中心圈"),
    ARROW_STRAIGHT(1, "直行"),
    ARROW_TURN_LEFT(2, "左转"),
    ARROW_TURN_RIGHT(3, "右转"),
    ARROW_TURN_AROUND(4, "掉头"),
    ARROW_STRAIGHT_TURN_LEFT(5, "直行左转"),
    ARROW_STRAIGHT_TURN_RIGHT(6, "直行右转"),
    ARROW_STRAIGHT_TURN_AROUND(7, "直行掉头"),
    ARROW_TURN_LEFT_AROUND(8, "左转掉头"),
    ARROW_TURN_LEFT_RIGHT(9, "左右转"),
    LEFT_DASH_LINE(10, "左虚线"),
    RIGHT_DASH_LINE(11, "右虚线"),
    DefaultBuildings(14, "通用"),
    RedGreenLight(15, "红绿灯");

    private final String shapeName;
    private final int type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<Integer, K3ShapeType> cache = new LinkedHashMap();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3ShapeType$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType$Companion;", "", "()V", "cache", "", "", "Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;", "findWithType", "type", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        public K3ShapeType a(int i) {
            return (K3ShapeType) K3ShapeType.cache.get(Integer.valueOf(i));
        }
    }

    static {
        int i = 0;
        K3ShapeType[] k3ShapeTypeArrValues = values();
        int length = k3ShapeTypeArrValues.length;
        while (i < length) {
            K3ShapeType k3ShapeType = k3ShapeTypeArrValues[i];
            i++;
            cache.put(Integer.valueOf(k3ShapeType.type), k3ShapeType);
        }
    }

    K3ShapeType(int i, String str) {
        this.type = i;
        this.shapeName = str;
    }

    public final String getShapeName() {
        return this.shapeName;
    }

    public final int getType() {
        return this.type;
    }
}
