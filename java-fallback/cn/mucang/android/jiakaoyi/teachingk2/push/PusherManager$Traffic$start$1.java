package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.s0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$Traffic$start$1", f = "PusherManager.kt", l = {Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE}, m = "invokeSuspend")
final class PusherManager$Traffic$start$1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PusherManager.Traffic this$0;

    PusherManager$Traffic$start$1(PusherManager.Traffic r1, kotlin.coroutines.c<? super PusherManager$Traffic$start$1> r2) {
        this.this$0 = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
        PusherManager$Traffic$start$1 r0 = new PusherManager$Traffic$start$1(this.this$0, r4);
        r0.L$0 = r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((PusherManager$Traffic$start$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0035 -> B:14:0x0038). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r6) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L7;
        kotlinx.coroutines.i0 r2 = (kotlinx.coroutines.i0) this.L$0;
        kotlin.k.b(r6);
        PusherManager$Traffic$start$1 r7 = this;
    L14:
        PusherManager.Traffic.m(r7.this$0);
    L10:
        if (kotlinx.coroutines.j0.g(r2) == false) goto L16;
        r7.L$0 = r2;
        r7.label = 1;
        if (s0.a(1000, r7) != r0) goto L14;
        return r0;
    L16:
        return kotlin.v.f15822a;
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r6);
        r2 = (kotlinx.coroutines.i0) this.L$0;
        r7 = this;
        goto L10
    }
}
