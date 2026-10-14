package cn.mucang.android.jiakaoyi.teachingk2.assist.intercept;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler;", "", "()V", "TAG", "", "assist", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "checkGpsComDisconnectRunnable", "Ljava/lang/Runnable;", "comConnectStateListener", "cn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1;", "hasGpsCheckDisconnectRunnable", "", "signalCallBack", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "destroy", "", TtmlNode.START, "assistant", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsErrorHandler {
    private static AbsAssistant b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f6123e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GpsErrorHandler f6121a = new GpsErrorHandler();
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a c = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.c.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(e eVar) {
            GpsErrorHandler.h(eVar);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f6122d = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Runnable f6124f = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.c.b
        @Override // java.lang.Runnable
        public final void run() {
            GpsErrorHandler.d();
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.f$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/IComConnectListener;", "onConnected", "", "comName", "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;", "onDisConnected", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements IComConnectListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener
        public void a(ComName comName) {
            r.e(comName, "comName");
            if (comName == ComName.GpsNet) {
                GpsErrorHandler gpsErrorHandler = GpsErrorHandler.f6121a;
                GpsErrorHandler.f6123e = false;
                u.e(GpsErrorHandler.f6124f);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.IComConnectListener
        public void b(ComName comName) {
            r.e(comName, "comName");
            if (comName != ComName.GpsNet || GpsErrorHandler.f6123e) {
                return;
            }
            GpsErrorHandler gpsErrorHandler = GpsErrorHandler.f6121a;
            GpsErrorHandler.f6123e = true;
            u.d(GpsErrorHandler.f6124f, 1000L);
        }
    }

    private GpsErrorHandler() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        f.o("GpsErrorHandler: Gps网口断开");
        AbsAssistant absAssistant = b;
        if (absAssistant != null) {
            String strA = k0.a(R.string.teachbase_gps_port_disconnect);
            r.d(strA, "getString(R.string.teachbase_gps_port_disconnect)");
            absAssistant.y(strA, true);
        }
        f6121a.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (!signalGetter.d().h() || cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(signalGetter.getCurrentPosition().f5282h)) {
            return;
        }
        f.o("GpsErrorHandler: gps信号弱");
        AbsAssistant absAssistant = b;
        if (absAssistant != null) {
            String strA = k0.a(R.string.teachbase_gps_weak);
            r.d(strA, "getString(R.string.teachbase_gps_weak)");
            absAssistant.y(strA, true);
        }
        f6121a.e();
    }

    public final void e() {
        f.o("GpsErrorHandler: destroy");
        b = null;
        f6123e = false;
        u.e(f6124f);
        d.m.n(c);
        m.h().U(f6122d);
    }

    public final void i(AbsAssistant assistant) {
        r.e(assistant, "assistant");
        e();
        f.o("GpsErrorHandler: start");
        b = assistant;
        d.m.b(c);
        m.h().K(f6122d);
    }
}
