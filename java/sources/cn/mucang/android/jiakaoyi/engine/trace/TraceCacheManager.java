package cn.mucang.android.jiakaoyi.engine.trace;

import cn.mucang.android.jiakaoyi.engine.trace.model.TraceCarModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceErrorModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceSignalModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import cn.mucang.android.jiakaoyi.engine.trace.upload.TraceDetailInfo;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.trace.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0001H\u0007J\b\u0010?\u001a\u00020\u001bH\u0007J\u0010\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020\u001bH\u0007R\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\bR\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\bR\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\bR\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R0\u0010'\u001a\u0004\u0018\u00010&2\b\u0010%\u001a\u0004\u0018\u00010&8\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b(\u0010\u0002\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\b\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020\u00160\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R,\u00102\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001d8\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b3\u0010\u0002\u001a\u0004\b4\u0010 \"\u0004\b5\u0010\"R$\u00106\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b7\u0010\u0002\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006B"}, d2 = {"Lcn/mucang/android/jiakaoyi/engine/trace/TraceCacheManager;", "", "()V", "backupTrackCarData", "", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;", "getBackupTrackCarData$annotations", "getBackupTrackCarData", "()Ljava/util/List;", "backupTrackDeductData", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;", "getBackupTrackDeductData$annotations", "getBackupTrackDeductData", "backupTrackErrorData", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;", "getBackupTrackErrorData$annotations", "getBackupTrackErrorData", "backupTrackSignalData", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;", "getBackupTrackSignalData$annotations", "getBackupTrackSignalData", "backupTrackStepData", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;", "getBackupTrackStepData$annotations", "getBackupTrackStepData", "lastSignalModel", "needAddData", "", "passScore", "", "getPassScore$annotations", "getPassScore", "()I", "setPassScore", "(I)V", Constant.START_TIME, "", "value", "", "subCode", "getSubCode$annotations", "getSubCode", "()Ljava/lang/String;", "setSubCode", "(Ljava/lang/String;)V", "trackCarData", "trackDeductData", "trackErrorData", "trackSignalData", "trackStepData", "type", "getType$annotations", "getType", "setType", "valid", "getValid$annotations", "getValid", "()Z", "setValid", "(Z)V", "addData", "", "any", "canReplay", "clear", "needCopy", "engine_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceCacheManager {
    private static boolean l;
    private static TraceSignalModel m;
    private static long n;
    private static volatile String o;
    private static volatile boolean p;
    private static int r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TraceCacheManager f3204a = new TraceCacheManager();
    private static List<TraceCarModel> b = new ArrayList();
    private static List<TraceSignalModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<TraceErrorModel> f3205d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static List<TraceDeductModel> f3206e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static List<TraceStepModel> f3207f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<TraceCarModel> f3208g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final List<TraceSignalModel> f3209h = new ArrayList();
    private static final List<TraceErrorModel> i = new ArrayList();
    private static final List<TraceDeductModel> j = new ArrayList();
    private static final List<TraceStepModel> k = new ArrayList();
    private static int q = 80;

    private TraceCacheManager() {
    }

    public static final void a(Object any) {
        kotlin.jvm.internal.r.e(any, "any");
        if (n == 0) {
            n = System.currentTimeMillis();
        }
        boolean z = any instanceof TraceSignalModel;
        if (z) {
            m = (TraceSignalModel) any;
        }
        int i2 = r;
        if (i2 == 0 && (any instanceof TraceStepModel) && ((TraceStepModel) any).st == 1) {
            l = true;
        }
        if (i2 != 0 || l) {
            String jSONString = JSON.toJSONString(any);
            if (any instanceof TraceCarModel) {
                TraceCarModel obj = (TraceCarModel) JSON.parseObject(jSONString, TraceCarModel.class);
                List<TraceCarModel> list = b;
                kotlin.jvm.internal.r.d(obj, "obj");
                list.add(obj);
                return;
            }
            if (z) {
                TraceSignalModel obj2 = (TraceSignalModel) JSON.parseObject(jSONString, TraceSignalModel.class);
                List<TraceSignalModel> list2 = c;
                kotlin.jvm.internal.r.d(obj2, "obj");
                list2.add(obj2);
                return;
            }
            if (any instanceof TraceErrorModel) {
                TraceErrorModel obj3 = (TraceErrorModel) JSON.parseObject(jSONString, TraceErrorModel.class);
                List<TraceErrorModel> list3 = f3205d;
                kotlin.jvm.internal.r.d(obj3, "obj");
                list3.add(obj3);
                return;
            }
            if (any instanceof TraceDeductModel) {
                TraceDeductModel obj4 = (TraceDeductModel) JSON.parseObject(jSONString, TraceDeductModel.class);
                obj4.reverse = w.o();
                List<TraceDeductModel> list4 = f3206e;
                kotlin.jvm.internal.r.d(obj4, "obj");
                list4.add(obj4);
                return;
            }
            if (any instanceof TraceStepModel) {
                TraceStepModel obj5 = (TraceStepModel) JSON.parseObject(jSONString, TraceStepModel.class);
                List<TraceStepModel> list5 = f3207f;
                kotlin.jvm.internal.r.d(obj5, "obj");
                list5.add(obj5);
                if (r == 0 && ((TraceStepModel) any).st == 2) {
                    l = false;
                }
            }
        }
    }

    public static final boolean b() {
        if (!j.isEmpty()) {
            return true;
        }
        return (k.isEmpty() ^ true) && (f3209h.isEmpty() ^ true) && (f3208g.isEmpty() ^ true);
    }

    public static final void c(boolean z) {
        TraceSignalModel traceSignalModel;
        List<TraceCarModel> list = f3208g;
        list.clear();
        List<TraceSignalModel> list2 = f3209h;
        list2.clear();
        List<TraceErrorModel> list3 = i;
        list3.clear();
        List<TraceDeductModel> list4 = j;
        list4.clear();
        List<TraceStepModel> list5 = k;
        list5.clear();
        if (z) {
            list.addAll(b);
            list2.addAll(c);
            if (list2.isEmpty() && (traceSignalModel = m) != null) {
                kotlin.jvm.internal.r.c(traceSignalModel);
                list2.add(traceSignalModel);
            }
            list3.addAll(f3205d);
            list4.addAll(f3206e);
            list5.addAll(f3207f);
            LiveBus.d(TraceDetailInfo.class).l(new TraceDetailInfo(r, (int) (System.currentTimeMillis() - n), q, o, new ArrayList(list4), new ArrayList(list5), p));
        }
        b.clear();
        c.clear();
        f3205d.clear();
        f3206e.clear();
        f3207f.clear();
        n = 0L;
        j(null);
        p = false;
    }

    public static final List<TraceCarModel> d() {
        return f3208g;
    }

    public static final List<TraceDeductModel> e() {
        return j;
    }

    public static final List<TraceErrorModel> f() {
        return i;
    }

    public static final List<TraceSignalModel> g() {
        return f3209h;
    }

    public static final List<TraceStepModel> h() {
        return k;
    }

    public static final void i(int i2) {
        q = i2;
    }

    public static final void j(String str) {
        o = str;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关卡-设置 subCode:", str));
    }

    public static final void k(int i2) {
        c(false);
        r = i2;
    }

    public static final void l(boolean z) {
        p = z;
    }
}
