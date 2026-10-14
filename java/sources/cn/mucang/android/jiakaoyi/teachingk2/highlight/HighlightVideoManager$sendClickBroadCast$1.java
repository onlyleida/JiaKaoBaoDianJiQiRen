package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.graphics.Point;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager$sendClickBroadCast$1", f = "HighlightVideoManager.kt", l = {216, 218, 220, 222}, m = "invokeSuspend")
final class HighlightVideoManager$sendClickBroadCast$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Pair<Point, Point> $points;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    HighlightVideoManager$sendClickBroadCast$1(Pair<? extends Point, ? extends Point> pair, Continuation<? super HighlightVideoManager$sendClickBroadCast$1> continuation) {
        super(2, continuation);
        this.$points = pair;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new HighlightVideoManager$sendClickBroadCast$1(this.$points, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((HighlightVideoManager$sendClickBroadCast$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x00ab A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                kotlin.k.b(obj);
            } else if (i == 2) {
                kotlin.k.b(obj);
                HighlightVideoManager.f7136a.q(1, this.$points.getFirst().x, this.$points.getFirst().y);
                this.label = 3;
                if (s0.a(100L, this) == objD) {
                    return objD;
                }
                HighlightVideoManager.f7136a.q(0, this.$points.getSecond().x, this.$points.getSecond().y);
                this.label = 4;
                if (s0.a(32L, this) == objD) {
                    return objD;
                }
            } else if (i == 3) {
                kotlin.k.b(obj);
                HighlightVideoManager.f7136a.q(0, this.$points.getSecond().x, this.$points.getSecond().y);
                this.label = 4;
                if (s0.a(32L, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            HighlightVideoManager.f7136a.q(1, this.$points.getSecond().x, this.$points.getSecond().y);
            return v.f15822a;
        }
        kotlin.k.b(obj);
        this.label = 1;
        if (s0.a(500L, this) == objD) {
            return objD;
        }
        HighlightVideoManager.f7136a.q(0, this.$points.getFirst().x, this.$points.getFirst().y);
        this.label = 2;
        if (s0.a(32L, this) == objD) {
            return objD;
        }
        HighlightVideoManager.f7136a.q(1, this.$points.getFirst().x, this.$points.getFirst().y);
        this.label = 3;
        if (s0.a(100L, this) == objD) {
            return objD;
        }
        HighlightVideoManager.f7136a.q(0, this.$points.getSecond().x, this.$points.getSecond().y);
        this.label = 4;
        if (s0.a(32L, this) == objD) {
            return objD;
        }
        HighlightVideoManager.f7136a.q(1, this.$points.getSecond().x, this.$points.getSecond().y);
        return v.f15822a;
    }
}
