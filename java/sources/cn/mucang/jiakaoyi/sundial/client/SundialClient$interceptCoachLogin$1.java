package cn.mucang.jiakaoyi.sundial.client;

import android.app.Activity;
import android.content.Intent;
import cn.mucang.sundial.library.Sundial;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptCoachLogin$1", f = "SundialClient.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_AutoAssist_Response}, m = "invokeSuspend")
final class SundialClient$interceptCoachLogin$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Function0<v> $next;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SundialClient$interceptCoachLogin$1(Activity activity, Function0<v> function0, Continuation<? super SundialClient$interceptCoachLogin$1> continuation) {
        super(2, continuation);
        this.$activity = activity;
        this.$next = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SundialClient$interceptCoachLogin$1(this.$activity, this.$next, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SundialClient$interceptCoachLogin$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            SundialClient$interceptCoachLogin$1$needCoachLogin$1 sundialClient$interceptCoachLogin$1$needCoachLogin$1 = new SundialClient$interceptCoachLogin$1$needCoachLogin$1(null);
            this.label = 1;
            obj = kotlinx.coroutines.f.c(coroutineDispatcherB, sundialClient$interceptCoachLogin$1$needCoachLogin$1, this);
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
            Activity activity = this.$activity;
            final Function0<v> function0 = this.$next;
            Sundial.startCoachLogin(activity, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.sundial.client.h
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i2, int i3, Intent intent) {
                    function0.invoke();
                }
            });
        } else {
            this.$next.invoke();
        }
        return v.f15822a;
    }
}
