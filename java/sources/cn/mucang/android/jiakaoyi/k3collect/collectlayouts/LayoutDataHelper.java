package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.m1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/LayoutDataHelper;", "", "()V", "createLineLayout", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "lineLayoutType", "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LayoutDataHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LayoutDataHelper f3848a = new LayoutDataHelper();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.m1$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3849a;

        static {
            int[] iArr = new int[LineLayoutType.values().length];
            iArr[LineLayoutType.DASH_LINE.ordinal()] = 1;
            iArr[LineLayoutType.CENTER_DASH_LINE.ordinal()] = 2;
            iArr[LineLayoutType.FULL_LINE.ordinal()] = 3;
            iArr[LineLayoutType.KEEP_ASIDE_FULL_LINE.ordinal()] = 4;
            iArr[LineLayoutType.NON_MOTOR_VEHICLE_FULL_LINE.ordinal()] = 5;
            iArr[LineLayoutType.NON_MOTOR_VEHICLE_DASH_LINE.ordinal()] = 6;
            iArr[LineLayoutType.CENTRAL_CIRCLE.ordinal()] = 7;
            iArr[LineLayoutType.GRID_LINE.ordinal()] = 8;
            iArr[LineLayoutType.SHUANG_HUANG_FULL.ordinal()] = 9;
            iArr[LineLayoutType.SHUANG_HUANG_DASH.ordinal()] = 10;
            iArr[LineLayoutType.DASH_FULL_LINE.ordinal()] = 11;
            iArr[LineLayoutType.ARROW.ordinal()] = 12;
            iArr[LineLayoutType.CrossRoadMark.ordinal()] = 13;
            iArr[LineLayoutType.BANMA_LINE.ordinal()] = 14;
            iArr[LineLayoutType.STOP_LINE.ordinal()] = 15;
            iArr[LineLayoutType.CENTRAL_CIRCLE_FULL_LINE.ordinal()] = 16;
            iArr[LineLayoutType.JUDGE_AREA_LINE.ordinal()] = 17;
            iArr[LineLayoutType.DIAO_TOU_AREA.ordinal()] = 18;
            iArr[LineLayoutType.JIN_TING_AREA.ordinal()] = 19;
            iArr[LineLayoutType.TING_CHE_AREA.ordinal()] = 20;
            iArr[LineLayoutType.BUILDINGS.ordinal()] = 21;
            iArr[LineLayoutType.NO_ENTER_AREA.ordinal()] = 22;
            f3849a = iArr;
        }
    }

    private LayoutDataHelper() {
    }

    public final BaseLineLayout a(K3PosCollectActivity activity, LineLayoutType lineLayoutType, K3SrcData k3SrcData) {
        BaseLineLayout dashLineLayout;
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(lineLayoutType, "lineLayoutType");
        switch (a.f3849a[lineLayoutType.ordinal()]) {
            case 1:
                dashLineLayout = new DashLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 0, 4, null);
                break;
            case 2:
                dashLineLayout = new DashLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 10);
                break;
            case 3:
                dashLineLayout = new FullLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 0, 4, null);
                break;
            case 4:
                dashLineLayout = new FullLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 3);
                break;
            case 5:
                dashLineLayout = new FullLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 4);
                break;
            case 6:
                dashLineLayout = new DashLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 4);
                break;
            case 7:
                dashLineLayout = new CenterCircleLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 8:
                dashLineLayout = new GridLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 9:
                dashLineLayout = new ShuangHuangLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 10:
                dashLineLayout = new ShuangHuangDashLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 11:
                dashLineLayout = new DashFullLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 12:
                dashLineLayout = new ArrowLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 13:
                dashLineLayout = new CrossRoadMarkLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 14:
                dashLineLayout = new BanMaLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 15:
                dashLineLayout = new StopLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 16:
                dashLineLayout = new FullLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 12);
                break;
            case 17:
                dashLineLayout = new JudgeLineLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 18:
                dashLineLayout = new AreaBlockLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 14);
                break;
            case 19:
                dashLineLayout = new AreaBlockLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 15);
                break;
            case 20:
                dashLineLayout = new AreaBlockLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 16);
                break;
            case 21:
                dashLineLayout = new BuildingsLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null);
                break;
            case 22:
                dashLineLayout = new AreaBlockLayout(activity, k3SrcData != null ? k3SrcData.transform(lineLayoutType.getLineType()) : null, 18);
                break;
            default:
                return null;
        }
        return dashLineLayout;
    }
}
