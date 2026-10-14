package androidx.core.transition;

import android.transition.Transition;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroid/transition/Transition;"}, k = 3, mv = {1, 5, 1}, xi = 48)
public final class TransitionKt$addListener$4 extends Lambda implements Function1<Transition, v> {
    public static final TransitionKt$addListener$4 INSTANCE = new TransitionKt$addListener$4();

    public TransitionKt$addListener$4() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(Transition transition) {
        invoke2(transition);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Transition it) {
        r.e(it, "it");
    }
}
