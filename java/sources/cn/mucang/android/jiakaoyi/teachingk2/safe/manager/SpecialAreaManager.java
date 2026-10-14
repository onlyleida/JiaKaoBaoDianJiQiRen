package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeFactorModel;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\nH\u0007J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpecialAreaManager;", "", "()V", "callback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "currentArea", "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;", "exe", "Ljava/util/concurrent/ExecutorService;", "doTrigger", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "init", "saveSetDesc", "", "coefficients", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpecialAreaManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpecialAreaManager f7772a = new SpecialAreaManager();
    private static final ExecutorService b;
    private static PolygonModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a f7773d;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        kotlin.jvm.internal.r.d(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        b = executorServiceNewSingleThreadExecutor;
        f7773d = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.h
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                SpecialAreaManager.a(eVar);
            }
        };
    }

    private SpecialAreaManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(cn.mucang.android.jiakaoyi.signal.c.e it) {
        kotlin.jvm.internal.r.e(it, "it");
        f7772a.b(it);
    }

    private final void b(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.j
            @Override // java.lang.Runnable
            public final void run() {
                SpecialAreaManager.c(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(signal, "$signal");
        try {
            final PolygonModel polygonModelA = signal.getCurrentPosition().c() ? cn.mucang.android.jiakaoyi.teachingk2.safe.detector.e.a(signal.c()) : cn.mucang.android.jiakaoyi.teachingk2.safe.detector.e.b(cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7599a.a(Gps.from(signal.getCurrentPosition().f5281g)));
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.i
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialAreaManager.d(polygonModelA);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PolygonModel polygonModel) {
        if (kotlin.jvm.internal.r.a(polygonModel, c)) {
            return;
        }
        String str = polygonModel == null ? null : polygonModel.id;
        PolygonModel polygonModel2 = c;
        if (kotlin.jvm.internal.r.a(str, polygonModel2 == null ? null : polygonModel2.id)) {
            return;
        }
        if (polygonModel == null && c != null) {
            SafeCommandManager.m(new SafeFactorModel().coefficients, kotlin.jvm.internal.r.m(f7772a.i(new SafeFactorModel().coefficients), " : 从特殊区域出来"));
        } else if (polygonModel != null && c != null) {
            SafeFactorModel safeFactorModel = polygonModel.safeData;
            SafeCommandManager.m(safeFactorModel == null ? null : safeFactorModel.coefficients, kotlin.jvm.internal.r.m(f7772a.i(safeFactorModel != null ? safeFactorModel.coefficients : null), " : 进入特殊区域"));
        } else if (polygonModel != null && c == null) {
            SafeFactorModel safeFactorModel2 = polygonModel.safeData;
            SafeCommandManager.m(safeFactorModel2 == null ? null : safeFactorModel2.coefficients, kotlin.jvm.internal.r.m(f7772a.i(safeFactorModel2 != null ? safeFactorModel2.coefficients : null), " : 进入特殊区域"));
        }
        c = polygonModel;
    }

    public static final void e() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f7773d);
    }

    private final String i(int[] iArr) {
        if (iArr != null) {
            return iArr.length == 0 ? "0" : String.valueOf(iArr[0]);
        }
        return "0";
    }
}
