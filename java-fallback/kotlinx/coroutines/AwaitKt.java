package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class AwaitKt {
    public static final <T> Object a(Collection<? extends p0<? extends T>> r5, kotlin.coroutines.c<? super List<? extends T>> r6) {
        if ((r6 instanceof AwaitKt$awaitAll$2) == false) goto L7;
        AwaitKt$awaitAll$2 r0 = (AwaitKt$awaitAll$2) r6;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r7 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L14;
        if (r3 != 1) goto L13;
        Collection r8 = (Collection) r0.L$0;
        kotlin.k.b(r7);
    L21:
        return (List) r7;
    L13:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L14:
        kotlin.k.b(r7);
        if (r5.isEmpty() == true) goto L22;
        Object[] r4 = r5.toArray(new p0[0]);
        Objects.requireNonNull(r4, "null cannot be cast to non-null type kotlin.Array<T>");
        c r9 = new c((p0[]) r4);
        r0.L$0 = r5;
        r0.label = 1;
        r7 = r9.b(r0);
        if (r7 != r2) goto L21;
        return r2;
    L22:
        return kotlin.collections.s.j();
    L7:
        r0 = new AwaitKt$awaitAll$2(r6);
        goto L8
    }

    public static final <T> Object b(p0<? extends T>[] r4, kotlin.coroutines.c<? super List<? extends T>> r5) {
        if ((r5 instanceof AwaitKt$awaitAll$1) == false) goto L7;
        AwaitKt$awaitAll$1 r0 = (AwaitKt$awaitAll$1) r5;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r6 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L14;
        if (r3 != 1) goto L13;
        p0[] r7 = (p0[]) r0.L$0;
        kotlin.k.b(r6);
    L24:
        return (List) r6;
    L13:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L14:
        kotlin.k.b(r6);
        if (r4.length != 0) goto L17;
        boolean r8 = true;
    L18:
        if (r8 == true) goto L25;
        c r9 = new c(r4);
        r0.L$0 = r4;
        r0.label = 1;
        r6 = r9.b(r0);
        if (r6 != r2) goto L24;
        return r2;
    L25:
        return kotlin.collections.s.j();
    L17:
        r8 = false;
    L7:
        r0 = new AwaitKt$awaitAll$1(r5);
        goto L8
    }

    public static final Object c(Collection<? extends t1> r7, kotlin.coroutines.c<? super kotlin.v> r8) {
        if ((r8 instanceof AwaitKt$joinAll$3) == false) goto L7;
        AwaitKt$joinAll$3 r0 = (AwaitKt$joinAll$3) r8;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r9 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L14;
        if (r3 != 1) goto L13;
        t1 r10 = (t1) r0.L$4;
        Object r11 = r0.L$3;
        Iterator r12 = (Iterator) r0.L$2;
        Iterable r4 = (Iterable) r0.L$1;
        Collection r5 = (Collection) r0.L$0;
        kotlin.k.b(r9);
        Iterable r13 = r5;
        Iterable r6 = r4;
        Object r14 = r2;
    L16:
        if (r12.hasNext() == false) goto L21;
        Object r15 = r12.next();
        t1 r16 = (t1) r15;
        r0.L$0 = r13;
        r0.L$1 = r6;
        r0.L$2 = r12;
        r0.L$3 = r15;
        r0.L$4 = r16;
        r0.label = 1;
        if (r16.x(r0) != r14) goto L16;
        return r14;
    L21:
        return kotlin.v.f15822a;
    L13:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L14:
        kotlin.k.b(r9);
        r14 = r2;
        r6 = r7;
        r12 = r7.iterator();
        r13 = r6;
    L7:
        r0 = new AwaitKt$joinAll$3(r8);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0073 -> B:19:0x0076). Please report as a decompilation issue!!! */
    public static final Object d(t1[] r7, kotlin.coroutines.c<? super kotlin.v> r8) {
        if ((r8 instanceof AwaitKt$joinAll$1) == false) goto L7;
        AwaitKt$joinAll$1 r0 = (AwaitKt$joinAll$1) r8;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r9 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L14;
        if (r3 != 1) goto L13;
        t1 r10 = (t1) r0.L$4;
        t1 r11 = (t1) r0.L$3;
        int r12 = r0.I$1;
        int r4 = r0.I$0;
        t1[] r5 = (t1[]) r0.L$2;
        t1[] r6 = (t1[]) r0.L$1;
        t1[] r13 = (t1[]) r0.L$0;
        kotlin.k.b(r9);
        t1[] r14 = r5;
        Object r15 = r2;
        t1[] r16 = r6;
        int r17 = r4;
        AwaitKt$joinAll$1 r18 = r0;
        t1[] r19 = r13;
    L19:
        r12 = r12 + 1;
    L15:
        if (r12 >= r17) goto L21;
        t1 r20 = r14[r12];
        r18.L$0 = r19;
        r18.L$1 = r16;
        r18.L$2 = r14;
        r18.I$0 = r17;
        r18.I$1 = r12;
        r18.L$3 = r20;
        r18.L$4 = r20;
        r18.label = 1;
        if (r20.x(r18) != r15) goto L19;
        return r15;
    L21:
        return kotlin.v.f15822a;
    L13:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L14:
        kotlin.k.b(r9);
        r17 = r7.length;
        r18 = r0;
        r15 = r2;
        r14 = r7;
        r19 = r14;
        r16 = r19;
        r12 = 0;
    L7:
        r0 = new AwaitKt$joinAll$1(r8);
        goto L8
    }
}
