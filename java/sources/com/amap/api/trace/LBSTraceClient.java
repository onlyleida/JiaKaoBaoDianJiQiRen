package com.amap.api.trace;

import android.content.Context;
import com.amap.api.mapcore.util.y4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LBSTraceClient {
    public static final String LOCATE_TIMEOUT_ERROR = "定位超时";
    public static final String MIN_GRASP_POINT_ERROR = "轨迹点太少或距离太近,轨迹纠偏失败";
    public static final String TRACE_SUCCESS = "纠偏成功";
    public static final int TYPE_AMAP = 1;
    public static final int TYPE_BAIDU = 3;
    public static final int TYPE_GPS = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LBSTraceBase f11583a;
    private static volatile LBSTraceClient b;

    public LBSTraceClient(Context context) {
        a(context);
    }

    private static void a(Context context) {
        if (context != null) {
            f11583a = new y4(context.getApplicationContext());
        }
    }

    public static LBSTraceClient getInstance(Context context) {
        if (b == null) {
            synchronized (LBSTraceClient.class) {
                if (b == null) {
                    a(context);
                    b = new LBSTraceClient();
                }
            }
        }
        return b;
    }

    public void destroy() {
        LBSTraceBase lBSTraceBase = f11583a;
        if (lBSTraceBase != null) {
            lBSTraceBase.destroy();
            a();
        }
    }

    public void queryProcessedTrace(int i, List<TraceLocation> list, int i2, TraceListener traceListener) {
        LBSTraceBase lBSTraceBase = f11583a;
        if (lBSTraceBase != null) {
            lBSTraceBase.queryProcessedTrace(i, list, i2, traceListener);
        }
    }

    public void startTrace(TraceStatusListener traceStatusListener) {
        LBSTraceBase lBSTraceBase = f11583a;
        if (lBSTraceBase != null) {
            lBSTraceBase.startTrace(traceStatusListener);
        }
    }

    public void stopTrace() {
        LBSTraceBase lBSTraceBase = f11583a;
        if (lBSTraceBase != null) {
            lBSTraceBase.stopTrace();
        }
    }

    private static void a() {
        f11583a = null;
        b = null;
    }

    private LBSTraceClient() {
    }
}
