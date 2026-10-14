package cn.mucang.android.jiakaoyi.signal.communicate;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.m0;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.google.android.exoplayer2.SimpleExoPlayer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010J6\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00152\u0016\u0010\u0016\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\t\u0018\u00010\u0017J\u001e\u0010\u0019\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;", "", "()V", "newRtcmVersion", "", "sendIndex", "requestDeviceId", "", "sendBoxVersion", "", "version", "sendCarMessage", "carModel", "", "sendRtcmNew", "rtcmBytes", "", "index", "sendRtcmPack", "setBoxVersion", "function0", "Lkotlin/Function0;", "function1", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBoxVersionInfo;", "setCarModel", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class McCommandManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final McCommandManager f5380a = new McCommandManager();
    private static int b;

    private McCommandManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(final int i) {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.OrderBoxVersion, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.f
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return McCommandManager.h(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] h(int i) {
        v vVar = new v(true);
        vVar.h((short) i);
        return vVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(final byte b2) {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.OrderSetCarModel, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.g
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return McCommandManager.j(b2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] j(byte b2) {
        return new byte[]{b2};
    }

    private final void k(final byte[] bArr, final int i) {
        new MessageSender(l0.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new McCommandManager$sendRtcmNew$1(bArr, i), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$sendRtcmNew$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.framework.log.f.i("rtcm发送到固件, 等待2000ms, 响应超时, 发送序号是:" + i + ",长度是:" + bArr.length + ", GpsType=" + cn.mucang.android.jiakaoyi.signal.c.d.m.h());
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<l0, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$sendRtcmNew$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(l0 it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.jiakaoyi.framework.log.f.i("rtcm发送到固件, 固件返回发送失败, 应答=" + it + ",发送序号是:" + i + ",长度是:" + bArr.length);
                    return;
                }
                if (it.c != i) {
                    cn.mucang.android.jiakaoyi.framework.log.f.i("rtcm发送到固件, 收到其他rtcm发送的回应, 应答=" + it + ",发送序号是:" + i + ",长度是:" + bArr.length);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(l0 l0Var) {
                invoke2(l0Var);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] m(byte[] rtcmBytes) {
        kotlin.jvm.internal.r.e(rtcmBytes, "$rtcmBytes");
        v vVar = new v(true);
        vVar.h((short) rtcmBytes.length);
        vVar.d(rtcmBytes);
        return vVar.b();
    }

    public final synchronized boolean f() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.OrderRequestHarderWareInfo, new byte[0]);
        return true;
    }

    public final synchronized void l(final byte[] rtcmBytes) {
        kotlin.jvm.internal.r.e(rtcmBytes, "rtcmBytes");
        if (!AppUtils.c() || cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().m()) {
            GpsAnalysis.f().k();
            if (AppUtils.n()) {
                GpsAnalysis.f().j();
            }
            if (AppUtils.c()) {
                k(rtcmBytes, b);
                int i = b + 1;
                b = i;
                if (i > 65535) {
                    b = 0;
                }
                return;
            }
            if (!AppUtils.k() && !AppUtils.e() && !AppUtils.j()) {
                if (DeviceUtils.i() >= 92) {
                    k(rtcmBytes, b);
                    int i2 = b + 1;
                    b = i2;
                    if (i2 > 65535) {
                        b = 0;
                    }
                } else {
                    new MessageSender(m0.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new McCommandManager$sendRtcmPack$2(rtcmBytes), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$sendRtcmPack$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            cn.mucang.android.jiakaoyi.framework.log.f.i("rtcm发送到固件, 等待2000ms, 响应超时, length=" + rtcmBytes.length + ", GpsType=" + cn.mucang.android.jiakaoyi.signal.c.d.m.h());
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ kotlin.v invoke() {
                            invoke2();
                            return kotlin.v.f15822a;
                        }
                    }, new Function1<m0, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$sendRtcmPack$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(m0 it) {
                            kotlin.jvm.internal.r.e(it, "it");
                            if (it.f5428a) {
                                return;
                            }
                            cn.mucang.android.jiakaoyi.framework.log.f.i(kotlin.jvm.internal.r.m("rtcm发送到固件, 固件返回发送失败, length=", Integer.valueOf(rtcmBytes.length)));
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.v invoke(m0 m0Var) {
                            invoke2(m0Var);
                            return kotlin.v.f15822a;
                        }
                    }).i();
                }
                return;
            }
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.OrderSendRtcm, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.h
                @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
                public final byte[] a() {
                    return McCommandManager.m(rtcmBytes);
                }
            });
        }
    }

    public final synchronized void n(final int i, Function0<kotlin.v> function0, Function1<? super cn.mucang.android.jiakaoyi.signal.communicate.receive.f, kotlin.v> function1) {
        Function0<kotlin.v> function2 = new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$setBoxVersion$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                McCommandManager.f5380a.g(i);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        };
        kotlin.jvm.internal.r.c(function0);
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.f.class, 10, 1000L, function2, function0, function1).i();
    }

    public final synchronized void o(final byte b2, Function0<kotlin.v> function0) {
        Function0<kotlin.v> function1 = new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager$setCarModel$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                McCommandManager.f5380a.i(b2);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        };
        kotlin.jvm.internal.r.c(function0);
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.j.class, 5, BaseActivity.INTERVAL, function1, function0, null).i();
    }
}
