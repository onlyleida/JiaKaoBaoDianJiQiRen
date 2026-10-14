package cn.mucang.android.jiakaoyi.teachingk2.safe;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.ManagerPasswordDialog;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.FloatWindowManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.SafeCountDown;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.FenceBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.HandbrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.HouLiuBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpecialAreaManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpeedBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007J&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bH\u0007J\b\u0010\f\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;", "", "()V", "job", "Lkotlinx/coroutines/Job;", "closeSafeWait30s", "", "handlerSafeModule", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "", "onSuccess", "Lkotlin/Function1;", "init", "showAdvanceBrakeDialog", "activity", "Landroid/app/Activity;", "showCloseBrakeDialog", "showForceBrakeDialog", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class Safer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Safer f7622a = new Safer();
    private static t1 b;

    private Safer() {
    }

    public static final void c() {
        SafeCommandManager.a(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$closeSafeWait30s$1

            /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$closeSafeWait30s$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
            @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$closeSafeWait30s$1$1", f = "Safer.kt", l = {60}, m = "invokeSuspend")
            static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
                    return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntIterator it;
                    i0 i0Var;
                    Object objD = kotlin.coroutines.intrinsics.b.d();
                    int i = this.label;
                    if (i == 0) {
                        kotlin.k.b(obj);
                        i0 i0Var2 = (i0) this.L$0;
                        it = kotlin.ranges.f.i(30, 0).iterator();
                        i0Var = i0Var2;
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (IntIterator) this.L$1;
                        i0Var = (i0) this.L$0;
                        kotlin.k.b(obj);
                    }
                    while (j0.g(i0Var) && it.hasNext()) {
                        LiveBus.d(SafeCountDown.class).l(new SafeCountDown(it.e(), false));
                        this.L$0 = i0Var;
                        this.L$1 = it;
                        this.label = 1;
                        if (s0.a(1000L, this) == objD) {
                            return objD;
                        }
                    }
                    if (SafeLocalParamManager.a()) {
                        cn.mucang.jiakaoyi.uilib.socket.u.t(true);
                    }
                    Safer safer = Safer.f7622a;
                    Safer.b = null;
                    FloatWindowManager.f();
                    return kotlin.v.f15822a;
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                t1 t1Var;
                if (Safer.b != null && (t1Var = Safer.b) != null) {
                    t1.a.a(t1Var, null, 1, null);
                }
                cn.mucang.jiakaoyi.uilib.socket.u.t(false);
                Activity activityI = MucangConfig.i();
                kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
                FloatWindowManager.e(activityI);
                Safer safer = Safer.f7622a;
                Safer.b = kotlinx.coroutines.g.b(l1.f16051a, w0.c(), null, new AnonymousClass1(null), 2, null);
            }
        });
    }

    public static final void d(final boolean z, final Function1<? super Boolean, kotlin.v> function1) {
        SafeCommandManager.g(z, false, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$handlerSafeModule$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                SafeLocalParamManager.b(z);
                if (z) {
                    FloatWindowManager.f();
                } else {
                    Activity activityI = MucangConfig.i();
                    kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
                    FloatWindowManager.e(activityI);
                }
                Function1<Boolean, kotlin.v> function2 = function1;
                if (function2 == null) {
                    return;
                }
                function2.invoke(Boolean.valueOf(z));
            }
        }, 2, null);
    }

    public static final synchronized void e() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("初始化安全");
        SpeedBrakeManager.b();
        ModuleStatusMonitor.b();
        FenceBrakeManager.c();
        SpecialAreaManager.e();
        HouLiuBrakeManager.b();
        RadarSignalMonitor.f7902a.e();
        HandbrakeManager.f7760a.b();
    }

    public static final void f(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        String strA = k0.a(R.string.teachbase_close_safe_30s);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_close_safe_30s)");
        ManagerPasswordDialog managerPasswordDialog = new ManagerPasswordDialog(activity, strA, k0.a(R.string.teachbase_close_safe_30s_hint));
        managerPasswordDialog.k(new Function1<XyUserModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$showAdvanceBrakeDialog$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(XyUserModel xyUserModel) {
                invoke2(xyUserModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(XyUserModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                Safer.c();
            }
        });
        managerPasswordDialog.show();
    }

    public static final void g(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        String strA = k0.a(R.string.teachbase_close_safe);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_close_safe)");
        ManagerPasswordDialog managerPasswordDialog = new ManagerPasswordDialog(activity, strA, k0.a(R.string.teachbase_dialog_close_safe_hint));
        managerPasswordDialog.k(new Function1<XyUserModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$showCloseBrakeDialog$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(XyUserModel xyUserModel) {
                invoke2(xyUserModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(XyUserModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                Safer.d(false, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$showCloseBrakeDialog$1$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return kotlin.v.f15822a;
                    }

                    public final void invoke(boolean z) {
                        cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_safe_system_close));
                    }
                });
            }
        });
        managerPasswordDialog.show();
    }

    public static final void h(Activity activity) {
        kotlin.jvm.internal.r.e(activity, "activity");
        String strA = k0.a(R.string.teachbase_disable_safe);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_disable_safe)");
        ManagerPasswordDialog managerPasswordDialog = new ManagerPasswordDialog(activity, strA, k0.a(R.string.teachbase_disable_safe_hint));
        managerPasswordDialog.k(new Function1<XyUserModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$showForceBrakeDialog$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(XyUserModel xyUserModel) {
                invoke2(xyUserModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(XyUserModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                SafeCommandManager.l(null);
            }
        });
        managerPasswordDialog.show();
    }
}
