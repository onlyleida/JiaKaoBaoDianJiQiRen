package cn.mucang.jiakaoyi.sundial.client;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.sundial.library.Sundial;
import cn.mucang.sundial.library.SundialCallBack;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogout$1", f = "SundialClient.kt", l = {397}, m = "invokeSuspend")
final class SundialClient$interceptLogout$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Function0<v> $back;
    final /* synthetic */ Function0<v> $next;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogout$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogout$1$1", f = "SundialClient.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            return kotlin.coroutines.jvm.internal.a.a(Sundial.needStudentLogout());
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$2", "Lcn/mucang/sundial/library/SundialCallBack;", "onResult", "", "success", "", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements SundialCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0<v> f9127a;
        final /* synthetic */ Function0<v> b;

        a(Function0<v> function0, Function0<v> function1) {
            this.f9127a = function0;
            this.b = function1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(Function0 next) {
            r.e(next, "$next");
            next.invoke();
            TtsManager.r("签退成功", TtsGrade.SpecialVoice);
            u.h("签退成功");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(Function0 back) {
            r.e(back, "$back");
            back.invoke();
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            SundialClient.f9111a.A().setValue(Boolean.TRUE);
            if (success) {
                final Function0<v> function0 = this.f9127a;
                u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.client.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        SundialClient$interceptLogout$1.a.c(function0);
                    }
                });
            } else {
                final Function0<v> function1 = this.b;
                u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.client.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        SundialClient$interceptLogout$1.a.d(function1);
                    }
                });
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SundialClient$interceptLogout$1(Activity activity, Function0<v> function0, Function0<v> function1, Continuation<? super SundialClient$interceptLogout$1> continuation) {
        super(2, continuation);
        this.$activity = activity;
        this.$next = function0;
        this.$back = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SundialClient$interceptLogout$1(this.$activity, this.$next, this.$back, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SundialClient$interceptLogout$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
            this.label = 1;
            obj = kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this);
            if (obj == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            Sundial.startStudentLogout(this.$activity, "", new a(this.$next, this.$back));
        } else {
            SundialClient.f9111a.A().setValue(kotlin.coroutines.jvm.internal.a.a(true));
            this.$next.invoke();
        }
        return v.f15822a;
    }
}
