package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__ChannelsKt {
    public static final <T> Object a(d<? super T> r1, kotlinx.coroutines.channels.p<? extends T> r2, kotlin.coroutines.c<? super kotlin.v> r3) {
        Object r4 = b(r1, r2, true, r3);
        if (r4 != kotlin.coroutines.intrinsics.a.d()) goto L6;
        return r4;
    L6:
        return kotlin.v.f15822a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object, kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r10v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.channels.p<? extends T>] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object, kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a7 -> B:14:0x003b). Please report as a decompilation issue!!! */
    static final /* synthetic */ <T> Object b(d<? super T> r8, kotlinx.coroutines.channels.p<? extends T> r9, boolean r10, kotlin.coroutines.c<? super kotlin.v> r11) {
        if ((r11 instanceof FlowKt__ChannelsKt$emitAllImpl$1) == false) goto L7;
        FlowKt__ChannelsKt$emitAllImpl$1 r0 = (FlowKt__ChannelsKt$emitAllImpl$1) r11;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r12 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L22;
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r13 = r0.L$3;
        Throwable r14 = (Throwable) r0.L$2;
        boolean r15 = (kotlinx.coroutines.channels.p<? extends T>) r0.Z$0;
        kotlinx.coroutines.channels.p r16 = (kotlinx.coroutines.channels.p) r0.L$1;
        d<? super T> r4 = (d) r0.L$0;
        kotlin.k.b(r12);     // Catch: Throwable -> L20
        ?? r17 = r15;
        ?? r18 = r16;
    L14:
        Throwable r19 = r14;
        r8 = r4;
        ?? r6 = r18;
        ?? r110 = r17;
        ?? r20 = (kotlinx.coroutines.channels.p<? extends T>) r6;
    L46:
        r0.L$0 = r8;     // Catch: Throwable -> L39
        r0.L$1 = r20;     // Catch: Throwable -> L39
        r0.Z$0 = r110;     // Catch: Throwable -> L39
        r0.L$2 = r19;     // Catch: Throwable -> L39
        r0.L$3 = r8;     // Catch: Throwable -> L39
        r0.label = 1;     // Catch: Throwable -> L39
        Object r5 = r20.v(r0);     // Catch: Throwable -> L39
        if (r5 != r2) goto L26;
        return r2;
    L26:
        r4 = r8;
        r14 = r19;
        r12 = r5;
        ?? r7 = r110;
        r10 = r20;
        r9 = (kotlinx.coroutines.channels.p<? extends T>) (r7 == true ? 1 : 0 ? 1 : 0);
    L28:
        if (kotlinx.coroutines.channels.x.g(r12) == false) goto L36;
        Throwable r111 = kotlinx.coroutines.channels.x.d(r12);     // Catch: Throwable -> L20
        if (r111 != null) goto L35;
        if (r9 == 0) goto L34;
        kotlinx.coroutines.channels.i.j(r10, r14);
    L34:
        return kotlin.v.f15822a;
    L35:
        throw r111;     // Catch: Throwable -> L20
    L36:
        kotlinx.coroutines.channels.x.e(r12);     // Catch: Throwable -> L20
        r0.L$0 = r4;     // Catch: Throwable -> L20
        r0.L$1 = r10;     // Catch: Throwable -> L20
        r0.Z$0 = (boolean) r9;     // Catch: Throwable -> L20
        r0.L$2 = r14;     // Catch: Throwable -> L20
        r0.L$3 = r12;     // Catch: Throwable -> L20
        r0.label = 2;     // Catch: Throwable -> L20
        r17 = r9;
        r18 = r10;
        if (r4.emit(r12, r0) != r2) goto L14;
        return r2;
    L39:
        th = th;
        ?? r21 = r110;
        r10 = r20;
        r9 = r21 == true ? 1 : 0;
    L48:
        throw th;     // Catch: Throwable -> L42
    L42:
        th = move-exception;
        if (r9 == 0) goto L45;
        kotlinx.coroutines.channels.i.j(r10, th);
    L45:
        throw th;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        d r22 = (d) r0.L$3;
        r14 = (Throwable) r0.L$2;
        boolean r23 = (kotlinx.coroutines.channels.p<? extends T>) r0.Z$0;
        kotlinx.coroutines.channels.p r112 = (kotlinx.coroutines.channels.p) r0.L$1;
        r4 = (d) r0.L$0;
        kotlin.k.b(r12);     // Catch: Throwable -> L20
        r9 = r23;
        r10 = r112;
        goto L28
    L22:
        kotlin.k.b(r12);
        r19 = null;
        r20 = r9;
        r110 = r10;
    L20:
        th = th;
    L7:
        r0 = new FlowKt__ChannelsKt$emitAllImpl$1(r11);
        goto L8
    }

    public static final <T> c<T> c(kotlinx.coroutines.channels.p<? extends T> r9) {
        return new a(r9, false, null, 0, null, 28, null);
    }
}
