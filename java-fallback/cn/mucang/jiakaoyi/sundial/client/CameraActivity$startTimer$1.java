package cn.mucang.jiakaoyi.sundial.client;

import android.media.SoundPool;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.sundial.client.CameraActivity$startTimer$1", f = "CameraActivity.kt", l = {123, 129}, m = "invokeSuspend")
final class CameraActivity$startTimer$1 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
    final /* synthetic */ int $limit;
    final /* synthetic */ Ref$IntRef $time;
    int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$startTimer$1(CameraActivity r1, int r2, Ref$IntRef r3, kotlin.coroutines.c<? super CameraActivity$startTimer$1> r4) {
        this.this$0 = r1;
        this.$limit = r2;
        this.$time = r3;
        super(2, r4);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r5, kotlin.coroutines.c<?> r6) {
        CameraActivity$startTimer$1 r0 = new CameraActivity$startTimer$1(this.this$0, this.$limit, this.$time, r6);
        r0.L$0 = r5;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((CameraActivity$startTimer$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0077 -> B:20:0x007a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r14) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        kotlin.k.b(r14);
        CameraActivity$startTimer$1 r15 = this;
    L33:
        FrameCallback r16 = CameraActivity.j(r15.this$0);
        if (r16 == null) goto L36;
        r16.g();
    L39:
        return v.f15822a;
    L36:
        r.u("frameCallback");
        throw null;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        int r2 = this.I$0;
        i0 r5 = (i0) this.L$0;
        kotlin.k.b(r14);
        r15 = this;
    L20:
        Ref$IntRef r6 = r15.$time;
        int r7 = r6.element + 1;
        r6.element = r7;
        if (r7 != r15.$limit) goto L12;
        r15.this$0.g().tvTimer.setText("");
        SoundPool r8 = CameraActivity.k(r15.this$0);
        if (r8 == null) goto L26;
        kotlin.coroutines.jvm.internal.a.d(r8.play(CameraActivity.l(r15.this$0), 1.0f, 1.0f, 1, 0, 1.0f));
    L26:
        SoundPool r4 = CameraActivity.k(r15.this$0);
        if (r4 == null) goto L30;
        r4.stop(r2);
    L30:
        r15.L$0 = null;
        r15.label = 2;
        if (s0.a(500, r15) != r0) goto L33;
        return r0;
    L12:
        if (j0.g(r5) == false) goto L39;
        SoundPool r9 = CameraActivity.k(r15.this$0);
        if (r9 != null) goto L16;
        r2 = 0;
    L17:
        r15.this$0.g().tvTimer.setText(String.valueOf(r15.$limit - r15.$time.element));
        r15.L$0 = r5;
        r15.I$0 = r2;
        r15.label = 1;
        if (s0.a(1000, r15) != r0) goto L20;
        return r0;
    L16:
        r2 = r9.play(CameraActivity.m(r15.this$0), 1.0f, 1.0f, 1, 0, 1.0f);
        goto L17
    L10:
        kotlin.k.b(r14);
        r5 = (i0) this.L$0;
        r15 = this;
        goto L12
    }
}
