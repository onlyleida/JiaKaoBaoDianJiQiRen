package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.f0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.g0;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J \u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0007J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0007J(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0007J,\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00142\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007J\"\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007J*\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00172\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007J\u0018\u0010\u0018\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u0019\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0018\u0010\u001e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bH\u0007J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J*\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%2\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;", "", "()V", "advancedBrakeCommand", "", "onSuccess", "Lkotlin/Function0;", "brake", "appReason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "hardwareReason", "", "brakeCommand", "d", "reason", "brakeWithStrokeCommand", "brakeDis", "clutchDis", "controlSafeModule", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "", "needToast", "flameOut", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;", "forceBrakeCommand", "patchSetSafeCoefficient", "coefficients", "", SocialConstants.PARAM_APP_DESC, "", "removeBrake", "setBeltBrake", "setDoorBrake", "setSpeedCheck", "singleConfigCommand", SpeechConstant.ISV_CMD, "value", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeCommandManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SafeCommandManager f7621a = new SafeCommandManager();

    private SafeCommandManager() {
    }

    public static final synchronized void a(final Function0<kotlin.v> function0) {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.a.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, SafeCommandManager$advancedBrakeCommand$1.INSTANCE, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$advancedBrakeCommand$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.core.utils.u.h("高级解除刹车超时");
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发高级解除刹车超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.a, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$advancedBrakeCommand$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.a it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.core.utils.u.h("高级解除刹车失败");
                    cn.mucang.android.jiakaoyi.framework.log.f.d("下发高级解除刹车失败");
                    return;
                }
                Function0<kotlin.v> function1 = function0;
                if (function1 != null) {
                    function1.invoke();
                }
                cn.mucang.android.core.utils.u.h("高级解除刹车成功");
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发高级解除刹车成功");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.a aVar) {
                invoke2(aVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final synchronized void b(BrakeModel appReason, byte b) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        c(appReason, (byte) 1, b);
    }

    public static final synchronized void c(final BrakeModel appReason, final byte b, final byte b2) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        final String str = b == 1 ? "刹车" : "解刹";
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.g.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new SafeCommandManager$brakeCommand$1(str, b), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$brakeCommand$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, "超时"));
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发" + str + "超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.g, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$brakeCommand$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.g it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_FAILED));
                    cn.mucang.android.jiakaoyi.framework.log.f.d("下发" + str + ResultCode.MSG_FAILED);
                    return;
                }
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_SUCCESS));
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发" + str + ResultCode.MSG_SUCCESS);
                if (b == 0) {
                    x.c(b2);
                } else {
                    x.d(appReason, b2);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.g gVar) {
                invoke2(gVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final synchronized void d(BrakeModel appReason, byte b, byte b2) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        e(appReason, b, b2, b2);
    }

    public static final synchronized void e(final BrakeModel appReason, final byte b, final byte b2, byte b3) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        final String str = b2 == 0 ? "解除刹车" : "刹车";
        new MessageSender(g0.class, 1, 1000L, new SafeCommandManager$brakeWithStrokeCommand$1(str, b2, b3, b), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$brakeWithStrokeCommand$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (appReason.getReason() != BrakeReason.TeachBrake) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, "超时"));
                }
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发带行程" + str + "超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<g0, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$brakeWithStrokeCommand$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(g0 it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    if (appReason.getReason() != BrakeReason.TeachBrake) {
                        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_FAILED));
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.d("下发带行程" + str + ResultCode.MSG_FAILED);
                    return;
                }
                if (appReason.getReason() != BrakeReason.TeachBrake) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_SUCCESS));
                }
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发带行程" + str + ResultCode.MSG_SUCCESS);
                if (b2 == 0) {
                    x.c(b);
                } else {
                    x.d(appReason, b);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(g0 g0Var) {
                invoke2(g0Var);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final synchronized void f(boolean z, final boolean z2, final Function0<kotlin.v> function0) {
        final String strM = kotlin.jvm.internal.r.m(z ? "打开" : "关闭", "安全模块");
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.k.class, 1, 1000L, new SafeCommandManager$controlSafeModule$1(strM, z), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$controlSafeModule$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (z2) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, "超时"));
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + "超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.k, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$controlSafeModule$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.k it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    if (z2) {
                        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_FAILED));
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_FAILED);
                    return;
                }
                Function0<kotlin.v> function1 = function0;
                if (function1 != null) {
                    function1.invoke();
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_SUCCESS);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.k kVar) {
                invoke2(kVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static /* synthetic */ void g(boolean z, boolean z2, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        f(z, z2, function0);
    }

    public static final synchronized void h(byte b, FlameOutReason reason, final Function0<kotlin.v> function0) {
        kotlin.jvm.internal.r.e(reason, "reason");
        final String str = (b == 1 || b == 2) ? "熄火" : "解除熄火";
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.p.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new SafeCommandManager$flameOut$1(str, reason, b), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$flameOut$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + str + "超时");
                cn.mucang.android.core.utils.u.h("下发" + str + "超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.p, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$flameOut$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.p it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_FAILED));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + str + ResultCode.MSG_FAILED);
                    return;
                }
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(str, ResultCode.MSG_SUCCESS));
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + str + ResultCode.MSG_SUCCESS);
                Function0<kotlin.v> function1 = function0;
                if (function1 == null) {
                    return;
                }
                function1.invoke();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.p pVar) {
                invoke2(pVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final synchronized void i(byte b, Function0<kotlin.v> function0) {
        h(b, FlameOutReason.NONE, function0);
    }

    public static /* synthetic */ void j(byte b, FlameOutReason flameOutReason, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        h(b, flameOutReason, function0);
    }

    public static /* synthetic */ void k(byte b, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        i(b, function0);
    }

    public static final synchronized void l(final Function0<kotlin.v> function0) {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.a.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, SafeCommandManager$forceBrakeCommand$1.INSTANCE, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$forceBrakeCommand$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.core.utils.u.h("强制解除刹车超时");
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发强制解除刹车超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.a, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$forceBrakeCommand$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.a it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (!it.f5428a) {
                    cn.mucang.android.core.utils.u.h("强制解除刹车失败");
                    cn.mucang.android.jiakaoyi.framework.log.f.d("下发强制解除刹车失败");
                    return;
                }
                Function0<kotlin.v> function1 = function0;
                if (function1 != null) {
                    function1.invoke();
                }
                cn.mucang.android.core.utils.u.h("强制解除刹车成功");
                cn.mucang.android.jiakaoyi.framework.log.f.d("下发强制解除刹车成功");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.a aVar) {
                invoke2(aVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public static final synchronized void m(int[] iArr, final String desc) {
        kotlin.jvm.internal.r.e(desc, "desc");
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                new MessageSender(f0.class, 1, 1000L, new SafeCommandManager$patchSetSafeCoefficient$1(desc, iArr), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$patchSetSafeCoefficient$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(desc, " : 安全参数设置超时"));
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(desc, " :下发安全参数超时"));
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }
                }, new Function1<f0, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$patchSetSafeCoefficient$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(f0 it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        if (it.f5428a) {
                            cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(desc, " : 安全参数设置成功"));
                            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(desc, " :下发安全参数成功"));
                        } else {
                            cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(desc, " : 安全参数设置失败"));
                            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m(desc, " :下发安全参数失败"));
                        }
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(f0 f0Var) {
                        invoke2(f0Var);
                        return kotlin.v.f15822a;
                    }
                }).i();
            }
        }
    }

    public static final synchronized void n(BrakeModel appReason, byte b) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        c(appReason, (byte) 0, b);
    }

    public static final synchronized void r(final byte b, int i, final Function0<kotlin.v> function0) {
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.b0.class, 3, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new SafeCommandManager$singleConfigCommand$1(b, i), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$singleConfigCommand$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (b != 2) {
                    cn.mucang.android.core.utils.u.h("设置超时");
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发设置参数超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.b0, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$singleConfigCommand$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.b0 it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (it.f5428a) {
                    Function0<kotlin.v> function1 = function0;
                    if (function1 != null) {
                        function1.invoke();
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发设置参数成功");
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发设置参数失败");
                if (b != 2) {
                    cn.mucang.android.core.utils.u.h("设置失败");
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.b0 b0Var) {
                invoke2(b0Var);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public final synchronized void o(boolean z) {
        final String strM = kotlin.jvm.internal.r.m(z ? "开启" : "关闭", "安全带检测");
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.v.class, 1, 1000L, new SafeCommandManager$setBeltBrake$1(strM, z), new SafeCommandManager$setBeltBrake$2(strM), new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.v, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$setBeltBrake$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.v it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (it.f5428a) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_SUCCESS));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_SUCCESS);
                    return;
                }
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_FAILED));
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_FAILED);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.v vVar) {
                invoke2(vVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public final synchronized void p(boolean z) {
        final String strM = kotlin.jvm.internal.r.m(z ? "开启" : "关闭", "车门检测");
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.w.class, 1, 1000L, new SafeCommandManager$setDoorBrake$1(strM, z), new SafeCommandManager$setDoorBrake$2(strM), new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.w, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$setDoorBrake$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.w it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (it.f5428a) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_SUCCESS));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_SUCCESS);
                    return;
                }
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_FAILED));
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_FAILED);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.w wVar) {
                invoke2(wVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }

    public final synchronized void q(boolean z) {
        final String strM = kotlin.jvm.internal.r.m(z ? "开启" : "关闭", "超速检测");
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.x.class, 1, 1000L, new SafeCommandManager$setSpeedCheck$1(strM, z), new SafeCommandManager$setSpeedCheck$2(strM), new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.x, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager$setSpeedCheck$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.x it) {
                kotlin.jvm.internal.r.e(it, "it");
                if (it.f5428a) {
                    cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_SUCCESS));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_SUCCESS);
                    return;
                }
                cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m(strM, ResultCode.MSG_FAILED));
                cn.mucang.android.jiakaoyi.framework.log.f.o("下发" + strM + ResultCode.MSG_FAILED);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.x xVar) {
                invoke2(xVar);
                return kotlin.v.f15822a;
            }
        }).i();
    }
}
