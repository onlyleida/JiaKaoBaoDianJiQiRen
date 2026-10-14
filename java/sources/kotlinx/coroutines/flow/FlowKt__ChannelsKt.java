package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__ChannelsKt {
    public static final <T> Object a(d<? super T> dVar, kotlinx.coroutines.channels.p<? extends T> pVar, Continuation<? super kotlin.v> continuation) throws Throwable {
        Object objB = b(dVar, pVar, true, continuation);
        return objB == kotlin.coroutines.intrinsics.b.d() ? objB : kotlin.v.f15822a;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0077 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    /* JADX WARN: Code duplicated, block: B:29:0x0085 A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #2 {all -> 0x005f, blocks: (B:13:0x0038, B:27:0x007f, B:29:0x0085, B:35:0x0093, B:36:0x0094, B:18:0x005b), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    /* JADX WARN: Code duplicated, block: B:35:0x0093 A[Catch: all -> 0x005f, TRY_ENTER, TryCatch #2 {all -> 0x005f, blocks: (B:13:0x0038, B:27:0x007f, B:29:0x0085, B:35:0x0093, B:36:0x0094, B:18:0x005b), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0094 A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #2 {all -> 0x005f, blocks: (B:13:0x0038, B:27:0x007f, B:29:0x0085, B:35:0x0093, B:36:0x0094, B:18:0x005b), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static final /* synthetic */ <T> java.lang.Object b(kotlinx.coroutines.flow.d<? super T> r8, kotlinx.coroutines.channels.p<? extends T> r9, boolean r10, kotlin.coroutines.Continuation<? super kotlin.v> r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r11
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L61
            if (r2 == r4) goto L49
            if (r2 != r3) goto L41
            java.lang.Object r8 = r0.L$3
            java.lang.Object r8 = r0.L$2
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            boolean r9 = r0.Z$0
            java.lang.Object r10 = r0.L$1
            kotlinx.coroutines.channels.p r10 = (kotlinx.coroutines.channels.p) r10
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.d r2 = (kotlinx.coroutines.flow.d) r2
            kotlin.k.b(r11)     // Catch: java.lang.Throwable -> L5f
        L3b:
            r11 = r8
            r8 = r2
            r6 = r10
            r10 = r9
            r9 = r6
            goto L65
        L41:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L49:
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
            java.lang.Object r8 = r0.L$2
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            boolean r9 = r0.Z$0
            java.lang.Object r10 = r0.L$1
            kotlinx.coroutines.channels.p r10 = (kotlinx.coroutines.channels.p) r10
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.d r2 = (kotlinx.coroutines.flow.d) r2
            kotlin.k.b(r11)     // Catch: java.lang.Throwable -> L5f
            goto L7f
        L5f:
            r8 = move-exception
            goto Lae
        L61:
            kotlin.k.b(r11)
            r11 = 0
        L65:
            r0.L$0 = r8     // Catch: java.lang.Throwable -> Laa
            r0.L$1 = r9     // Catch: java.lang.Throwable -> Laa
            r0.Z$0 = r10     // Catch: java.lang.Throwable -> Laa
            r0.L$2 = r11     // Catch: java.lang.Throwable -> Laa
            r0.L$3 = r8     // Catch: java.lang.Throwable -> Laa
            r0.label = r4     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r2 = r9.v(r0)     // Catch: java.lang.Throwable -> Laa
            if (r2 != r1) goto L78
            return r1
        L78:
            r6 = r2
            r2 = r8
            r8 = r11
            r11 = r6
            r7 = r10
            r10 = r9
            r9 = r7
        L7f:
            boolean r5 = kotlinx.coroutines.channels.x.g(r11)     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L94
            java.lang.Throwable r11 = kotlinx.coroutines.channels.x.d(r11)     // Catch: java.lang.Throwable -> L5f
            if (r11 != 0) goto L93
            if (r9 == 0) goto L90
            kotlinx.coroutines.channels.i.j(r10, r8)
        L90:
            kotlin.v r8 = kotlin.v.f15822a
            return r8
        L93:
            throw r11     // Catch: java.lang.Throwable -> L5f
        L94:
            kotlinx.coroutines.channels.x.e(r11)     // Catch: java.lang.Throwable -> L5f
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L5f
            r0.L$1 = r10     // Catch: java.lang.Throwable -> L5f
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L5f
            r0.L$2 = r8     // Catch: java.lang.Throwable -> L5f
            r0.L$3 = r11     // Catch: java.lang.Throwable -> L5f
            r0.label = r3     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r11 = r2.emit(r11, r0)     // Catch: java.lang.Throwable -> L5f
            if (r11 != r1) goto L3b
            return r1
        Laa:
            r8 = move-exception
            r6 = r10
            r10 = r9
            r9 = r6
        Lae:
            throw r8     // Catch: java.lang.Throwable -> Laf
        Laf:
            r11 = move-exception
            if (r9 == 0) goto Lb5
            kotlinx.coroutines.channels.i.j(r10, r8)
        Lb5:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.b(kotlinx.coroutines.flow.d, kotlinx.coroutines.channels.p, boolean, kotlin.coroutines.c):java.lang.Object");
    }

    public static final <T> c<T> c(kotlinx.coroutines.channels.p<? extends T> pVar) {
        return new a(pVar, false, null, 0, null, 28, null);
    }
}
