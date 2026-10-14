package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.b;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$errObserver$1$1", f = "HelpTeachPage.kt", l = {162}, m = "invokeSuspend")
final class HelpTeachPage$errObserver$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ b $it;
    int label;
    final /* synthetic */ HelpTeachPage this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HelpTeachPage$errObserver$1$1(b bVar, HelpTeachPage helpTeachPage, Continuation<? super HelpTeachPage$errObserver$1$1> continuation) {
        super(2, continuation);
        this.$it = bVar;
        this.this$0 = helpTeachPage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new HelpTeachPage$errObserver$1$1(this.$it, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((HelpTeachPage$errObserver$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String reason;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            this.label = 1;
            if (s0.a(200L, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
        }
        b bVar = this.$it;
        if (bVar.b == 3) {
            reason = BrakeGlobalMonitor.a().getReason() != BrakeReason.None ? BrakeGlobalMonitor.a().getReason().getTitle() : k0.a(R.string.teachbase_not_obstacle_stop);
        } else {
            reason = bVar.a();
        }
        HelpTeachPage.HelpTeachAssistant helpTeachAssistant = this.this$0.f8551d;
        r.d(reason, "reason");
        helpTeachAssistant.y(reason, false);
        return v.f15822a;
    }
}
