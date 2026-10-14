package cn.mucang.android.jiakaoyi.k3collect.helper;

import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.f0.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/helper/LineTypeSpinnerHelper;", "", "()V", "getEditLineTypes", "", "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "lineLayoutType", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LineTypeSpinnerHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LineTypeSpinnerHelper f3939a = new LineTypeSpinnerHelper();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.f0.b$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3940a;

        static {
            int[] iArr = new int[LineLayoutType.values().length];
            iArr[LineLayoutType.DASH_LINE.ordinal()] = 1;
            iArr[LineLayoutType.CENTER_DASH_LINE.ordinal()] = 2;
            iArr[LineLayoutType.FULL_LINE.ordinal()] = 3;
            iArr[LineLayoutType.KEEP_ASIDE_FULL_LINE.ordinal()] = 4;
            iArr[LineLayoutType.NON_MOTOR_VEHICLE_FULL_LINE.ordinal()] = 5;
            iArr[LineLayoutType.NON_MOTOR_VEHICLE_DASH_LINE.ordinal()] = 6;
            iArr[LineLayoutType.CrossRoadMark.ordinal()] = 7;
            iArr[LineLayoutType.CENTRAL_CIRCLE_FULL_LINE.ordinal()] = 8;
            iArr[LineLayoutType.STOP_LINE.ordinal()] = 9;
            iArr[LineLayoutType.SHUANG_HUANG_FULL.ordinal()] = 10;
            iArr[LineLayoutType.SHUANG_HUANG_DASH.ordinal()] = 11;
            iArr[LineLayoutType.DASH_FULL_LINE.ordinal()] = 12;
            iArr[LineLayoutType.JIN_TING_AREA.ordinal()] = 13;
            iArr[LineLayoutType.DIAO_TOU_AREA.ordinal()] = 14;
            iArr[LineLayoutType.NO_ENTER_AREA.ordinal()] = 15;
            f3940a = iArr;
        }
    }

    private LineTypeSpinnerHelper() {
    }

    public final List<LineLayoutType> a(LineLayoutType lineLayoutType) {
        r.e(lineLayoutType, "lineLayoutType");
        switch (a.f3940a[lineLayoutType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return u.p(LineLayoutType.DASH_LINE, LineLayoutType.FULL_LINE, LineLayoutType.CENTER_DASH_LINE, LineLayoutType.KEEP_ASIDE_FULL_LINE, LineLayoutType.CrossRoadMark, LineLayoutType.CENTRAL_CIRCLE_FULL_LINE, LineLayoutType.NON_MOTOR_VEHICLE_FULL_LINE, LineLayoutType.NON_MOTOR_VEHICLE_DASH_LINE, LineLayoutType.STOP_LINE);
            case 10:
            case 11:
            case 12:
                return u.p(LineLayoutType.SHUANG_HUANG_FULL, LineLayoutType.SHUANG_HUANG_DASH, LineLayoutType.DASH_FULL_LINE);
            case 13:
            case 14:
            case 15:
                return u.p(LineLayoutType.JIN_TING_AREA, LineLayoutType.DIAO_TOU_AREA, LineLayoutType.NO_ENTER_AREA);
            default:
                return u.p(lineLayoutType);
        }
    }
}
