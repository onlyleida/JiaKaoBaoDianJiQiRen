package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public final class AwaitKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(Collection<? extends p0<? extends T>> collection, Continuation<? super List<? extends T>> continuation) throws Throwable {
        AwaitKt$awaitAll$2 awaitKt$awaitAll$2;
        if (continuation instanceof AwaitKt$awaitAll$2) {
            awaitKt$awaitAll$2 = (AwaitKt$awaitAll$2) continuation;
            int i = awaitKt$awaitAll$2.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                awaitKt$awaitAll$2.label = i - Integer.MIN_VALUE;
            } else {
                awaitKt$awaitAll$2 = new AwaitKt$awaitAll$2(continuation);
            }
        } else {
            awaitKt$awaitAll$2 = new AwaitKt$awaitAll$2(continuation);
        }
        Object objB = awaitKt$awaitAll$2.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = awaitKt$awaitAll$2.label;
        if (i2 == 0) {
            kotlin.k.b(objB);
            if (collection.isEmpty()) {
                return kotlin.collections.u.j();
            }
            Object[] array = collection.toArray(new p0[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            c cVar = new c((p0[]) array);
            awaitKt$awaitAll$2.L$0 = collection;
            awaitKt$awaitAll$2.label = 1;
            objB = cVar.b(awaitKt$awaitAll$2);
            if (objB == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(objB);
        }
        return (List) objB;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object b(p0<? extends T>[] p0VarArr, Continuation<? super List<? extends T>> continuation) throws Throwable {
        AwaitKt$awaitAll$1 awaitKt$awaitAll$1;
        if (continuation instanceof AwaitKt$awaitAll$1) {
            awaitKt$awaitAll$1 = (AwaitKt$awaitAll$1) continuation;
            int i = awaitKt$awaitAll$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                awaitKt$awaitAll$1.label = i - Integer.MIN_VALUE;
            } else {
                awaitKt$awaitAll$1 = new AwaitKt$awaitAll$1(continuation);
            }
        } else {
            awaitKt$awaitAll$1 = new AwaitKt$awaitAll$1(continuation);
        }
        Object objB = awaitKt$awaitAll$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = awaitKt$awaitAll$1.label;
        if (i2 == 0) {
            kotlin.k.b(objB);
            if (p0VarArr.length == 0) {
                return kotlin.collections.u.j();
            }
            c cVar = new c(p0VarArr);
            awaitKt$awaitAll$1.L$0 = p0VarArr;
            awaitKt$awaitAll$1.label = 1;
            objB = cVar.b(awaitKt$awaitAll$1);
            if (objB == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(objB);
        }
        return (List) objB;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(Collection<? extends t1> collection, Continuation<? super kotlin.v> continuation) throws Throwable {
        AwaitKt$joinAll$3 awaitKt$joinAll$3;
        Object obj;
        Iterable iterable;
        Iterator it;
        Iterable iterable2;
        if (continuation instanceof AwaitKt$joinAll$3) {
            awaitKt$joinAll$3 = (AwaitKt$joinAll$3) continuation;
            int i = awaitKt$joinAll$3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                awaitKt$joinAll$3.label = i - Integer.MIN_VALUE;
            } else {
                awaitKt$joinAll$3 = new AwaitKt$joinAll$3(continuation);
            }
        } else {
            awaitKt$joinAll$3 = new AwaitKt$joinAll$3(continuation);
        }
        Object obj2 = awaitKt$joinAll$3.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = awaitKt$joinAll$3.label;
        if (i2 == 0) {
            kotlin.k.b(obj2);
            obj = objD;
            iterable = collection;
            it = collection.iterator();
            iterable2 = iterable;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj3 = awaitKt$joinAll$3.L$3;
            it = (Iterator) awaitKt$joinAll$3.L$2;
            Iterable iterable3 = (Iterable) awaitKt$joinAll$3.L$1;
            Collection collection2 = (Collection) awaitKt$joinAll$3.L$0;
            kotlin.k.b(obj2);
            iterable2 = collection2;
            iterable = iterable3;
            obj = objD;
        }
        while (it.hasNext()) {
            Object next = it.next();
            t1 t1Var = (t1) next;
            awaitKt$joinAll$3.L$0 = iterable2;
            awaitKt$joinAll$3.L$1 = iterable;
            awaitKt$joinAll$3.L$2 = it;
            awaitKt$joinAll$3.L$3 = next;
            awaitKt$joinAll$3.L$4 = t1Var;
            awaitKt$joinAll$3.label = 1;
            if (t1Var.x(awaitKt$joinAll$3) == obj) {
                return obj;
            }
        }
        return kotlin.v.f15822a;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0075 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0073 -> B:19:0x0076). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object d(kotlinx.coroutines.t1[] r7, kotlin.coroutines.Continuation<? super kotlin.v> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.AwaitKt$joinAll$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = (kotlinx.coroutines.AwaitKt$joinAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = new kotlinx.coroutines.AwaitKt$joinAll$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L4f
            if (r2 != r3) goto L47
            java.lang.Object r7 = r0.L$4
            kotlinx.coroutines.t1 r7 = (kotlinx.coroutines.t1) r7
            java.lang.Object r7 = r0.L$3
            kotlinx.coroutines.t1 r7 = (kotlinx.coroutines.t1) r7
            int r7 = r0.I$1
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$2
            kotlinx.coroutines.t1[] r4 = (kotlinx.coroutines.t1[]) r4
            java.lang.Object r5 = r0.L$1
            kotlinx.coroutines.t1[] r5 = (kotlinx.coroutines.t1[]) r5
            java.lang.Object r6 = r0.L$0
            kotlinx.coroutines.t1[] r6 = (kotlinx.coroutines.t1[]) r6
            kotlin.k.b(r8)
            r8 = r4
            r4 = r1
            r1 = r5
            r5 = r2
            r2 = r0
            r0 = r6
            goto L76
        L47:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L4f:
            kotlin.k.b(r8)
            int r8 = r7.length
            r2 = 0
            r5 = r8
            r2 = r0
            r4 = r1
            r8 = r7
            r0 = r8
            r1 = r0
            r7 = 0
        L5b:
            if (r7 >= r5) goto L78
            r6 = r8[r7]
            r2.L$0 = r0
            r2.L$1 = r1
            r2.L$2 = r8
            r2.I$0 = r5
            r2.I$1 = r7
            r2.L$3 = r6
            r2.L$4 = r6
            r2.label = r3
            java.lang.Object r6 = r6.x(r2)
            if (r6 != r4) goto L76
            return r4
        L76:
            int r7 = r7 + r3
            goto L5b
        L78:
            kotlin.v r7 = kotlin.v.f15822a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.d(kotlinx.coroutines.t1[], kotlin.coroutines.c):java.lang.Object");
    }
}
