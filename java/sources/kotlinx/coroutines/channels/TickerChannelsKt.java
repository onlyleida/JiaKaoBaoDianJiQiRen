package kotlinx.coroutines.channels;

/* JADX INFO: loaded from: classes6.dex */
public final class TickerChannelsKt {
    /* JADX WARN: Code duplicated, block: B:24:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x007f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:14:0x0036). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static final /* synthetic */ java.lang.Object a(long r8, long r10, kotlinx.coroutines.channels.t<? super kotlin.v> r12, kotlin.coroutines.Continuation<? super kotlin.v> r13) {
        /*
            boolean r0 = r13 instanceof kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1 r0 = (kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1 r0 = new kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L5c
            if (r2 == r5) goto L4f
            if (r2 == r4) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.channels.t r8 = (kotlinx.coroutines.channels.t) r8
            long r9 = r0.J$1
            long r11 = r0.J$0
            kotlin.k.b(r13)
        L36:
            r6 = r11
            r12 = r8
            r10 = r9
            r8 = r6
            goto L6e
        L3b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L43:
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.channels.t r8 = (kotlinx.coroutines.channels.t) r8
            long r9 = r0.J$1
            long r11 = r0.J$0
            kotlin.k.b(r13)
            goto L83
        L4f:
            java.lang.Object r8 = r0.L$0
            r12 = r8
            kotlinx.coroutines.channels.t r12 = (kotlinx.coroutines.channels.t) r12
            long r10 = r0.J$1
            long r8 = r0.J$0
            kotlin.k.b(r13)
            goto L6e
        L5c:
            kotlin.k.b(r13)
            r0.J$0 = r8
            r0.J$1 = r10
            r0.L$0 = r12
            r0.label = r5
            java.lang.Object r13 = kotlinx.coroutines.s0.a(r10, r0)
            if (r13 != r1) goto L6e
            return r1
        L6e:
            kotlin.v r13 = kotlin.v.f15822a
            r0.J$0 = r8
            r0.J$1 = r10
            r0.L$0 = r12
            r0.label = r4
            java.lang.Object r13 = r12.F(r13, r0)
            if (r13 != r1) goto L7f
            return r1
        L7f:
            r6 = r8
            r8 = r12
            r9 = r10
            r11 = r6
        L83:
            r0.J$0 = r11
            r0.J$1 = r9
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r13 = kotlinx.coroutines.s0.a(r11, r0)
            if (r13 != r1) goto L36
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.TickerChannelsKt.a(long, long, kotlinx.coroutines.channels.t, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00de  */
    /* JADX WARN: Code duplicated, block: B:37:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:43:0x010e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0172 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x0173  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0142 -> B:49:0x0145). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0173 -> B:50:0x0146). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static final /* synthetic */ java.lang.Object b(long r21, long r23, kotlinx.coroutines.channels.t<? super kotlin.v> r25, kotlin.coroutines.Continuation<? super kotlin.v> r26) {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.TickerChannelsKt.b(long, long, kotlinx.coroutines.channels.t, kotlin.coroutines.c):java.lang.Object");
    }
}
