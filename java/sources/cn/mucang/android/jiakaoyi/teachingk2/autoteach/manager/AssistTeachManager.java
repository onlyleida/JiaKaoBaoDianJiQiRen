package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.TeachPosCheck;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.AutoTeachPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.HelpTeachPage;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import com.amap.api.fence.GeoFence;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Y\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000*\u0001\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0007J\b\u0010#\u001a\u00020$H\u0007J\b\u0010%\u001a\u00020$H\u0007J\b\u0010&\u001a\u00020$H\u0007J\b\u0010'\u001a\u00020$H\u0007J\b\u0010(\u001a\u00020$H\u0007J\u001a\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020\u000b2\b\u0010+\u001a\u0004\u0018\u00010,H\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachManager;", "", "()V", "impl", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "getImpl", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "noneImpl", "cn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachManager$noneImpl$1", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachManager$noneImpl$1;", "page", "", "getPage", "()I", "setPage", "(I)V", "pageAutoTeach", "pageHelpTeach", "pageNone", "posCheck", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;", "getPosCheck", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;", "routeManager", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "getRouteManager", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "getStepByte", "", "checkedBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "onResLoaded", "", "removeShangPoAndSend", "resetAll", "sendArea", "showLastTeach", "unitySetStatus", "state", "data", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AssistTeachManager {
    private static int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final TeachPosCheck f6340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final TeachRouteManager f6341e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssistTeachManager f6339a = new AssistTeachManager();
    private static final b c = new b();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.y$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6342a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K2_CeFangTingChe.ordinal()] = 1;
            iArr[Step.K2_DaoCheRuKu.ordinal()] = 2;
            iArr[Step.K2_ZhiJiaoZhuanWan.ordinal()] = 3;
            iArr[Step.K2_ShangPoQiBu.ordinal()] = 4;
            iArr[Step.K2_SQuXian.ordinal()] = 5;
            f6342a = iArr;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.y$b */
    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachManager$noneImpl$1", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements BaseTeachFunc {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
        public boolean a(AutoTeachEvent autoTeachEvent) {
            return BaseTeachFunc.a.a(this, autoTeachEvent);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
        public void c() {
            BaseTeachFunc.a.b(this);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
        public void i(int i, String str) {
            BaseTeachFunc.a.c(this, i, str);
        }
    }

    static {
        TeachPosCheck teachPosCheck = new TeachPosCheck();
        f6340d = teachPosCheck;
        f6341e = new TeachRouteManager(teachPosCheck);
    }

    private AssistTeachManager() {
    }

    public static final byte d(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        Step stepS = bVar == null ? null : bVar.s();
        int i = stepS == null ? -1 : a.f6342a[stepS.ordinal()];
        if (i == 1) {
            return (byte) 1;
        }
        if (i == 2) {
            return (byte) 2;
        }
        if (i == 3) {
            return (byte) 3;
        }
        if (i != 4) {
            return i != 5 ? (byte) 0 : (byte) 5;
        }
        return (byte) 4;
    }

    public static final boolean e(AutoTeachEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        return f6339a.a().a(event);
    }

    public static final void f() {
        LocalConfig localConfig = LocalConfig.AutoTeach;
        if (LocalConfigManager.f(localConfig) || LocalConfigManager.f(LocalConfig.HelpTeach)) {
            f6340d.k();
        }
        if (LocalConfigManager.f(localConfig)) {
            f6341e.q();
        }
    }

    public static final void g() {
        f6340d.n();
    }

    public static final void h() {
        f6340d.b();
    }

    public static final void i() {
        f6340d.o();
    }

    public static final void k() {
        f6339a.a().c();
    }

    public static final void l(int i, String str) {
        f6339a.a().i(i, str);
    }

    public final BaseTeachFunc a() {
        int i = b;
        if (i == 1) {
            AutoTeachPage autoTeachPageC = cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.c();
            kotlin.jvm.internal.r.d(autoTeachPageC, "getAutoTeachPage()");
            return autoTeachPageC;
        }
        if (i != 2) {
            return c;
        }
        HelpTeachPage helpTeachPageD = cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.d();
        kotlin.jvm.internal.r.d(helpTeachPageD, "getHelpTeachPage()");
        return helpTeachPageD;
    }

    public final TeachPosCheck b() {
        return f6340d;
    }

    public final TeachRouteManager c() {
        return f6341e;
    }

    public final void j(int i) {
        b = i;
    }
}
