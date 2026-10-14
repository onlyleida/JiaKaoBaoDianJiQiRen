package cn.mucang.jiakaoyi.uilib.login;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.uilib.login.ClassTimeManager$start$1", f = "ClassTimeManager.kt", l = {33}, m = "invokeSuspend")
final class ClassTimeManager$start$1 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
    final /* synthetic */ Ref$LongRef $remainTime;
    final /* synthetic */ n $timeOutCallback;
    private /* synthetic */ Object L$0;
    int label;

    ClassTimeManager$start$1(Ref$LongRef r1, n r2, kotlin.coroutines.c<? super ClassTimeManager$start$1> r3) {
        this.$remainTime = r1;
        this.$timeOutCallback = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ClassTimeManager$start$1 r0 = new ClassTimeManager$start$1(this.$remainTime, this.$timeOutCallback, r5);
        r0.L$0 = r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((ClassTimeManager$start$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006a -> B:22:0x006d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L7;
        i0 r2 = (i0) this.L$0;
        kotlin.k.b(r12);
        ClassTimeManager$start$1 r13 = this;
    L22:
        r13.$remainTime.element -= (long) 1000;
    L10:
        if (j0.g(r2) == false) goto L24;
        ClassTimeManager.ClassTimeTip[] r3 = ClassTimeManager.ClassTimeTip.values();
        Ref$LongRef r4 = r13.$remainTime;
        n r5 = r13.$timeOutCallback;
        int r6 = r3.length;
        int r7 = 0;
    L12:
        if (r7 >= r6) goto L19;
        ClassTimeManager.ClassTimeTip r8 = r3[r7];
        if (ClassTimeManager.a().get(r8.ordinal()) == true) goto L18;
        if (r8.nearTime(r4.element) == false) goto L18;
        ClassTimeManager.a().put(r8.ordinal(), true);
        r5.a(r8);
    L18:
        r7 = r7 + 1;
        goto L12
    L19:
        r13.L$0 = r2;
        r13.label = 1;
        if (s0.a(1000, r13) != r0) goto L22;
        return r0;
    L24:
        return v.f15822a;
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r12);
        r2 = (i0) this.L$0;
        r13 = this;
        goto L10
    }
}
