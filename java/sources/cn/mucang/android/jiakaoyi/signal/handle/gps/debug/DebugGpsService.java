package cn.mucang.android.jiakaoyi.signal.handle.gps.debug;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.h;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0011H\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0016J\"\u0010\u0018\u001a\u00020\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\bR\u00020\u0000X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;", "Landroid/app/Service;", "()V", "debugGps", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;", "interval", "", "mServiceHandler", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$ServiceHandler;", "mServiceLooper", "Landroid/os/Looper;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/SetInitDebugGps;", "posObserver", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBt3dPosInfo;", "gps", "", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "onDestroy", "onStartCommand", "", "flags", "startId", "ServiceHandler", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugGpsService extends Service {
    private volatile Looper b;
    private volatile a c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5712a = 200;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DebugGps f5713d = new DebugGps();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0<SetInitDebugGps> f5714e = new a0() { // from class: cn.mucang.android.jiakaoyi.signal.handle.gps.debug.a
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            DebugGpsService.e(this.f5717a, (SetInitDebugGps) obj);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0<h> f5715f = new a0() { // from class: cn.mucang.android.jiakaoyi.signal.handle.gps.debug.b
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            DebugGpsService.f(this.f5718a, (h) obj);
        }
    };

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$ServiceHandler;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Landroid/os/Looper;)V", "handleMessage", "", SocialConstants.PARAM_SEND_MSG, "Landroid/os/Message;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private final class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DebugGpsService f5716a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DebugGpsService this$0, Looper looper) {
            super(looper);
            r.e(this$0, "this$0");
            r.e(looper, "looper");
            this.f5716a = this$0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            r.e(msg, "msg");
            this.f5716a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        DebugGps debugGps = this.f5713d;
        e eVarT = d.t();
        r.d(eVarT, "signal()");
        cn.mucang.android.jiakaoyi.signal.center.model.b bVarB = debugGps.b(eVarT, SystemClock.elapsedRealtime());
        bVarB.f5281g.setAltitude(29.294999999999998d);
        JLocationManager.f5733a.n(bVarB);
        a aVar = this.c;
        if (aVar == null) {
            r.u("mServiceHandler");
            throw null;
        }
        Message messageObtainMessage = aVar.obtainMessage();
        r.d(messageObtainMessage, "mServiceHandler.obtainMessage()");
        a aVar2 = this.c;
        if (aVar2 != null) {
            aVar2.sendMessageDelayed(messageObtainMessage, this.f5712a);
        } else {
            r.u("mServiceHandler");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DebugGpsService this$0, SetInitDebugGps setInitDebugGps) {
        r.e(this$0, "this$0");
        this$0.f5713d.a(setInitDebugGps.getGps());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(DebugGpsService this$0, h it) {
        r.e(this$0, "this$0");
        n.b(true);
        a aVar = this$0.c;
        if (aVar == null) {
            r.u("mServiceHandler");
            throw null;
        }
        aVar.removeCallbacksAndMessages(null);
        e signalGetter = d.t();
        if (signalGetter.c().main == null) {
            return;
        }
        DebugGps debugGps = this$0.f5713d;
        r.d(it, "it");
        r.d(signalGetter, "signalGetter");
        cn.mucang.android.jiakaoyi.signal.center.model.b bVarC = debugGps.c(it, signalGetter, SystemClock.elapsedRealtime());
        bVarC.f5281g.setAltitude(29.294999999999998d);
        JLocationManager.f5733a.n(bVarC);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        t.d("DebugGpsService", "onCreate()");
        HandlerThread handlerThread = new HandlerThread("DebugGpsService");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        r.d(looper, "thread.looper");
        this.b = looper;
        Looper looper2 = this.b;
        if (looper2 == null) {
            r.u("mServiceLooper");
            throw null;
        }
        this.c = new a(this, looper2);
        LiveBus.d(SetInitDebugGps.class).i(this.f5714e);
        a aVar = this.c;
        if (aVar == null) {
            r.u("mServiceHandler");
            throw null;
        }
        aVar.sendEmptyMessage(0);
        LiveBus.d(h.class).i(this.f5715f);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        LiveBus.d(SetInitDebugGps.class).m(this.f5714e);
        LiveBus.d(h.class).m(this.f5715f);
        a aVar = this.c;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        } else {
            r.u("mServiceHandler");
            throw null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return 2;
    }
}
