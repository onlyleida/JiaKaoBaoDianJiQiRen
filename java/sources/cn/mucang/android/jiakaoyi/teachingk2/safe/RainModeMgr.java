package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.jiakaoyi.uilib.socket.model.ConfigModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\nH\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;", "", "()V", "NORMAL", "", "rainModeV", "getRainModeV", "isRainMode", "", MenuOptions.REFRESH, "", "setRainMode", "value", "(Ljava/lang/Integer;)V", "setRainModeV", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RainModeMgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RainModeMgr f7620a = new RainModeMgr();
    private static int b = 100;

    static {
        LiveBus.d(ConfigModel.class).i(new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RainModeMgr.a((ConfigModel) obj);
            }
        });
    }

    private RainModeMgr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ConfigModel configModel) {
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = configModel.map.get(LocalConfig.RainMode.getCode());
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("收到监控中心雨天模式：", str));
            g(str == null ? null : Integer.valueOf(Integer.parseInt(str)));
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    public static final int c() {
        return b;
    }

    public static final boolean d() {
        return b < 100;
    }

    public static final void f() {
        LocalConfigManager.h(true, true, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr$refresh$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RainModeMgr.g(Integer.valueOf(LocalConfigManager.j(LocalConfig.RainMode, 100)));
            }
        });
    }

    public static final void g(final Integer num) {
        if (num == null) {
            return;
        }
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr$setRainMode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("雨天模式下发, value:", num));
                cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                vVar.c((byte) 6);
                vVar.c((byte) num.intValue());
                cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AutoAssist, vVar.b());
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr$setRainMode$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("雨天模式下发超时, value:", num));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.c, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr$setRainMode$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("雨天模式下发失败, value:", num));
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("雨天模式下发成功, value:", num));
                RainModeMgr rainModeMgr = RainModeMgr.f7620a;
                RainModeMgr.b = num.intValue();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.c cVar) {
                invoke2(cVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final void h(int i) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置雨天模式：", Integer.valueOf(i)));
    }
}
