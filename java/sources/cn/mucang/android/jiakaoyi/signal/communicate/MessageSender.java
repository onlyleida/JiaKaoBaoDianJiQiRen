package cn.mucang.android.jiakaoyi.signal.communicate;

import android.os.Handler;
import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m0;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B[\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0018\u001a\u00020\fJ\u0015\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u001aJ\b\u0010\u001b\u001a\u00020\fH\u0007J\b\u0010\u001c\u001a\u00020\fH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;", ExifInterface.GPS_DIRECTION_TRUE, "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveDataNeedCheck;", "", "clazz", "Ljava/lang/Class;", "retryTime", "", "retryDuration", "", "task", "Lkotlin/Function0;", "", "onTimeout", "onResponse", "Lkotlin/Function1;", "(Ljava/lang/Class;IJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "handler", "Landroid/os/Handler;", "observer", "Landroidx/lifecycle/Observer;", "retryCount", "runnable", "Ljava/lang/Runnable;", "clear", "t", "(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveDataNeedCheck;)V", "send", "sendTask", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MessageSender<T extends cn.mucang.android.jiakaoyi.signal.communicate.receive.m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<T> f5403a;
    private final int b;
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<kotlin.v> f5404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0<kotlin.v> f5405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1<T, kotlin.v> f5406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f5407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f5408h;
    private final a0<T> i;
    private final Runnable j;

    /* JADX WARN: Multi-variable type inference failed */
    public MessageSender(Class<T> clazz, int i, long j, Function0<kotlin.v> task, Function0<kotlin.v> onTimeout, Function1<? super T, kotlin.v> function1) {
        kotlin.jvm.internal.r.e(clazz, "clazz");
        kotlin.jvm.internal.r.e(task, "task");
        kotlin.jvm.internal.r.e(onTimeout, "onTimeout");
        this.f5403a = clazz;
        this.b = i;
        this.c = j;
        this.f5404d = task;
        this.f5405e = onTimeout;
        this.f5406f = function1;
        this.f5407g = new Handler(Looper.getMainLooper());
        this.i = new a0() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                MessageSender.e(this.f5393a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.m) obj);
            }
        };
        this.j = new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.l
            @Override // java.lang.Runnable
            public final void run() {
                MessageSender.h(this.f5392a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MessageSender this$0, final cn.mucang.android.jiakaoyi.signal.communicate.receive.m t) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(t, "t");
        this$0.g(t);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.k
            @Override // java.lang.Runnable
            public final void run() {
                MessageSender.f(t);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(cn.mucang.android.jiakaoyi.signal.communicate.receive.m mVar) {
        int i = mVar.type;
        if (i == 39 || i == 41) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到底层回应:" + mVar.f5428a + ':' + ((Object) JSON.toJSONString(mVar)));
    }

    private final void g(T t) {
        a();
        Function1<T, kotlin.v> function1 = this.f5406f;
        if (function1 == null) {
            return;
        }
        function1.invoke(t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(MessageSender this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f5408h++;
        if (this$0.f5408h <= this$0.b) {
            this$0.j();
            return;
        }
        this$0.a();
        this$0.f5405e.invoke();
        cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("等待底层响应超时，响应数据类型是:", this$0.f5403a.getSimpleName()));
    }

    private final void j() {
        this.f5404d.invoke();
        this.f5407g.postDelayed(this.j, this.c);
    }

    public final void a() {
        LiveBus.d(this.f5403a).m(this.i);
        this.f5407g.removeCallbacksAndMessages(null);
    }

    public final void i() {
        LiveBus.d(this.f5403a).i(this.i);
        j();
        if (kotlin.jvm.internal.r.a(this.f5403a, m0.class) || kotlin.jvm.internal.r.a(this.f5403a, l0.class)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f(kotlin.jvm.internal.r.m("给底层发送指令，响应数据类型是:", this.f5403a.getSimpleName()));
    }

    public /* synthetic */ MessageSender(Class cls, int i, long j, Function0 function0, Function0 function1, Function1 function2, int i2, kotlin.jvm.internal.o oVar) {
        this(cls, (i2 & 2) != 0 ? 10 : i, (i2 & 4) != 0 ? 500L : j, function0, function1, (i2 & 32) != 0 ? null : function2);
    }
}
