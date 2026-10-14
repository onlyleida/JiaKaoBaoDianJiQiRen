package kotlinx.coroutines.channels;

import kotlinx.coroutines.g1;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t2;
import kotlinx.coroutines.u2;

/* JADX INFO: loaded from: classes6.dex */
public final class TickerChannelsKt {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:14:0x0036). Please report as a decompilation issue!!! */
    static final /* synthetic */ Object a(long r8, long r10, t<? super kotlin.v> r12, kotlin.coroutines.c<? super kotlin.v> r13) {
        if ((r13 instanceof TickerChannelsKt$fixedDelayTicker$1) == false) goto L7;
        TickerChannelsKt$fixedDelayTicker$1 r0 = (TickerChannelsKt$fixedDelayTicker$1) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L19;
        if (r3 == 1) goto L18;
        if (r3 == 2) goto L17;
        if (r3 != 3) goto L16;
        t<? super kotlin.v> r9 = (t) r0.L$0;
        long r11 = r0.J$1;
        long r15 = r0.J$0;
        kotlin.k.b(r14);
    L14:
        r12 = r9;
        r10 = r11;
        r8 = r15;
    L22:
        kotlin.v r16 = kotlin.v.f15822a;
        r0.J$0 = r8;
        r0.J$1 = r10;
        r0.L$0 = r12;
        r0.label = 2;
        if (r12.F(r16, r0) != r2) goto L25;
        return r2;
    L25:
        long r6 = r8;
        r9 = r12;
        r11 = r10;
        r15 = r6;
    L26:
        r0.J$0 = r15;
        r0.J$1 = r11;
        r0.L$0 = r9;
        r0.label = 3;
        if (s0.a(r15, r0) != r2) goto L14;
        return r2;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        r9 = (t) r0.L$0;
        r11 = r0.J$1;
        r15 = r0.J$0;
        kotlin.k.b(r14);
        goto L26
    L18:
        r12 = (t) r0.L$0;
        r10 = r0.J$1;
        r8 = r0.J$0;
        kotlin.k.b(r14);
        goto L22
    L19:
        kotlin.k.b(r14);
        r0.J$0 = r8;
        r0.J$1 = r10;
        r0.L$0 = r12;
        r0.label = 1;
        if (s0.a(r10, r0) != r2) goto L22;
        return r2;
    L7:
        r0 = new TickerChannelsKt$fixedDelayTicker$1(r13);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0142 -> B:49:0x0145). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0173 -> B:50:0x0146). Please report as a decompilation issue!!! */
    static final /* synthetic */ Object b(long r21, long r23, t<? super kotlin.v> r25, kotlin.coroutines.c<? super kotlin.v> r26) {
        long r0 = r23;
        if ((r26 instanceof TickerChannelsKt$fixedPeriodTicker$1) == false) goto L7;
        TickerChannelsKt$fixedPeriodTicker$1 r3 = (TickerChannelsKt$fixedPeriodTicker$1) r26;
        int r4 = r3.label;
        if ((r4 & Integer.MIN_VALUE) == 0) goto L7;
        r3.label = r4 - Integer.MIN_VALUE;
    L8:
        Object r2 = r3.result;
        Object r5 = kotlin.coroutines.intrinsics.a.d();
        int r6 = r3.label;
        int r8 = 2;
        if (r6 == 0) goto L20;
        if (r6 == 1) goto L19;
        if (r6 == 2) goto L18;
        if (r6 == 3) goto L17;
        if (r6 != 4) goto L16;
        long r1 = r3.J$5;
        long r7 = r3.J$4;
        long r9 = r3.J$3;
        long r10 = r3.J$2;
        t r11 = (t) r3.L$0;
        long r12 = r3.J$1;
        long r13 = r3.J$0;
        kotlin.k.b(r2);
    L50:
        long r19 = r12;
        long r14 = r13;
        long r15 = r9;
        r0 = r19;
        t r16 = r11;
        r8 = 2;
    L31:
        long r17 = r10 + r15;
        kotlin.v r18 = kotlin.v.f15822a;
        r3.J$0 = r14;
        r3.J$1 = r0;
        r3.L$0 = r16;
        r3.J$2 = r17;
        r3.J$3 = r15;
        r3.label = r8;
        if (r16.F(r18, r3) != r5) goto L34;
        return r5;
    L34:
        r11 = r16;
        long r110 = r0;
        r9 = r15;
        r13 = r14;
        r12 = r110;
    L35:
        t2 r20 = u2.a();
        if (r20 == null) goto L40;
        Long r22 = kotlin.coroutines.jvm.internal.a.e(r20.nanoTime());
        if (r22 == null) goto L40;
        long r111 = r22.longValue();
    L41:
        long r24 = r111;
        TickerChannelsKt$fixedPeriodTicker$1 r112 = r3;
        long r27 = r17;
        long r28 = kotlin.a0.d.c(r17 - r24, 0);
        if (r28 == 0) goto L44;
    L51:
        long r29 = g1.c(r28);
        r112.J$0 = r13;
        r112.J$1 = r12;
        r112.L$0 = r11;
        long r113 = r12;
        r112.J$2 = r27;
        r112.J$3 = r9;
        r112.J$4 = r24;
        r112.J$5 = r28;
        r112.label = 4;
        if (s0.a(r29, r112) != r5) goto L54;
        return r5;
    L54:
        r3 = r112;
        r10 = r27;
        r12 = r113;
        goto L50
    L44:
        if (r9 == 0) goto L51;
        long r30 = r9 - ((r24 - r27) % r9);
        long r31 = r24 + r30;
        long r32 = g1.c(r30);
        r112.J$0 = r13;
        r112.J$1 = r12;
        r112.L$0 = r11;
        r112.J$2 = r31;
        r112.J$3 = r9;
        r112.J$4 = r24;
        r112.J$5 = r28;
        r112.J$6 = r30;
        r112.label = 3;
        if (s0.a(r32, r112) != r5) goto L48;
        return r5;
    L48:
        r3 = r112;
        r10 = r31;
    L40:
        r111 = System.nanoTime();
        goto L41
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        long r33 = r3.J$6;
        long r34 = r3.J$5;
        long r35 = r3.J$4;
        r9 = r3.J$3;
        r10 = r3.J$2;
        r11 = (t) r3.L$0;
        r12 = r3.J$1;
        r13 = r3.J$0;
        kotlin.k.b(r2);
        goto L50
    L18:
        r9 = r3.J$3;
        r17 = r3.J$2;
        r11 = (t) r3.L$0;
        r12 = r3.J$1;
        r13 = r3.J$0;
        kotlin.k.b(r2);
        goto L35
    L19:
        long r36 = r3.J$2;
        t r37 = (t) r3.L$0;
        long r38 = r3.J$1;
        r14 = r3.J$0;
        kotlin.k.b(r2);
        r16 = r37;
        r0 = r38;
        r10 = r36;
    L30:
        r15 = g1.d(r14);
        goto L31
    L20:
        kotlin.k.b(r2);
        t2 r39 = u2.a();
        if (r39 == null) goto L25;
        Long r40 = kotlin.coroutines.jvm.internal.a.e(r39.nanoTime());
        if (r40 == null) goto L25;
        long r114 = r40.longValue();
    L26:
        long r115 = r114 + g1.d(r23);
        r3.J$0 = r21;
        r3.J$1 = r0;
        r16 = r25;
        r3.L$0 = r16;
        r3.J$2 = r115;
        r3.label = 1;
        if (s0.a(r0, r3) != r5) goto L29;
        return r5;
    L29:
        r10 = r115;
        r14 = r21;
    L25:
        r114 = System.nanoTime();
    L7:
        r3 = new TickerChannelsKt$fixedPeriodTicker$1(r26);
        goto L8
    }
}
