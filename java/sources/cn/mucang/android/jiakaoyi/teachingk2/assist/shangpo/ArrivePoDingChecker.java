package cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ArrivePoDingChecker;", "", "onArrive", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "carStartPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "lastCenterPos", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "getSignalCallback", "()Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "checkArrivedPoding", "carCenterPos", SpeechConstant.SPEED, "", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "", "onArrived", "onCarLeaveShangpo", TtmlNode.START, "stop", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ArrivePoDingChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<v> f6160a;
    private Pos b;
    private Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f6161d;

    public ArrivePoDingChecker(Function0<v> onArrive) {
        r.e(onArrive, "onArrive");
        this.f6160a = onArrive;
        this.f6161d = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.a
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                ArrivePoDingChecker.f(this.f6153a, eVar);
            }
        };
    }

    private final void a(Pos pos, float f2) {
        List<AreaModel> list = n.b().o;
        if (this.b == null) {
            if (list == null || list.isEmpty()) {
                return;
            }
        }
        if (list == null || list.isEmpty()) {
            Pos pos2 = this.b;
            r.c(pos2);
            if (pos2.distanceSquare(pos) >= 102400.0d) {
                c("到达坡顶");
                d();
                return;
            }
            return;
        }
        if (this.c == null) {
            return;
        }
        Iterator<AreaModel> it = list.iterator();
        while (it.hasNext()) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.c, pos, ((1000 * f2) * 100) / 3600.0f), it.next().pointList)) {
                c("到达采集的坡顶");
                d();
                return;
            }
        }
    }

    private final void c(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("ArrivePoDingChecker: ", str));
    }

    private final void d() {
        h();
        this.f6160a.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ArrivePoDingChecker this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        Pos curCarCenterPos = it.c().center;
        r.d(curCarCenterPos, "curCarCenterPos");
        this$0.a(curCarCenterPos, it.d().b);
        this$0.c = curCarCenterPos;
    }

    public final void e() {
        Pos pos = cn.mucang.android.jiakaoyi.signal.c.d.t().c().center;
        this.b = pos;
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("onCarLeaveShangpo: ", pos));
    }

    public final void g() {
        h();
        c(TtmlNode.START);
        List<AreaModel> list = n.b().o;
        c(r.m("podingAreaSize:", list == null ? null : Integer.valueOf(list.size())));
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f6161d);
    }

    public final void h() {
        c("stop");
        this.b = null;
        this.c = null;
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f6161d);
    }
}
