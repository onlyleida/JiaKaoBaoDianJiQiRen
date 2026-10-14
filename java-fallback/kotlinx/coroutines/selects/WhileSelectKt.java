package kotlinx.coroutines.selects;

import kotlin.jvm.b.l;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class WhileSelectKt {
    public static final Object a(l<? super a<? super Boolean>, v> r4, kotlin.coroutines.c<? super v> r5) {
        if ((r5 instanceof WhileSelectKt$whileSelect$1) == false) goto L7;
        WhileSelectKt$whileSelect$1 r0 = (WhileSelectKt$whileSelect$1) r5;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r6 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L14;
        if (r3 != 1) goto L13;
        r4 = (l) r0.L$0;
        k.b(r6);
    L26:
        if (((Boolean) r6).booleanValue() == false) goto L29;
    L15:
        r0.L$0 = r4;
        r0.label = 1;
        b r7 = new b(r0);
        r4.invoke(r7);     // Catch: Throwable -> L18
    L20:
        r6 = r7.U();
        if (r6 != kotlin.coroutines.intrinsics.a.d()) goto L23;
        kotlin.coroutines.jvm.internal.f.c(r0);
    L23:
        if (r6 != r2) goto L26;
        return r2;
    L32:
        if (r6 != r2) goto L26;
    L18:
        th = move-exception;
        r7.V(th);
        goto L20
    L29:
        return v.f15822a;
    L13:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L14:
        k.b(r6);
    L7:
        r0 = new WhileSelectKt$whileSelect$1(r5);
        goto L8
    }
}
