package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.fence.GeoFence;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0014\u001a\u00020\nJ\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;", "", "()V", "preChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;", "routeManager", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "teachManager", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;", "exit", "", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "sendPath", "showLastTeach", TtmlNode.START, "startEngine", "stop", "stopEngine", "unitySetStatus", "state", "", "data", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoTeachController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssistTeachPreChecker f6294a = new AssistTeachPreChecker(true, new Function1<cn.mucang.android.jiakaoyi.hpmap.a.a.b, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AutoTeachController$preChecker$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) throws Exception {
            invoke2(bVar);
            return kotlin.v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) throws Exception {
            this.this$0.c.O(bVar);
        }
    });
    private final TeachRouteManager b;
    private final AutoTeachManager c;

    public AutoTeachController() {
        TeachRouteManager teachRouteManagerC = AssistTeachManager.f6339a.c();
        this.b = teachRouteManagerC;
        this.c = new AutoTeachManager(teachRouteManagerC, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AutoTeachController$teachManager$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.f();
            }
        });
    }

    public final void b() {
        this.f6294a.e();
        this.c.e();
    }

    public final boolean c(AutoTeachEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        return this.c.m(event);
    }

    public final void d() {
        AssistTeachManager assistTeachManager = AssistTeachManager.f6339a;
        if (assistTeachManager.b().getF6281f() == null) {
            return;
        }
        this.c.O(assistTeachManager.b().getF6281f());
    }

    public final void e() {
        this.c.T();
    }

    public final void f() {
        this.f6294a.d();
    }

    public final void g() {
        h();
        this.c.N();
    }

    public final void h() {
        this.f6294a.e();
    }

    public final void i() {
        this.c.X();
    }

    public final void j(int i, String str) {
        if (i != AutoTeachStatus.CheckRoute.getType()) {
            if (i == AutoTeachStatus.CheckType.getType()) {
                this.f6294a.c();
                return;
            } else {
                this.c.Y(i);
                return;
            }
        }
        JSONObject object = JSON.parseObject(str);
        boolean z = false;
        if (object != null && object.containsKey("index")) {
            z = true;
        }
        if (z) {
            this.b.h(object.getIntValue("index"));
        }
    }
}
