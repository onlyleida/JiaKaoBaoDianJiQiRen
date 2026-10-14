package cn.mucang.android.jiakaoyi.speech.ui;

import android.animation.ValueAnimator;
import android.graphics.LinearGradient;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.speech.ui.ShiningTextView$dark$1", f = "ShiningTextView.kt", l = {57}, m = "invokeSuspend")
final class ShiningTextView$dark$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ ShiningTextView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShiningTextView$dark$1(ShiningTextView shiningTextView, Continuation<? super ShiningTextView$dark$1> continuation) {
        super(2, continuation);
        this.this$0 = shiningTextView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m30invokeSuspend$lambda0(ShiningTextView shiningTextView, ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        shiningTextView.i.setTranslate((shiningTextView.f5911e * fFloatValue) - 100.0f, BitmapDescriptorFactory.HUE_RED);
        LinearGradient linearGradient = shiningTextView.j;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(shiningTextView.i);
        }
        shiningTextView.f5914h.setShader(shiningTextView.j);
        shiningTextView.invalidate();
        if (fFloatValue == 1.0f) {
            shiningTextView.h();
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ShiningTextView$dark$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ShiningTextView$dark$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            this.label = 1;
            if (s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.setDuration(200L);
        final ShiningTextView shiningTextView = this.this$0;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.speech.ui.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShiningTextView$dark$1.m30invokeSuspend$lambda0(shiningTextView, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
        return v.f15822a;
    }
}
