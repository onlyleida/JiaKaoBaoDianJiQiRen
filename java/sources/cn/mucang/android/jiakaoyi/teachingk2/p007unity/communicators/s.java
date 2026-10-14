package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.SingleType;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.a0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.e0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.x;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TraceUploadModel;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.RobotCarDataActivity;
import cn.mucang.android.jiakaoyi.unity.c.d;

/* JADX INFO: loaded from: classes4.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f8449a;
    public final e0 b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final s f8450a = new s();
    }

    public static s b() {
        return b.f8450a;
    }

    static /* synthetic */ void e(Boolean bool) {
        if (bool == Boolean.FALSE) {
            TraceUploadModel traceUploadModel = new TraceUploadModel();
            traceUploadModel.state = 0;
            d.e(traceUploadModel);
        }
    }

    public a0 a() {
        return cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.b();
    }

    public d0 c() {
        return cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.n();
    }

    public e0 d() {
        return this.b;
    }

    public void f() {
        cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.m();
        this.b.h();
        cn.mucang.android.jiakaoyi.teachingk2.dksingle.a.b(SingleType.All);
    }

    public void g() {
        TeachPositionManager.c();
        AssistTeachManager.f();
        K3DataManager.j();
        Activity activityI = MucangConfig.i();
        if (((activityI instanceof RobotCarDataActivity) || (activityI instanceof PosCollectActivity)) && !activityI.isDestroyed()) {
            return;
        }
        this.f8449a.a();
    }

    public void h() {
        this.b.g();
    }

    private s() {
        this.f8449a = new x();
        this.b = new e0();
        w.s.i(new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                s.e((Boolean) obj);
            }
        });
    }
}
