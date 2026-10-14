package cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed;

import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CarStopChecker;", "", "onCarStop", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "isChecking", "", "lastStopTime", "", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "getSignalCallback", "()Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "stopTotalTime", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "", TtmlNode.START, "stop", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarStopChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<v> f6141a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f6143e;

    public CarStopChecker(Function0<v> onCarStop) {
        r.e(onCarStop, "onCarStop");
        this.f6141a = onCarStop;
        this.f6143e = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.a
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                CarStopChecker.c(this.f6132a, eVar);
            }
        };
    }

    private final void b(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("CarStopChecker: ", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(CarStopChecker this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        boolean zC = it.d().c();
        long j = it.d().L;
        if (zC) {
            this$0.c = 0L;
            this$0.b = 0L;
        } else {
            long j2 = this$0.b;
            if (j2 == 0) {
                this$0.b = j;
            } else {
                this$0.c += j - j2;
                this$0.b = j;
            }
        }
        if (this$0.c >= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            this$0.b("车已停止");
            this$0.e();
            this$0.f6141a.invoke();
        }
    }

    public final void d() {
        b(TtmlNode.START);
        e();
        this.f6142d = true;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f6143e);
    }

    public final void e() {
        if (this.f6142d) {
            b("stop");
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f6143e);
            this.b = 0L;
            this.c = 0L;
            this.f6142d = false;
        }
    }
}
