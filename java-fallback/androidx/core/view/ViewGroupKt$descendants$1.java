package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.b.p;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.sequences.h;
import kotlin.sequences.j;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Landroid/view/View;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@d(c = "androidx.core.view.ViewGroupKt$descendants$1", f = "ViewGroup.kt", l = {97, 99}, m = "invokeSuspend")
final class ViewGroupKt$descendants$1 extends RestrictedSuspendLambda implements p<j<? super View>, c<? super v>, Object> {
    final /* synthetic */ ViewGroup $this_descendants;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    ViewGroupKt$descendants$1(ViewGroup r1, c<? super ViewGroupKt$descendants$1> r2) {
        this.$this_descendants = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<v> create(Object r3, c<?> r4) {
        ViewGroupKt$descendants$1 r0 = new ViewGroupKt$descendants$1(this.$this_descendants, r4);
        r0.L$0 = r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(j<? super View> r1, c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(j<? super View> r1, c<? super v> r2) {
        return ((ViewGroupKt$descendants$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0091 -> B:23:0x0093). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0099 -> B:25:0x009c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r11) {
        Object r0 = a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        int r2 = this.I$1;
        int r4 = this.I$0;
        ViewGroup r5 = (ViewGroup) this.L$1;
        j r6 = (j) this.L$0;
        k.b(r11);
        ViewGroupKt$descendants$1 r7 = this;
    L23:
        j r12 = r6;
        ViewGroupKt$descendants$1 r8 = r7;
        ViewGroup r9 = r5;
        int r10 = r2;
        ViewGroup r3 = r9;
    L25:
        if (r4 >= r10) goto L27;
    L13:
        int r13 = r4 + 1;
        View r14 = r3.getChildAt(r4);
        r.d(r14, "getChildAt(index)");
        r8.L$0 = r12;
        r8.L$1 = r3;
        r8.L$2 = r14;
        r8.I$0 = r13;
        r8.I$1 = r10;
        r8.label = 1;
        if (r12.e(r14, r8) != r0) goto L16;
        return r0;
    L16:
        ViewGroupKt$descendants$1 r15 = r8;
        ViewGroup r16 = r3;
        r2 = r10;
        View r17 = r14;
        r4 = r13;
        r7 = r15;
    L18:
        if ((r17 instanceof ViewGroup) == false) goto L24;
        h<View> r18 = ViewGroupKt.getDescendants((ViewGroup) r17);
        r7.L$0 = r12;
        r7.L$1 = r16;
        r7.L$2 = null;
        r7.I$0 = r4;
        r7.I$1 = r2;
        r7.label = 2;
        if (r12.g(r18, r7) != r0) goto L22;
        return r0;
    L22:
        r5 = r16;
        r6 = r12;
        goto L23
    L24:
        r10 = r2;
        r3 = r16;
        r8 = r7;
    L27:
        return v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        r2 = this.I$1;
        r4 = this.I$0;
        r17 = (View) this.L$2;
        r16 = (ViewGroup) this.L$1;
        j r19 = (j) this.L$0;
        k.b(r11);
        r12 = r19;
        r7 = this;
        goto L18
    L10:
        k.b(r11);
        r12 = (j) this.L$0;
        r3 = this.$this_descendants;
        r4 = 0;
        r10 = r3.getChildCount();
        if (r10 <= 0) goto L27;
        r8 = this;
        goto L13
    }
}
