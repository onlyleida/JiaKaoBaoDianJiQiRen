package kotlinx.coroutines.channels;

import XI.K0.XI.XI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.collections.f0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$DoubleRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.h1;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class ChannelsKt__Channels_commonKt {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0092 -> B:43:0x0095). Please report as a decompilation issue!!! */
    public static final <E> Object A(p<? extends E> r17, kotlin.jvm.b.l<? super E, Boolean> r18, kotlin.coroutines.c<? super E> r19) {
        if ((r19 instanceof ChannelsKt__Channels_commonKt$find$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$find$1 r1 = (ChannelsKt__Channels_commonKt$find$1) r19;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$7;
        p<? extends E> r6 = (p) r1.L$6;
        Throwable r7 = (Throwable) r1.L$5;
        p<? extends E> r8 = (p) r1.L$4;
        p<? extends E> r9 = (p) r1.L$3;
        p<? extends E> r10 = (p) r1.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r11 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r12 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$find$1 r13 = r1;
        p<? extends E> r14 = r10;
        ChannelIterator r15 = r5;
        p<? extends E> r16 = r8;
        Object r20 = r3;
        p<? extends E> r21 = r9;
        Throwable r110 = r7;
        kotlin.jvm.b.l<? super E, Boolean> r22 = r11;
    L43:
    L34:
        th = th;
    L38:
        Throwable r23 = th;
    L49:
        throw r23;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r16, r23);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        XI.AbstractBinderC0002XI r24 = (Object) r15.next();
        if (r22.invoke(r24).booleanValue() == false) goto L30;
        kotlin.jvm.internal.q.b(2);
        i.j(r16, r110);
        kotlin.jvm.internal.q.a(2);
        return r24;
    L30:
        p<? extends E> r25 = r12;
    L21:
        r13.L$0 = r25;     // Catch: Throwable -> L34
        r13.L$1 = r22;     // Catch: Throwable -> L34
        r13.L$2 = r14;     // Catch: Throwable -> L34
        r13.L$3 = r21;     // Catch: Throwable -> L34
        r13.L$4 = r16;     // Catch: Throwable -> L34
        r13.L$5 = r110;     // Catch: Throwable -> L34
        r13.L$6 = r6;     // Catch: Throwable -> L34
        r13.L$7 = r15;     // Catch: Throwable -> L34
        r13.label = 1;     // Catch: Throwable -> L34
        Object r111 = r15.a(r13);     // Catch: Throwable -> L34
        if (r111 != r20) goto L24;
        return r20;
    L24:
        r12 = r25;
        r0 = r111;
        goto L43
    L31:
        kotlin.v r26 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r16, r110);
        kotlin.jvm.internal.q.a(1);
        return null;
    L14:
        th = move-exception;
        r23 = th;
        r16 = r8;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        r16 = r17;
        r6 = r16;
        r22 = r18;
        r15 = r17.iterator();     // Catch: Throwable -> L36
        r13 = r1;
        r20 = r3;
        r110 = null;
        r25 = r6;
        r14 = r25;
        r21 = r14;
    L36:
        th = th;
        r16 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$find$1(r19);
        goto L8
    }

    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0099 -> B:46:0x009e). Please report as a decompilation issue!!! */
    public static final <E> Object B(p<? extends E> r13, kotlin.jvm.b.l<? super E, Boolean> r14, kotlin.coroutines.c<? super E> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$findLast$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$findLast$1 r0 = (ChannelsKt__Channels_commonKt$findLast$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Ref$ObjectRef r7 = (Ref$ObjectRef) r0.L$3;
        p<? extends E> r8 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        Ref$ObjectRef r12 = r7;
        Object r20 = r2;
        p<? extends E> r21 = r5;
        kotlin.jvm.b.l<? super E, Boolean> r22 = r9;
        Throwable r23 = r4;
        ChannelsKt__Channels_commonKt$findLast$1 r24 = r0;
        p<? extends E> r25 = r6;
    L46:
    L34:
        Throwable th = th;
    L42:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L31;
        ?? r110 = (Object) r17.next();
        if (r22.invoke(r110).booleanValue() == false) goto L30;
        r12.element = r110;     // Catch: Throwable -> L34
    L30:
        p<? extends E> r111 = r8;
        Throwable r26 = r23;
        Ref$ObjectRef r27 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L34
        r24.L$1 = r22;     // Catch: Throwable -> L34
        r24.L$2 = r111;     // Catch: Throwable -> L34
        r24.L$3 = r27;     // Catch: Throwable -> L34
        r24.L$4 = r25;     // Catch: Throwable -> L34
        r24.L$5 = r21;     // Catch: Throwable -> L34
        r24.L$6 = r26;     // Catch: Throwable -> L34
        r24.L$7 = r11;     // Catch: Throwable -> L34
        r24.L$8 = r17;     // Catch: Throwable -> L34
        r24.label = 1;     // Catch: Throwable -> L34
        Object r28 = r17.a(r24);     // Catch: Throwable -> L34
        if (r28 != r20) goto L24;
        return r20;
    L24:
        Throwable r112 = r26;
        r8 = r111;
        r16 = r28;
        r12 = r27;
        r23 = r112;
        goto L46
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r23);
        kotlin.jvm.internal.q.a(1);
        return r12.element;
    L14:
        th = th;
        r21 = r5;
        goto L42
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        Ref$ObjectRef r114 = new Ref$ObjectRef();
        r114.element = null;
        r27 = r114;
        r24 = r0;
        r20 = r2;
        r26 = null;
        r111 = r13;
        r25 = r111;
        r21 = r25;
        r22 = r14;
        r19 = r21;
        r17 = r13.iterator();     // Catch: Throwable -> L36
        r11 = r19;
    L36:
        th = move-exception;
        r21 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$findLast$1(r15);
        goto L8
    }

    public static final <E> Object C(p<? extends E> r5, kotlin.coroutines.c<? super E> r6) {
        if ((r6 instanceof ChannelsKt__Channels_commonKt$first$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$first$1 r0 = (ChannelsKt__Channels_commonKt$first$1) r6;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r7 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator<? extends E> r8 = (ChannelIterator) r0.L$4;
        p r4 = (p) r0.L$3;
        Throwable r9 = (Throwable) r0.L$2;
        p<? extends E> r10 = (p) r0.L$1;
        p r11 = (p) r0.L$0;
        kotlin.k.b(r7);     // Catch: Throwable -> L14
    L24:
        if (((Boolean) r7).booleanValue() == false) goto L29;
        E r12 = r8.next();     // Catch: Throwable -> L14
        i.j(r10, r9);
        return r12;
    L29:
        throw new NoSuchElementException("ReceiveChannel is empty.");     // Catch: Throwable -> L14
    L14:
        Throwable th = th;
    L36:
        throw th;     // Catch: Throwable -> L33
    L33:
        th = move-exception;
        i.j(r10, th);
        throw th;
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r7);
        ChannelIterator<? extends E> r13 = r5.iterator();     // Catch: Throwable -> L30
        r0.L$0 = r5;     // Catch: Throwable -> L30
        r0.L$1 = r5;     // Catch: Throwable -> L30
        r0.L$2 = null;     // Catch: Throwable -> L30
        r0.L$3 = r5;     // Catch: Throwable -> L30
        r0.L$4 = r13;     // Catch: Throwable -> L30
        r0.label = 1;     // Catch: Throwable -> L30
        Object r14 = r13.a(r0);     // Catch: Throwable -> L30
        if (r14 != r2) goto L22;
        return r2;
    L22:
        r9 = null;
        r7 = r14;
        r10 = r5;
        r8 = r13;
    L30:
        th = move-exception;
        r10 = r5;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$first$1(r6);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:43:0x0087). Please report as a decompilation issue!!! */
    public static final <E> Object D(p<? extends E> r11, kotlin.jvm.b.l<? super E, Boolean> r12, kotlin.coroutines.c<? super E> r13) {
        if ((r13 instanceof ChannelsKt__Channels_commonKt$first$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$first$3 r0 = (ChannelsKt__Channels_commonKt$first$3) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r15 = (ChannelIterator) r0.L$6;
        p<? extends E> r16 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r7 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L14
        p<? extends E> r9 = r16;
        p<? extends E> r17 = r8;
        Throwable r10 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$first$3 r20 = r0;
        p<? extends E> r21 = r5;
    L43:
    L35:
        Throwable th = th;
    L47:
        throw th;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r14).booleanValue() == false) goto L32;
        XI.AbstractBinderC0002XI r110 = (Object) r15.next();
        if (r18.invoke(r110).booleanValue() == false) goto L31;
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r10);
        kotlin.jvm.internal.q.a(2);
        return r110;
    L31:
        p<? extends E> r111 = r6;
        Object r22 = r19;
        Throwable r23 = r10;
    L21:
        r20.L$0 = r17;     // Catch: Throwable -> L35
        r20.L$1 = r18;     // Catch: Throwable -> L35
        r20.L$2 = r111;     // Catch: Throwable -> L35
        r20.L$3 = r21;     // Catch: Throwable -> L35
        r20.L$4 = r23;     // Catch: Throwable -> L35
        r20.L$5 = r9;     // Catch: Throwable -> L35
        r20.L$6 = r15;     // Catch: Throwable -> L35
        r20.label = 1;     // Catch: Throwable -> L35
        Object r24 = r15.a(r20);     // Catch: Throwable -> L35
        if (r24 != r22) goto L24;
        return r22;
    L24:
        Object r25 = r22;
        r6 = r111;
        r14 = r24;
        r10 = r23;
        r19 = r25;
        goto L43
    L32:
        kotlin.v r112 = kotlin.v.f15822a;     // Catch: Throwable -> L35
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r10);
        kotlin.jvm.internal.q.a(1);
        throw new NoSuchElementException("ReceiveChannel contains no element matching the predicate.");
    L14:
        th = th;
        r21 = r5;
        goto L47
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r14);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r111 = r11;
        r21 = r111;
        r9 = r21;
        r15 = r11.iterator();     // Catch: Throwable -> L37
        r18 = r12;
        r17 = r9;
    L37:
        th = move-exception;
        r21 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$first$3(r13);
        goto L8
    }

    public static final <E> Object E(p<? extends E> r5, kotlin.coroutines.c<? super E> r6) {
        if ((r6 instanceof ChannelsKt__Channels_commonKt$firstOrNull$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$firstOrNull$1 r0 = (ChannelsKt__Channels_commonKt$firstOrNull$1) r6;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r7 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator<? extends E> r8 = (ChannelIterator) r0.L$4;
        p r4 = (p) r0.L$3;
        Throwable r9 = (Throwable) r0.L$2;
        p<? extends E> r10 = (p) r0.L$1;
        p r11 = (p) r0.L$0;
        kotlin.k.b(r7);     // Catch: Throwable -> L14
    L24:
        if (((Boolean) r7).booleanValue() == true) goto L27;
        i.j(r10, r9);
        return null;
    L27:
        E r12 = r8.next();     // Catch: Throwable -> L14
        i.j(r10, r9);
        return r12;
    L14:
        Throwable th = th;
    L38:
        throw th;     // Catch: Throwable -> L33
    L33:
        th = move-exception;
        i.j(r10, th);
        throw th;
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r7);
        ChannelIterator<? extends E> r13 = r5.iterator();     // Catch: Throwable -> L30
        r0.L$0 = r5;     // Catch: Throwable -> L30
        r0.L$1 = r5;     // Catch: Throwable -> L30
        r0.L$2 = null;     // Catch: Throwable -> L30
        r0.L$3 = r5;     // Catch: Throwable -> L30
        r0.L$4 = r13;     // Catch: Throwable -> L30
        r0.label = 1;     // Catch: Throwable -> L30
        Object r14 = r13.a(r0);     // Catch: Throwable -> L30
        if (r14 != r2) goto L22;
        return r2;
    L22:
        r10 = r5;
        r8 = r13;
        r7 = r14;
        r9 = null;
    L30:
        th = move-exception;
        r10 = r5;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$firstOrNull$1(r6);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:45:0x0087). Please report as a decompilation issue!!! */
    public static final <E> Object F(p<? extends E> r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super E> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$firstOrNull$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$firstOrNull$3 r0 = (ChannelsKt__Channels_commonKt$firstOrNull$3) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$6;
        p<? extends E> r17 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r7 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r9 = r17;
        p<? extends E> r18 = r8;
        Throwable r10 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r11 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$firstOrNull$3 r20 = r0;
        p<? extends E> r21 = r5;
    L45:
    L35:
        Throwable th = th;
    L43:
        throw th;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == false) goto L32;
        XI.AbstractBinderC0002XI r110 = (Object) r16.next();
        if (r11.invoke(r110).booleanValue() == false) goto L31;
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r10);
        kotlin.jvm.internal.q.a(2);
        return r110;
    L31:
        p<? extends E> r111 = r6;
        Object r22 = r19;
        Throwable r23 = r10;
    L21:
        r20.L$0 = r18;     // Catch: Throwable -> L35
        r20.L$1 = r11;     // Catch: Throwable -> L35
        r20.L$2 = r111;     // Catch: Throwable -> L35
        r20.L$3 = r21;     // Catch: Throwable -> L35
        r20.L$4 = r23;     // Catch: Throwable -> L35
        r20.L$5 = r9;     // Catch: Throwable -> L35
        r20.L$6 = r16;     // Catch: Throwable -> L35
        r20.label = 1;     // Catch: Throwable -> L35
        Object r24 = r16.a(r20);     // Catch: Throwable -> L35
        if (r24 != r22) goto L24;
        return r22;
    L24:
        Object r112 = r22;
        r6 = r111;
        r15 = r24;
        r10 = r23;
        r19 = r112;
        goto L45
    L32:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L35
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r10);
        kotlin.jvm.internal.q.a(1);
        return null;
    L14:
        th = th;
        r21 = r5;
        goto L43
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        r11 = r13;
        r20 = r0;
        r22 = r2;
        r23 = null;
        r18 = r12;
        r21 = r18;
        r9 = r21;
        r16 = r12.iterator();     // Catch: Throwable -> L37
        r111 = r9;
    L37:
        th = move-exception;
        r21 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$firstOrNull$3(r14);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r18v0, types: [R, T] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a2 -> B:42:0x00a5). Please report as a decompilation issue!!! */
    public static final <E, R> Object G(p<? extends E> r17, R r18, kotlin.jvm.b.p<? super R, ? super E, ? extends R> r19, kotlin.coroutines.c<? super R> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$fold$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$fold$1 r1 = (ChannelsKt__Channels_commonKt$fold$1) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$8;
        p<? extends E> r6 = (p) r1.L$7;
        Throwable r7 = (Throwable) r1.L$6;
        p<? extends E> r8 = (p) r1.L$5;
        p<? extends E> r9 = (p) r1.L$4;
        Ref$ObjectRef r10 = (Ref$ObjectRef) r1.L$3;
        kotlin.jvm.b.p<? super R, ? super E, ? extends R> r11 = (kotlin.jvm.b.p) r1.L$2;
        Object r12 = r1.L$1;
        p<? extends E> r13 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$fold$1 r14 = r1;
        p<? extends E> r15 = r9;
        Object r16 = r3;
        p<? extends E> r21 = r8;
        ChannelIterator r22 = r5;
        p<? extends E> r23 = r6;
        ?? r24 = r12;
        Ref$ObjectRef r110 = r10;
        Throwable r111 = r7;
        kotlin.jvm.b.p<? super R, ? super E, ? extends R> r25 = r11;
    L42:
    L31:
        th = th;
    L35:
        Throwable r26 = th;
    L40:
        throw r26;     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r26);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L28;
        r110.element = r25.invoke((Object) r110.element, (Object) r22.next());     // Catch: Throwable -> L31
        p<? extends E> r27 = r13;
        ?? r28 = r24;
    L21:
        r14.L$0 = r27;     // Catch: Throwable -> L31
        r14.L$1 = r28;     // Catch: Throwable -> L31
        r14.L$2 = r25;     // Catch: Throwable -> L31
        r14.L$3 = r110;     // Catch: Throwable -> L31
        r14.L$4 = r15;     // Catch: Throwable -> L31
        r14.L$5 = r21;     // Catch: Throwable -> L31
        r14.L$6 = r111;     // Catch: Throwable -> L31
        r14.L$7 = r23;     // Catch: Throwable -> L31
        r14.L$8 = r22;     // Catch: Throwable -> L31
        r14.label = 1;     // Catch: Throwable -> L31
        Object r112 = r22.a(r14);     // Catch: Throwable -> L31
        if (r112 != r16) goto L24;
        return r16;
    L24:
        r13 = r27;
        r0 = r112;
        r24 = r28;
        goto L42
    L28:
        kotlin.v r29 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r111);
        kotlin.jvm.internal.q.a(1);
        return r110.element;
    L14:
        th = move-exception;
        r26 = th;
        r21 = r8;
        goto L40
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$ObjectRef r30 = new Ref$ObjectRef();
        r30.element = r18;
        r110 = r30;
        r14 = r1;
        r16 = r3;
        r111 = null;
        r22 = r17.iterator();     // Catch: Throwable -> L33
        r27 = r17;
        r15 = r27;
        r21 = r15;
        r25 = r19;
        r28 = r18;
        r23 = r21;
    L33:
        th = th;
        r21 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$fold$1(r20);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [T] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00b2 -> B:42:0x00b7). Please report as a decompilation issue!!! */
    public static final <E, R> Object H(p<? extends E> r18, R r19, kotlin.jvm.b.q<? super Integer, ? super R, ? super E, ? extends R> r20, kotlin.coroutines.c<? super R> r21) {
        if ((r21 instanceof ChannelsKt__Channels_commonKt$foldIndexed$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$foldIndexed$1 r1 = (ChannelsKt__Channels_commonKt$foldIndexed$1) r21;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$9;
        p<? extends E> r6 = (p) r1.L$8;
        Throwable r7 = (Throwable) r1.L$7;
        p<? extends E> r8 = (p) r1.L$6;
        p<? extends E> r9 = (p) r1.L$5;
        Ref$ObjectRef r10 = (Ref$ObjectRef) r1.L$4;
        Ref$IntRef r11 = (Ref$IntRef) r1.L$3;
        kotlin.jvm.b.q<? super Integer, ? super R, ? super E, ? extends R> r12 = (kotlin.jvm.b.q) r1.L$2;
        Object r13 = r1.L$1;
        p<? extends E> r14 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$foldIndexed$1 r15 = r1;
        p<? extends E> r16 = r9;
        Object r17 = r3;
        p<? extends E> r22 = r8;
        ChannelIterator r23 = r5;
        p<? extends E> r24 = r6;
        ?? r25 = r13;
        Ref$IntRef r110 = r11;
        Throwable r111 = r7;
        kotlin.jvm.b.q<? super Integer, ? super R, ? super E, ? extends R> r26 = r12;
        Ref$ObjectRef r112 = r10;
    L42:
    L31:
        th = th;
    L35:
        Throwable r27 = th;
    L46:
        throw r27;     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r27);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L28;
        Object r28 = (Object) r23.next();
        int r113 = r110.element;     // Catch: Throwable -> L31
        r110.element = r113 + 1;     // Catch: Throwable -> L31
        r112.element = r26.invoke(kotlin.coroutines.jvm.internal.a.d(r113), (Object) r112.element, r28);     // Catch: Throwable -> L31
        p<? extends E> r29 = r14;
        ?? r30 = r25;
    L21:
        r15.L$0 = r29;     // Catch: Throwable -> L31
        r15.L$1 = r30;     // Catch: Throwable -> L31
        r15.L$2 = r26;     // Catch: Throwable -> L31
        r15.L$3 = r110;     // Catch: Throwable -> L31
        r15.L$4 = r112;     // Catch: Throwable -> L31
        r15.L$5 = r16;     // Catch: Throwable -> L31
        r15.L$6 = r22;     // Catch: Throwable -> L31
        r15.L$7 = r111;     // Catch: Throwable -> L31
        r15.L$8 = r24;     // Catch: Throwable -> L31
        r15.L$9 = r23;     // Catch: Throwable -> L31
        r15.label = 1;     // Catch: Throwable -> L31
        Object r114 = r23.a(r15);     // Catch: Throwable -> L31
        if (r114 != r17) goto L24;
        return r17;
    L24:
        r14 = r29;
        r0 = r114;
        r25 = r30;
        goto L42
    L28:
        kotlin.v r31 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r111);
        kotlin.jvm.internal.q.a(1);
        return r112.element;
    L14:
        th = move-exception;
        r27 = th;
        r22 = r8;
        goto L46
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$IntRef r32 = new Ref$IntRef();
        r32.element = 0;
        Ref$ObjectRef r33 = new Ref$ObjectRef();
        ?? r34 = r19;
        r33.element = r34;
        r110 = r32;
        r17 = r3;
        r112 = r33;
        r111 = null;
        r23 = r18.iterator();     // Catch: Throwable -> L33
        r29 = r18;
        r22 = r29;
        r24 = r22;
        r26 = r20;
        r15 = r1;
        r16 = r24;
        r30 = r34;
    L33:
        th = th;
        r22 = r18;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$foldIndexed$1(r21);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009e -> B:43:0x00a1). Please report as a decompilation issue!!! */
    public static final <E, K> Object I(p<? extends E> r17, kotlin.jvm.b.l<? super E, ? extends K> r18, kotlin.coroutines.c<? super Map<K, ? extends List<? extends E>>> r19) {
        if ((r19 instanceof ChannelsKt__Channels_commonKt$groupBy$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$groupBy$1 r1 = (ChannelsKt__Channels_commonKt$groupBy$1) r19;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$8;
        p<? extends E> r6 = (p) r1.L$7;
        Throwable r7 = (Throwable) r1.L$6;
        p<? extends E> r8 = (p) r1.L$5;
        p<? extends E> r9 = (p) r1.L$4;
        Map r10 = (Map) r1.L$3;
        p<? extends E> r11 = (p) r1.L$2;
        kotlin.jvm.b.l<? super E, ? extends K> r12 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r13 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$groupBy$1 r14 = r1;
        p<? extends E> r15 = r11;
        Throwable r16 = r7;
        kotlin.jvm.b.l<? super E, ? extends K> r20 = r12;
        Map r110 = r10;
        ChannelIterator r21 = r5;
        p<? extends E> r22 = r8;
        Object r23 = r3;
        p<? extends E> r24 = r9;
    L43:
    L34:
        th = th;
    L38:
        Throwable r25 = th;
    L47:
        throw r25;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r25);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        XI.AbstractBinderC0002XI.C0003XI r26 = (Object) r21.next();
        K r111 = r20.invoke(r26);     // Catch: Throwable -> L34
        Object r112 = r110.get(r111);     // Catch: Throwable -> L34
        if (r112 != null) goto L30;
        r112 = new ArrayList();     // Catch: Throwable -> L34
        r110.put(r111, r112);     // Catch: Throwable -> L34
    L30:
        ((List) r112).add(r26);     // Catch: Throwable -> L34
        p<? extends E> r27 = r13;
    L21:
        r14.L$0 = r27;     // Catch: Throwable -> L34
        r14.L$1 = r20;     // Catch: Throwable -> L34
        r14.L$2 = r15;     // Catch: Throwable -> L34
        r14.L$3 = r110;     // Catch: Throwable -> L34
        r14.L$4 = r24;     // Catch: Throwable -> L34
        r14.L$5 = r22;     // Catch: Throwable -> L34
        r14.L$6 = r16;     // Catch: Throwable -> L34
        r14.L$7 = r6;     // Catch: Throwable -> L34
        r14.L$8 = r21;     // Catch: Throwable -> L34
        r14.label = 1;     // Catch: Throwable -> L34
        Object r113 = r21.a(r14);     // Catch: Throwable -> L34
        if (r113 != r23) goto L24;
        return r23;
    L24:
        r13 = r27;
        r0 = r113;
        goto L43
    L31:
        kotlin.v r28 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r16);
        kotlin.jvm.internal.q.a(1);
        return r110;
    L14:
        th = move-exception;
        r25 = th;
        r22 = r8;
        goto L47
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        r20 = r18;
        r110 = new LinkedHashMap();
        r14 = r1;
        r23 = r3;
        r16 = null;
        r21 = r17.iterator();     // Catch: Throwable -> L36
        r27 = r17;
        r15 = r27;
        r24 = r15;
        r22 = r24;
        r6 = r22;
    L36:
        th = th;
        r22 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$groupBy$1(r19);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a6 -> B:43:0x00ab). Please report as a decompilation issue!!! */
    public static final <E, K, V> Object J(p<? extends E> r17, kotlin.jvm.b.l<? super E, ? extends K> r18, kotlin.jvm.b.l<? super E, ? extends V> r19, kotlin.coroutines.c<? super Map<K, ? extends List<? extends V>>> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$groupBy$2) == false) goto L7;
        ChannelsKt__Channels_commonKt$groupBy$2 r1 = (ChannelsKt__Channels_commonKt$groupBy$2) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$9;
        p<? extends E> r6 = (p) r1.L$8;
        Throwable r7 = (Throwable) r1.L$7;
        p<? extends E> r8 = (p) r1.L$6;
        p<? extends E> r9 = (p) r1.L$5;
        Map r10 = (Map) r1.L$4;
        p<? extends E> r11 = (p) r1.L$3;
        kotlin.jvm.b.l<? super E, ? extends V> r12 = (kotlin.jvm.b.l) r1.L$2;
        kotlin.jvm.b.l<? super E, ? extends K> r13 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r14 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$groupBy$2 r15 = r1;
        p<? extends E> r16 = r11;
        ChannelIterator r110 = r5;
        p<? extends E> r21 = r8;
        kotlin.jvm.b.l<? super E, ? extends V> r22 = r12;
        Throwable r111 = r7;
        kotlin.jvm.b.l<? super E, ? extends K> r23 = r13;
        ?? r112 = r10;
        Object r24 = r3;
        p<? extends E> r25 = r9;
    L43:
    L34:
        th = th;
    L38:
        Throwable r26 = th;
    L49:
        throw r26;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r26);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        Object r27 = (Object) r110.next();
        K r113 = r23.invoke(r27);     // Catch: Throwable -> L34
        Object r114 = r112.get(r113);     // Catch: Throwable -> L34
        if (r114 != null) goto L30;
        r114 = new ArrayList();     // Catch: Throwable -> L34
        r112.put(r113, r114);     // Catch: Throwable -> L34
    L30:
        ((List) r114).add(r22.invoke(r27));     // Catch: Throwable -> L34
        p<? extends E> r28 = r14;
        ?? r115 = r112;
    L21:
        r15.L$0 = r28;     // Catch: Throwable -> L34
        r15.L$1 = r23;     // Catch: Throwable -> L34
        r15.L$2 = r22;     // Catch: Throwable -> L34
        r15.L$3 = r16;     // Catch: Throwable -> L34
        r15.L$4 = r115;     // Catch: Throwable -> L34
        r15.L$5 = r25;     // Catch: Throwable -> L34
        r15.L$6 = r21;     // Catch: Throwable -> L34
        r15.L$7 = r111;     // Catch: Throwable -> L34
        r15.L$8 = r6;     // Catch: Throwable -> L34
        r15.L$9 = r110;     // Catch: Throwable -> L34
        r15.label = 1;     // Catch: Throwable -> L34
        Object r116 = r110.a(r15);     // Catch: Throwable -> L34
        if (r116 != r24) goto L24;
        return r24;
    L24:
        r14 = r28;
        r0 = r116;
        r112 = r115;
        goto L43
    L31:
        kotlin.v r29 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r111);
        kotlin.jvm.internal.q.a(1);
        return r112;
    L14:
        th = move-exception;
        r26 = th;
        r21 = r8;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        r23 = r18;
        r22 = r19;
        r115 = new LinkedHashMap();
        r15 = r1;
        r24 = r3;
        r111 = null;
        r110 = r17.iterator();     // Catch: Throwable -> L36
        r28 = r17;
        r16 = r28;
        r25 = r16;
        r21 = r25;
        r6 = r21;
    L36:
        th = th;
        r21 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$groupBy$2(r20);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0088 -> B:25:0x008e). Please report as a decompilation issue!!! */
    public static final <E, K, M extends Map<? super K, List<E>>> Object K(p<? extends E> r12, M r13, kotlin.jvm.b.l<? super E, ? extends K> r14, kotlin.coroutines.c<? super M> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$groupByTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$groupByTo$1 r0 = (ChannelsKt__Channels_commonKt$groupByTo$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$7;
        p<? extends E> r18 = (p) r0.L$6;
        Throwable r19 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends K> r6 = (kotlin.jvm.b.l) r0.L$2;
        Map r7 = (Map) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$groupByTo$1 r10 = r0;
        p<? extends E> r9 = r18;
        p<? extends E> r110 = r8;
        Object r11 = r2;
        Map r20 = r7;
        ChannelsKt__Channels_commonKt$groupByTo$1 r21 = r10;
        Throwable r22 = r19;
        p<? extends E> r111 = r5;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L31;
        XI.AbstractBinderC0002XI.C0003XI r112 = (Object) r17.next();
        K r23 = r6.invoke(r112);     // Catch: Throwable -> L14
        Object r24 = r20.get(r23);     // Catch: Throwable -> L14
        if (r24 != null) goto L30;
        r24 = new ArrayList();     // Catch: Throwable -> L14
        r20.put(r23, r24);     // Catch: Throwable -> L14
    L30:
        ((List) r24).add(r112);     // Catch: Throwable -> L14
        p<? extends E> r113 = r4;
        kotlin.jvm.b.l<? super E, ? extends K> r25 = r6;
        ChannelsKt__Channels_commonKt$groupByTo$1 r26 = r21;
        Object r27 = r11;
    L42:
        r26.L$0 = r110;     // Catch: Throwable -> L34
        r26.L$1 = r20;     // Catch: Throwable -> L34
        r26.L$2 = r25;     // Catch: Throwable -> L34
        r26.L$3 = r111;     // Catch: Throwable -> L34
        r26.L$4 = r113;     // Catch: Throwable -> L34
        r26.L$5 = r22;     // Catch: Throwable -> L34
        r26.L$6 = r9;     // Catch: Throwable -> L34
        r26.L$7 = r17;     // Catch: Throwable -> L34
        r26.label = 1;     // Catch: Throwable -> L34
        Object r28 = r17.a(r26);     // Catch: Throwable -> L34
        if (r28 != r27) goto L24;
        return r27;
    L24:
        kotlin.jvm.b.l<? super E, ? extends K> r114 = r25;
        r4 = r113;
        r16 = r28;
        r11 = r27;
        r21 = r26;
        r6 = r114;
    L34:
        Throwable th = th;
        r4 = r113;
    L48:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r4, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L31:
        kotlin.v r115 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r22);
        kotlin.jvm.internal.q.a(1);
        return r20;
    L14:
        th = th;
        goto L48
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        r22 = null;
        r26 = r0;
        r27 = r2;
        r113 = r12;
        r9 = r113;
        r20 = r13;
        r110 = r9;
        r17 = r12.iterator();     // Catch: Throwable -> L36
        r25 = r14;
        r111 = r110;
    L36:
        th = move-exception;
        r4 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$groupByTo$1(r15);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009f -> B:45:0x00a2). Please report as a decompilation issue!!! */
    public static final <E, K, V, M extends Map<? super K, List<V>>> Object L(p<? extends E> r18, M r19, kotlin.jvm.b.l<? super E, ? extends K> r20, kotlin.jvm.b.l<? super E, ? extends V> r21, kotlin.coroutines.c<? super M> r22) {
        if ((r22 instanceof ChannelsKt__Channels_commonKt$groupByTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$groupByTo$3 r1 = (ChannelsKt__Channels_commonKt$groupByTo$3) r22;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$8;
        p<? extends E> r6 = (p) r1.L$7;
        Throwable r7 = (Throwable) r1.L$6;
        p<? extends E> r8 = (p) r1.L$5;
        p<? extends E> r9 = (p) r1.L$4;
        kotlin.jvm.b.l<? super E, ? extends V> r10 = (kotlin.jvm.b.l) r1.L$3;
        kotlin.jvm.b.l<? super E, ? extends K> r11 = (kotlin.jvm.b.l) r1.L$2;
        Map r12 = (Map) r1.L$1;
        p<? extends E> r13 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$groupByTo$3 r14 = r1;
        p<? extends E> r15 = r9;
        Object r16 = r3;
        p<? extends E> r17 = r8;
        kotlin.jvm.b.l<? super E, ? extends V> r23 = r10;
        ChannelIterator r110 = r5;
        p<? extends E> r24 = r6;
        ?? r25 = r12;
        Throwable r111 = r7;
        kotlin.jvm.b.l<? super E, ? extends K> r26 = r11;
    L45:
    L34:
        th = th;
    L38:
        Throwable r27 = th;
    L49:
        throw r27;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r27);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        Object r28 = (Object) r110.next();
        K r112 = r26.invoke(r28);     // Catch: Throwable -> L34
        Object r113 = r25.get(r112);     // Catch: Throwable -> L34
        if (r113 != null) goto L30;
        r113 = new ArrayList();     // Catch: Throwable -> L34
        r25.put(r112, r113);     // Catch: Throwable -> L34
    L30:
        ((List) r113).add(r23.invoke(r28));     // Catch: Throwable -> L34
        p<? extends E> r29 = r13;
        ?? r30 = r25;
    L21:
        r14.L$0 = r29;     // Catch: Throwable -> L34
        r14.L$1 = r30;     // Catch: Throwable -> L34
        r14.L$2 = r26;     // Catch: Throwable -> L34
        r14.L$3 = r23;     // Catch: Throwable -> L34
        r14.L$4 = r15;     // Catch: Throwable -> L34
        r14.L$5 = r17;     // Catch: Throwable -> L34
        r14.L$6 = r111;     // Catch: Throwable -> L34
        r14.L$7 = r24;     // Catch: Throwable -> L34
        r14.L$8 = r110;     // Catch: Throwable -> L34
        r14.label = 1;     // Catch: Throwable -> L34
        Object r114 = r110.a(r14);     // Catch: Throwable -> L34
        if (r114 != r16) goto L24;
        return r16;
    L24:
        r13 = r29;
        r0 = r114;
        r25 = r30;
        goto L45
    L31:
        kotlin.v r31 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r111);
        kotlin.jvm.internal.q.a(1);
        return r25;
    L14:
        th = move-exception;
        r27 = th;
        r17 = r8;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        r30 = r19;
        r26 = r20;
        r23 = r21;
        r111 = null;
        r14 = r1;
        r16 = r3;
        r110 = r18.iterator();     // Catch: Throwable -> L36
        r29 = r18;
        r15 = r29;
        r17 = r15;
        r24 = r17;
    L36:
        th = th;
        r17 = r18;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$groupByTo$3(r22);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0091 -> B:46:0x0097). Please report as a decompilation issue!!! */
    public static final <E> Object M(p<? extends E> r12, E r13, kotlin.coroutines.c<? super Integer> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$indexOf$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$indexOf$1 r0 = (ChannelsKt__Channels_commonKt$indexOf$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r4 = (Throwable) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$2;
        Object r8 = r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r10 = r17;
        p<? extends E> r18 = r9;
        Ref$IntRef r11 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$indexOf$1 r20 = r0;
        p<? extends E> r21 = r5;
        Throwable r22 = r4;
        Object r23 = r8;
    L46:
    L36:
        Throwable th = th;
    L49:
        throw th;     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        i.j(r21, th);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L36
        i.j(r21, r22);
        return kotlin.coroutines.jvm.internal.a.d(-1);
    L28:
        if (kotlin.jvm.internal.r.a(r23, r16.next()) == false) goto L32;
        Integer r111 = kotlin.coroutines.jvm.internal.a.d(r11.element);     // Catch: Throwable -> L36
        i.j(r21, r22);
        return r111;
    L32:
        r11.element++;     // Catch: Throwable -> L36
        p<? extends E> r112 = r6;
        Object r24 = r19;
        Throwable r25 = r22;
        Ref$IntRef r26 = r11;
    L21:
        r20.L$0 = r18;     // Catch: Throwable -> L36
        r20.L$1 = r23;     // Catch: Throwable -> L36
        r20.L$2 = r26;     // Catch: Throwable -> L36
        r20.L$3 = r112;     // Catch: Throwable -> L36
        r20.L$4 = r21;     // Catch: Throwable -> L36
        r20.L$5 = r25;     // Catch: Throwable -> L36
        r20.L$6 = r10;     // Catch: Throwable -> L36
        r20.L$7 = r16;     // Catch: Throwable -> L36
        r20.label = 1;     // Catch: Throwable -> L36
        Object r27 = r16.a(r20);     // Catch: Throwable -> L36
        if (r27 != r24) goto L24;
        return r24;
    L24:
        Object r28 = r24;
        r6 = r112;
        r15 = r27;
        r11 = r26;
        r22 = r25;
        r19 = r28;
    L14:
        th = th;
        r21 = r5;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        Ref$IntRef r113 = new Ref$IntRef();
        r113.element = 0;
        r26 = r113;
        r24 = r2;
        r25 = null;
        r112 = r12;
        r10 = r112;
        r23 = r13;
        r18 = r10;
        r16 = r12.iterator();     // Catch: Throwable -> L38
        r20 = r0;
        r21 = r18;
    L38:
        th = move-exception;
        r21 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$indexOf$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:48:0x0099). Please report as a decompilation issue!!! */
    public static final <E> Object N(p<? extends E> r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super Integer> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$indexOfFirst$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$indexOfFirst$1 r0 = (ChannelsKt__Channels_commonKt$indexOfFirst$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r4 = (Throwable) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r8 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r10 = r17;
        p<? extends E> r18 = r9;
        Ref$IntRef r11 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$indexOfFirst$1 r20 = r0;
        p<? extends E> r21 = r5;
        Throwable r22 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r23 = r8;
    L48:
    L36:
        Throwable th = th;
    L44:
        throw th;     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r22);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.d(-1);
    L28:
        if (r23.invoke((Object) r16.next()).booleanValue() == false) goto L32;
        Integer r111 = kotlin.coroutines.jvm.internal.a.d(r11.element);     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r22);
        kotlin.jvm.internal.q.a(2);
        return r111;
    L32:
        r11.element++;     // Catch: Throwable -> L36
        p<? extends E> r112 = r6;
        Object r24 = r19;
        Throwable r25 = r22;
        Ref$IntRef r26 = r11;
    L21:
        r20.L$0 = r18;     // Catch: Throwable -> L36
        r20.L$1 = r23;     // Catch: Throwable -> L36
        r20.L$2 = r26;     // Catch: Throwable -> L36
        r20.L$3 = r112;     // Catch: Throwable -> L36
        r20.L$4 = r21;     // Catch: Throwable -> L36
        r20.L$5 = r25;     // Catch: Throwable -> L36
        r20.L$6 = r10;     // Catch: Throwable -> L36
        r20.L$7 = r16;     // Catch: Throwable -> L36
        r20.label = 1;     // Catch: Throwable -> L36
        Object r27 = r16.a(r20);     // Catch: Throwable -> L36
        if (r27 != r24) goto L24;
        return r24;
    L24:
        Object r28 = r24;
        r6 = r112;
        r15 = r27;
        r11 = r26;
        r22 = r25;
        r19 = r28;
    L14:
        th = th;
        r21 = r5;
        goto L44
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        Ref$IntRef r113 = new Ref$IntRef();
        r113.element = 0;
        r26 = r113;
        r24 = r2;
        r25 = null;
        r112 = r12;
        r10 = r112;
        r23 = r13;
        r18 = r10;
        r16 = r12.iterator();     // Catch: Throwable -> L38
        r20 = r0;
        r21 = r18;
    L38:
        th = move-exception;
        r21 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$indexOfFirst$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a2 -> B:42:0x00a9). Please report as a decompilation issue!!! */
    public static final <E> Object O(p<? extends E> r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super Integer> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$indexOfLast$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$indexOfLast$1 r0 = (ChannelsKt__Channels_commonKt$indexOfLast$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$8;
        p<? extends E> r17 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$3;
        Ref$IntRef r8 = (Ref$IntRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r11 = r17;
        p<? extends E> r18 = r10;
        Ref$IntRef r19 = r8;
        Throwable r20 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r21 = r9;
        Ref$IntRef r22 = r7;
        Object r23 = r2;
        ChannelsKt__Channels_commonKt$indexOfLast$1 r24 = r0;
        p<? extends E> r25 = r5;
    L42:
    L34:
        Throwable th = th;
    L46:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r25, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r25, r20);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.d(r19.element);
    L28:
        if (r21.invoke((Object) r16.next()).booleanValue() == false) goto L30;
        r19.element = r22.element;     // Catch: Throwable -> L34
    L30:
        r22.element++;     // Catch: Throwable -> L34
        p<? extends E> r111 = r6;
        Object r26 = r23;
        Throwable r27 = r20;
        Ref$IntRef r28 = r22;
        Ref$IntRef r29 = r19;
    L21:
        r24.L$0 = r18;     // Catch: Throwable -> L34
        r24.L$1 = r21;     // Catch: Throwable -> L34
        r24.L$2 = r29;     // Catch: Throwable -> L34
        r24.L$3 = r28;     // Catch: Throwable -> L34
        r24.L$4 = r111;     // Catch: Throwable -> L34
        r24.L$5 = r25;     // Catch: Throwable -> L34
        r24.L$6 = r27;     // Catch: Throwable -> L34
        r24.L$7 = r11;     // Catch: Throwable -> L34
        r24.L$8 = r16;     // Catch: Throwable -> L34
        r24.label = 1;     // Catch: Throwable -> L34
        Object r30 = r16.a(r24);     // Catch: Throwable -> L34
        if (r30 != r26) goto L24;
        return r26;
    L24:
        Object r112 = r26;
        r6 = r111;
        r15 = r30;
        r19 = r29;
        r22 = r28;
        r20 = r27;
        r23 = r112;
    L14:
        th = th;
        r25 = r5;
        goto L46
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        Ref$IntRef r113 = new Ref$IntRef();
        r113.element = -1;
        Ref$IntRef r31 = new Ref$IntRef();
        r31.element = 0;
        r29 = r113;
        r28 = r31;
        r27 = null;
        r111 = r12;
        r21 = r13;
        r24 = r0;
        r18 = r111;
        r25 = r18;
        r16 = r12.iterator();     // Catch: Throwable -> L36
        r26 = r2;
        r11 = r25;
    L36:
        th = move-exception;
        r25 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$indexOfLast$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:37:0x00b7). Please report as a decompilation issue!!! */
    public static final <E> Object P(p<? extends E> r9, kotlin.coroutines.c<? super E> r10) {
        if ((r10 instanceof ChannelsKt__Channels_commonKt$last$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$last$1 r0 = (ChannelsKt__Channels_commonKt$last$1) r10;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r11 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L24;
        if (r3 == 1) goto L19;
        if (r3 != 2) goto L18;
        Object r12 = r0.L$5;
        ChannelIterator<? extends E> r4 = (ChannelIterator) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        Throwable r6 = (Throwable) r0.L$2;
        p<? extends E> r7 = (p) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L15
    L37:
        if (((Boolean) r11).booleanValue() == false) goto L41;
        E r13 = r4.next();     // Catch: Throwable -> L15
        r9 = r7;
    L33:
        r0.L$0 = r8;     // Catch: Throwable -> L45
        r0.L$1 = r9;     // Catch: Throwable -> L45
        r0.L$2 = r6;     // Catch: Throwable -> L45
        r0.L$3 = r5;     // Catch: Throwable -> L45
        r0.L$4 = r4;     // Catch: Throwable -> L45
        r0.L$5 = r13;     // Catch: Throwable -> L45
        r0.label = 2;     // Catch: Throwable -> L45
        Object r14 = r4.a(r0);     // Catch: Throwable -> L45
        if (r14 != r2) goto L36;
        return r2;
    L36:
        r7 = r9;
        r12 = r13;
        r11 = r14;
    L45:
        th = move-exception;
        p<? extends E> r15 = r9;
        th = th;
    L55:
        throw th;     // Catch: Throwable -> L48
    L48:
        th = move-exception;
        i.j(r15, th);
        throw th;
    L41:
        i.j(r7, r6);
        return r12;
    L15:
        th = th;
        r15 = r7;
        goto L55
    L18:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L19:
        ChannelIterator<? extends E> r16 = (ChannelIterator) r0.L$4;
        p<? extends E> r17 = (p) r0.L$3;
        Throwable r18 = (Throwable) r0.L$2;
        r15 = (p) r0.L$1;
        p<? extends E> r19 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L22
    L30:
        if (((Boolean) r11).booleanValue() == false) goto L44;
        r13 = r16.next();     // Catch: Throwable -> L22
        r8 = r19;
        p<? extends E> r20 = r17;
        r4 = r16;
        r9 = r15;
        r6 = r18;
        r5 = r20;
        goto L33
    L44:
        throw new NoSuchElementException("ReceiveChannel is empty.");     // Catch: Throwable -> L22
    L22:
        th = th;
        goto L55
    L24:
        kotlin.k.b(r11);
        ChannelIterator<? extends E> r21 = r9.iterator();     // Catch: Throwable -> L45
        r0.L$0 = r9;     // Catch: Throwable -> L45
        r0.L$1 = r9;     // Catch: Throwable -> L45
        r0.L$2 = null;     // Catch: Throwable -> L45
        r0.L$3 = r9;     // Catch: Throwable -> L45
        r0.L$4 = r21;     // Catch: Throwable -> L45
        r0.label = 1;     // Catch: Throwable -> L45
        Object r22 = r21.a(r0);     // Catch: Throwable -> L45
        if (r22 != r2) goto L28;
        return r2;
    L28:
        r15 = r9;
        r19 = r15;
        r16 = r21;
        r17 = r19;
        r18 = null;
        r11 = r22;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$last$1(r10);
        goto L8
    }

    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a1 -> B:46:0x00a8). Please report as a decompilation issue!!! */
    public static final <E> Object Q(p<? extends E> r13, kotlin.jvm.b.l<? super E, Boolean> r14, kotlin.coroutines.c<? super E> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$last$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$last$3 r0 = (ChannelsKt__Channels_commonKt$last$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Ref$BooleanRef r7 = (Ref$BooleanRef) r0.L$3;
        Ref$ObjectRef r8 = (Ref$ObjectRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        Ref$ObjectRef r12 = r8;
        Throwable r20 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r21 = r9;
        Ref$BooleanRef r22 = r7;
        Object r23 = r2;
        ChannelsKt__Channels_commonKt$last$3 r24 = r0;
        p<? extends E> r25 = r5;
    L46:
    L38:
        Throwable th = th;
    L52:
        throw th;     // Catch: Throwable -> L43
    L43:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r25, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L31;
        ?? r110 = (Object) r17.next();
        if (r21.invoke(r110).booleanValue() == false) goto L30;
        r12.element = r110;     // Catch: Throwable -> L38
        r22.element = true;     // Catch: Throwable -> L38
    L30:
        p<? extends E> r111 = r6;
        Object r26 = r23;
        Throwable r27 = r20;
        Ref$BooleanRef r28 = r22;
        Ref$ObjectRef r29 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L38
        r24.L$1 = r21;     // Catch: Throwable -> L38
        r24.L$2 = r29;     // Catch: Throwable -> L38
        r24.L$3 = r28;     // Catch: Throwable -> L38
        r24.L$4 = r111;     // Catch: Throwable -> L38
        r24.L$5 = r25;     // Catch: Throwable -> L38
        r24.L$6 = r27;     // Catch: Throwable -> L38
        r24.L$7 = r11;     // Catch: Throwable -> L38
        r24.L$8 = r17;     // Catch: Throwable -> L38
        r24.label = 1;     // Catch: Throwable -> L38
        Object r30 = r17.a(r24);     // Catch: Throwable -> L38
        if (r30 != r26) goto L24;
        return r26;
    L24:
        Object r112 = r26;
        r6 = r111;
        r16 = r30;
        r12 = r29;
        r22 = r28;
        r20 = r27;
        r23 = r112;
        goto L46
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L38
        kotlin.jvm.internal.q.b(1);
        i.j(r25, r20);
        kotlin.jvm.internal.q.a(1);
        if (r22.element == false) goto L37;
        return r12.element;
    L37:
        throw new NoSuchElementException("ReceiveChannel contains no element matching the predicate.");
    L14:
        th = th;
        r25 = r5;
        goto L52
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        Ref$ObjectRef r114 = new Ref$ObjectRef();
        r114.element = null;
        Ref$BooleanRef r31 = new Ref$BooleanRef();
        r31.element = false;
        r29 = r114;
        r28 = r31;
        r27 = null;
        r111 = r13;
        r21 = r14;
        r24 = r0;
        r19 = r111;
        r25 = r19;
        r17 = r13.iterator();     // Catch: Throwable -> L40
        r26 = r2;
        r11 = r25;
    L40:
        th = move-exception;
        r25 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$last$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a0 -> B:42:0x00a7). Please report as a decompilation issue!!! */
    public static final <E> Object R(p<? extends E> r12, E r13, kotlin.coroutines.c<? super Integer> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$lastIndexOf$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$lastIndexOf$1 r0 = (ChannelsKt__Channels_commonKt$lastIndexOf$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$8;
        p<? extends E> r17 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$3;
        Ref$IntRef r8 = (Ref$IntRef) r0.L$2;
        Object r9 = r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r11 = r17;
        p<? extends E> r18 = r10;
        Ref$IntRef r19 = r8;
        Throwable r20 = r4;
        Object r21 = r9;
        Ref$IntRef r22 = r7;
        Object r23 = r2;
        ChannelsKt__Channels_commonKt$lastIndexOf$1 r24 = r0;
        p<? extends E> r25 = r5;
    L42:
    L34:
        Throwable th = th;
    L48:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        i.j(r25, th);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        i.j(r25, r20);
        return kotlin.coroutines.jvm.internal.a.d(r19.element);
    L28:
        if (kotlin.jvm.internal.r.a(r21, r16.next()) == false) goto L30;
        r19.element = r22.element;     // Catch: Throwable -> L34
    L30:
        r22.element++;     // Catch: Throwable -> L34
        p<? extends E> r111 = r6;
        Object r26 = r23;
        Throwable r27 = r20;
        Ref$IntRef r28 = r22;
        Ref$IntRef r29 = r19;
    L21:
        r24.L$0 = r18;     // Catch: Throwable -> L34
        r24.L$1 = r21;     // Catch: Throwable -> L34
        r24.L$2 = r29;     // Catch: Throwable -> L34
        r24.L$3 = r28;     // Catch: Throwable -> L34
        r24.L$4 = r111;     // Catch: Throwable -> L34
        r24.L$5 = r25;     // Catch: Throwable -> L34
        r24.L$6 = r27;     // Catch: Throwable -> L34
        r24.L$7 = r11;     // Catch: Throwable -> L34
        r24.L$8 = r16;     // Catch: Throwable -> L34
        r24.label = 1;     // Catch: Throwable -> L34
        Object r30 = r16.a(r24);     // Catch: Throwable -> L34
        if (r30 != r26) goto L24;
        return r26;
    L24:
        Object r112 = r26;
        r6 = r111;
        r15 = r30;
        r19 = r29;
        r22 = r28;
        r20 = r27;
        r23 = r112;
    L14:
        th = th;
        r25 = r5;
        goto L48
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        Ref$IntRef r113 = new Ref$IntRef();
        r113.element = -1;
        Ref$IntRef r31 = new Ref$IntRef();
        r31.element = 0;
        r29 = r113;
        r28 = r31;
        r27 = null;
        r111 = r12;
        r21 = r13;
        r24 = r0;
        r18 = r111;
        r25 = r18;
        r16 = r12.iterator();     // Catch: Throwable -> L36
        r26 = r2;
        r11 = r25;
    L36:
        th = move-exception;
        r25 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$lastIndexOf$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00af -> B:38:0x00b3). Please report as a decompilation issue!!! */
    public static final <E> Object S(p<? extends E> r9, kotlin.coroutines.c<? super E> r10) {
        if ((r10 instanceof ChannelsKt__Channels_commonKt$lastOrNull$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$lastOrNull$1 r0 = (ChannelsKt__Channels_commonKt$lastOrNull$1) r10;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r11 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L22;
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r12 = r0.L$5;
        ChannelIterator<? extends E> r4 = (ChannelIterator) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        Throwable r6 = (Throwable) r0.L$2;
        p<? extends E> r7 = (p) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L20
    L38:
        if (((Boolean) r11).booleanValue() == false) goto L42;
        E r13 = r4.next();     // Catch: Throwable -> L20
    L33:
        r9 = r7;
        r0.L$0 = r8;     // Catch: Throwable -> L44
        r0.L$1 = r9;     // Catch: Throwable -> L44
        r0.L$2 = r6;     // Catch: Throwable -> L44
        r0.L$3 = r5;     // Catch: Throwable -> L44
        r0.L$4 = r4;     // Catch: Throwable -> L44
        r0.L$5 = r13;     // Catch: Throwable -> L44
        r0.label = 2;     // Catch: Throwable -> L44
        Object r14 = r4.a(r0);     // Catch: Throwable -> L44
        if (r14 != r2) goto L37;
        return r2;
    L37:
        r7 = r9;
        r12 = r13;
        r11 = r14;
    L44:
        th = move-exception;
        r7 = r9;
        th = th;
    L54:
        throw th;     // Catch: Throwable -> L47
    L47:
        th = move-exception;
        i.j(r7, th);
        throw th;
    L42:
        i.j(r7, r6);
        return r12;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator<? extends E> r15 = (ChannelIterator) r0.L$4;
        p<? extends E> r16 = (p) r0.L$3;
        r6 = (Throwable) r0.L$2;
        r7 = (p) r0.L$1;
        r8 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L20
    L28:
        if (((Boolean) r11).booleanValue() == true) goto L31;
        i.j(r7, r6);
        return null;
    L31:
        r13 = r15.next();     // Catch: Throwable -> L20
        r5 = r16;
        r4 = r15;
        goto L33
    L22:
        kotlin.k.b(r11);
        ChannelIterator<? extends E> r17 = r9.iterator();     // Catch: Throwable -> L44
        r0.L$0 = r9;     // Catch: Throwable -> L44
        r0.L$1 = r9;     // Catch: Throwable -> L44
        r0.L$2 = null;     // Catch: Throwable -> L44
        r0.L$3 = r9;     // Catch: Throwable -> L44
        r0.L$4 = r17;     // Catch: Throwable -> L44
        r0.label = 1;     // Catch: Throwable -> L44
        Object r18 = r17.a(r0);     // Catch: Throwable -> L44
        if (r18 != r2) goto L26;
        return r2;
    L26:
        r7 = r9;
        r8 = r7;
        r6 = null;
        r15 = r17;
        r11 = r18;
        r16 = r8;
    L20:
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$lastOrNull$1(r10);
        goto L8
    }

    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0092 -> B:42:0x0098). Please report as a decompilation issue!!! */
    public static final <E> Object T(p<? extends E> r13, kotlin.jvm.b.l<? super E, Boolean> r14, kotlin.coroutines.c<? super E> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$lastOrNull$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$lastOrNull$3 r0 = (ChannelsKt__Channels_commonKt$lastOrNull$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$7;
        p<? extends E> r18 = (p) r0.L$6;
        Throwable r4 = (Throwable) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        Ref$ObjectRef r7 = (Ref$ObjectRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r8 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r10 = r18;
        p<? extends E> r19 = r9;
        Ref$ObjectRef r11 = r7;
        Object r12 = r2;
        ChannelsKt__Channels_commonKt$lastOrNull$3 r20 = r0;
        p<? extends E> r21 = r5;
        Throwable r22 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r23 = r8;
    L42:
    L34:
        Throwable th = th;
    L48:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L31;
        ?? r110 = (Object) r17.next();
        if (r23.invoke(r110).booleanValue() == false) goto L30;
        r11.element = r110;     // Catch: Throwable -> L34
    L30:
        p<? extends E> r111 = r6;
        Object r24 = r12;
        Throwable r25 = r22;
        Ref$ObjectRef r26 = r11;
    L21:
        r20.L$0 = r19;     // Catch: Throwable -> L34
        r20.L$1 = r23;     // Catch: Throwable -> L34
        r20.L$2 = r26;     // Catch: Throwable -> L34
        r20.L$3 = r111;     // Catch: Throwable -> L34
        r20.L$4 = r21;     // Catch: Throwable -> L34
        r20.L$5 = r25;     // Catch: Throwable -> L34
        r20.L$6 = r10;     // Catch: Throwable -> L34
        r20.L$7 = r17;     // Catch: Throwable -> L34
        r20.label = 1;     // Catch: Throwable -> L34
        Object r27 = r17.a(r20);     // Catch: Throwable -> L34
        if (r27 != r24) goto L24;
        return r24;
    L24:
        Object r112 = r24;
        r6 = r111;
        r16 = r27;
        r11 = r26;
        r22 = r25;
        r12 = r112;
        goto L42
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r22);
        kotlin.jvm.internal.q.a(1);
        return r11.element;
    L14:
        th = th;
        r21 = r5;
        goto L48
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        Ref$ObjectRef r114 = new Ref$ObjectRef();
        r114.element = null;
        r26 = r114;
        r24 = r2;
        r25 = null;
        r111 = r13;
        r10 = r111;
        r20 = r0;
        r21 = r10;
        r17 = r13.iterator();     // Catch: Throwable -> L36
        r23 = r14;
        r19 = r21;
    L36:
        th = move-exception;
        r21 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$lastOrNull$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:47:0x00ae). Please report as a decompilation issue!!! */
    public static final <E, R, C extends Collection<? super R>> Object U(p<? extends E> r17, C r18, kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r19, kotlin.coroutines.c<? super C> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1 r1 = (ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        int r5 = 1;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r6 = (ChannelIterator) r1.L$9;
        p<? extends E> r7 = (p) r1.L$8;
        Throwable r8 = (Throwable) r1.L$7;
        p<? extends E> r9 = (p) r1.L$6;
        p<? extends E> r10 = (p) r1.L$5;
        Ref$IntRef r11 = (Ref$IntRef) r1.L$4;
        p<? extends E> r12 = (p) r1.L$3;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r13 = (kotlin.jvm.b.p) r1.L$2;
        Collection r14 = (Collection) r1.L$1;
        p<? extends E> r15 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1 r16 = r1;
        p<? extends E> r21 = r12;
        ChannelIterator r110 = r6;
        p<? extends E> r22 = r9;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r23 = r13;
        Throwable r111 = r8;
        Collection r24 = r14;
        Ref$IntRef r112 = r11;
        Object r25 = r3;
        p<? extends E> r26 = r10;
    L47:
    L34:
        th = th;
    L38:
        Throwable r27 = th;
    L45:
        throw r27;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r27);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        Object r28 = r110.next();     // Catch: Throwable -> L34
        int r113 = r112.element;     // Catch: Throwable -> L34
        r112.element = r113 + 1;     // Catch: Throwable -> L34
        f0 r114 = new f0(r113, r28);     // Catch: Throwable -> L34
        int r29 = r114.a();     // Catch: Throwable -> L34
        R r30 = r23.invoke(kotlin.coroutines.jvm.internal.a.d(r29), (Object) r114.b());     // Catch: Throwable -> L34
        if (r30 == null) goto L30;
        r24.add(r30);     // Catch: Throwable -> L34
    L30:
        p<? extends E> r31 = r15;
        r5 = 1;
    L21:
        r16.L$0 = r31;     // Catch: Throwable -> L34
        r16.L$1 = r24;     // Catch: Throwable -> L34
        r16.L$2 = r23;     // Catch: Throwable -> L34
        r16.L$3 = r21;     // Catch: Throwable -> L34
        r16.L$4 = r112;     // Catch: Throwable -> L34
        r16.L$5 = r26;     // Catch: Throwable -> L34
        r16.L$6 = r22;     // Catch: Throwable -> L34
        r16.L$7 = r111;     // Catch: Throwable -> L34
        r16.L$8 = r7;     // Catch: Throwable -> L34
        r16.L$9 = r110;     // Catch: Throwable -> L34
        r16.label = r5;     // Catch: Throwable -> L34
        Object r115 = r110.a(r16);     // Catch: Throwable -> L34
        if (r115 != r25) goto L24;
        return r25;
    L24:
        r15 = r31;
        r0 = r115;
        goto L47
    L31:
        kotlin.v r32 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r111);
        kotlin.jvm.internal.q.a(1);
        return r24;
    L14:
        th = move-exception;
        r27 = th;
        r22 = r9;
        goto L45
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$IntRef r33 = new Ref$IntRef();
        r33.element = 0;
        r24 = r18;
        r23 = r19;
        r112 = r33;
        r16 = r1;
        r25 = r3;
        r111 = null;
        r110 = r17.iterator();     // Catch: Throwable -> L36
        r31 = r17;
        r21 = r31;
        r26 = r21;
        r22 = r26;
        r7 = r22;
    L36:
        th = th;
        r22 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1(r20);
        goto L8
    }

    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00a3: MOVE (r3 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x00a2 */
    public static final <E, R, C extends t<? super R>> Object V(p<? extends E> r19, C r20, kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r21, kotlin.coroutines.c<? super C> r22) {
        if ((r22 instanceof ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3 r1 = (ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3) r22;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        int r5 = 1;
        if (r4 != 0) goto L52;
        kotlin.k.b(r0);
        Ref$IntRef r6 = new Ref$IntRef();
        r6.element = 0;
        t r7 = r20;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r8 = r21;
        Ref$IntRef r9 = r6;
        ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3 r10 = r1;
        Object r11 = r3;
        Throwable r12 = null;
        ChannelIterator r13 = r19.iterator();     // Catch: Throwable -> L45
        p<? extends E> r14 = r19;
        p<? extends E> r15 = r14;
        p<? extends E> r16 = r15;
        p<? extends E> r17 = r16;
        p<? extends E> r18 = r17;
    L53:
        r10.L$0 = r14;     // Catch: Throwable -> L43
        r10.L$1 = r7;     // Catch: Throwable -> L43
        r10.L$2 = r8;     // Catch: Throwable -> L43
        r10.L$3 = r15;     // Catch: Throwable -> L43
        r10.L$4 = r9;     // Catch: Throwable -> L43
        r10.L$5 = r16;     // Catch: Throwable -> L43
        r10.L$6 = r17;     // Catch: Throwable -> L43
        r10.L$7 = r12;     // Catch: Throwable -> L43
        r10.L$8 = r18;     // Catch: Throwable -> L43
        r10.L$9 = r13;     // Catch: Throwable -> L43
        r10.label = r5;     // Catch: Throwable -> L43
        Object r110 = r13.a(r10);     // Catch: Throwable -> L43
        if (r110 != r11) goto L28;
        return r11;
    L28:
        p<? extends E> r111 = r14;
        r0 = r110;
        Object r112 = r11;
        p<? extends E> r113 = r15;
        r1 = r10;
        Ref$IntRef r114 = r9;
        p<? extends E> r23 = r16;
        r3 = r112;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r115 = r8;
        t r24 = r7;
        Throwable r25 = r12;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r116 = r115;
    L30:
        if (((Boolean) r0).booleanValue() == false) goto L40;
        Object r26 = r13.next();     // Catch: Throwable -> L43
        int r27 = r114.element;     // Catch: Throwable -> L43
        r114.element = r27 + 1;     // Catch: Throwable -> L43
        f0 r117 = new f0(r27, r26);     // Catch: Throwable -> L43
        int r28 = r117.a();     // Catch: Throwable -> L43
        XI.AbstractBinderC0002XI r29 = (Object) r117.b();
        Object r118 = r3;
        R r30 = r116.invoke(kotlin.coroutines.jvm.internal.a.d(r28), r29);     // Catch: Throwable -> L43
        if (r30 == null) goto L38;
        r1.L$0 = r111;     // Catch: Throwable -> L43
        r1.L$1 = r24;     // Catch: Throwable -> L43
        r1.L$2 = r116;     // Catch: Throwable -> L43
        r1.L$3 = r113;     // Catch: Throwable -> L43
        r1.L$4 = r114;     // Catch: Throwable -> L43
        r1.L$5 = r23;     // Catch: Throwable -> L43
        r1.L$6 = r17;     // Catch: Throwable -> L43
        r1.L$7 = r25;     // Catch: Throwable -> L43
        r1.L$8 = r18;     // Catch: Throwable -> L43
        r1.L$9 = r13;     // Catch: Throwable -> L43
        r1.L$10 = r26;     // Catch: Throwable -> L43
        r1.L$11 = r26;     // Catch: Throwable -> L43
        r1.L$12 = r117;     // Catch: Throwable -> L43
        r1.I$0 = r28;     // Catch: Throwable -> L43
        r1.L$13 = r29;     // Catch: Throwable -> L43
        r1.L$14 = r30;     // Catch: Throwable -> L43
        r1.label = 2;     // Catch: Throwable -> L43
        if (r24.F(r30, r1) != r118) goto L36;
        return r118;
    L36:
        r3 = r118;
        t r119 = r24;
        p<? extends E> r31 = r17;
        ChannelIterator r32 = r13;
        t r120 = r119;
    L37:
        Ref$IntRef r121 = r114;
        r10 = r1;
        r15 = r113;
        r11 = r3;
        r16 = r23;
        r9 = r121;
        t r122 = r120;
        r13 = r32;
        r17 = r31;
        r8 = r116;
        r12 = r25;
        r7 = r122;
        r14 = r111;
        r5 = 1;
        goto L53
    L38:
        r16 = r23;
        r9 = r114;
        r10 = r1;
        r15 = r113;
        r11 = r118;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r123 = r116;
        r12 = r25;
        r7 = r24;
        r8 = r123;
        r14 = r111;
        r5 = 1;
        goto L53
    L40:
        kotlin.v r33 = kotlin.v.f15822a;     // Catch: Throwable -> L43
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r25);
        kotlin.jvm.internal.q.a(1);
        return r24;
    L43:
        Throwable th = th;
    L47:
        Throwable r34 = th;
    L57:
        throw r34;     // Catch: Throwable -> L49
    L49:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r34);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L45:
        th = th;
        r17 = r19;
        goto L47
    L52:
        if (r4 == 1) goto L17;
        if (r4 != 2) goto L16;
        Object r35 = r1.L$14;
        Object r36 = r1.L$13;
        int r37 = r1.I$0;
        f0 r38 = (f0) r1.L$12;
        Object r39 = r1.L$11;
        Object r40 = r1.L$10;
        r32 = (ChannelIterator) r1.L$9;
        r18 = (p) r1.L$8;
        r25 = (Throwable) r1.L$7;
        r31 = (p) r1.L$6;
        r23 = (p) r1.L$5;
        r114 = (Ref$IntRef) r1.L$4;
        r113 = (p) r1.L$3;
        r116 = (kotlin.jvm.b.p) r1.L$2;
        r120 = (t) r1.L$1;
        r111 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        goto L37
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator r41 = (ChannelIterator) r1.L$9;
        r18 = (p) r1.L$8;
        r25 = (Throwable) r1.L$7;
        p<? extends E> r42 = (p) r1.L$6;
        r23 = (p) r1.L$5;
        r114 = (Ref$IntRef) r1.L$4;
        r113 = (p) r1.L$3;
        r116 = (kotlin.jvm.b.p) r1.L$2;
        t r124 = (t) r1.L$1;
        r111 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r13 = r41;
        r17 = r42;
        r24 = r124;
    L20:
        th = move-exception;
        r34 = th;
        r17 = r8;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3(r22);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a6 -> B:42:0x00a9). Please report as a decompilation issue!!! */
    public static final <E, R, C extends Collection<? super R>> Object W(p<? extends E> r18, C r19, kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r20, kotlin.coroutines.c<? super C> r21) {
        if ((r21 instanceof ChannelsKt__Channels_commonKt$mapIndexedTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapIndexedTo$1 r1 = (ChannelsKt__Channels_commonKt$mapIndexedTo$1) r21;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$8;
        p<? extends E> r6 = (p) r1.L$7;
        Throwable r7 = (Throwable) r1.L$6;
        p<? extends E> r8 = (p) r1.L$5;
        p<? extends E> r9 = (p) r1.L$4;
        Ref$IntRef r10 = (Ref$IntRef) r1.L$3;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r11 = (kotlin.jvm.b.p) r1.L$2;
        Collection r12 = (Collection) r1.L$1;
        p<? extends E> r13 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$mapIndexedTo$1 r14 = r1;
        p<? extends E> r15 = r9;
        Object r16 = r3;
        p<? extends E> r17 = r8;
        ChannelIterator r22 = r5;
        p<? extends E> r23 = r6;
        Collection r24 = r12;
        Ref$IntRef r110 = r10;
        Throwable r111 = r7;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r25 = r11;
    L42:
    L31:
        th = th;
    L35:
        Throwable r26 = th;
    L46:
        throw r26;     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r26);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L28;
        XI.AbstractBinderC0002XI.C0003XI r27 = (Object) r22.next();
        int r112 = r110.element;     // Catch: Throwable -> L31
        r110.element = r112 + 1;     // Catch: Throwable -> L31
        r24.add(r25.invoke(kotlin.coroutines.jvm.internal.a.d(r112), r27));     // Catch: Throwable -> L31
        p<? extends E> r28 = r13;
    L21:
        r14.L$0 = r28;     // Catch: Throwable -> L31
        r14.L$1 = r24;     // Catch: Throwable -> L31
        r14.L$2 = r25;     // Catch: Throwable -> L31
        r14.L$3 = r110;     // Catch: Throwable -> L31
        r14.L$4 = r15;     // Catch: Throwable -> L31
        r14.L$5 = r17;     // Catch: Throwable -> L31
        r14.L$6 = r111;     // Catch: Throwable -> L31
        r14.L$7 = r23;     // Catch: Throwable -> L31
        r14.L$8 = r22;     // Catch: Throwable -> L31
        r14.label = 1;     // Catch: Throwable -> L31
        Object r113 = r22.a(r14);     // Catch: Throwable -> L31
        if (r113 != r16) goto L24;
        return r16;
    L24:
        r13 = r28;
        r0 = r113;
        goto L42
    L28:
        kotlin.v r29 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r111);
        kotlin.jvm.internal.q.a(1);
        return r24;
    L14:
        th = move-exception;
        r26 = th;
        r17 = r8;
        goto L46
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$IntRef r30 = new Ref$IntRef();
        r30.element = 0;
        r25 = r20;
        r110 = r30;
        r14 = r1;
        r16 = r3;
        r111 = null;
        r22 = r18.iterator();     // Catch: Throwable -> L33
        r28 = r18;
        r15 = r28;
        r17 = r15;
        r23 = r17;
        r24 = r19;
    L33:
        th = th;
        r17 = r18;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$mapIndexedTo$1(r21);
        goto L8
    }

    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00a6: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x00a5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0130 -> B:52:0x00c7). Please report as a decompilation issue!!! */
    public static final <E, R, C extends t<? super R>> Object X(p<? extends E> r20, C r21, kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r22, kotlin.coroutines.c<? super C> r23) {
        if ((r23 instanceof ChannelsKt__Channels_commonKt$mapIndexedTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapIndexedTo$3 r1 = (ChannelsKt__Channels_commonKt$mapIndexedTo$3) r23;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 != 0) goto L49;
        kotlin.k.b(r0);
        Ref$IntRef r5 = new Ref$IntRef();
        r5.element = 0;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r7 = r22;
        Ref$IntRef r8 = r5;
        ChannelsKt__Channels_commonKt$mapIndexedTo$3 r9 = r1;
        Object r10 = r3;
        Throwable r11 = null;
        ChannelIterator r12 = r20.iterator();     // Catch: Throwable -> L40
        p<? extends E> r6 = r20;
        p<? extends E> r13 = r6;
        p<? extends E> r14 = r13;
        p<? extends E> r15 = r14;
        t r16 = r21;
    L52:
        r9.L$0 = r6;     // Catch: Throwable -> L38
        r9.L$1 = r16;     // Catch: Throwable -> L38
        r9.L$2 = r7;     // Catch: Throwable -> L38
        r9.L$3 = r8;     // Catch: Throwable -> L38
        r9.L$4 = r13;     // Catch: Throwable -> L38
        r9.L$5 = r14;     // Catch: Throwable -> L38
        r9.L$6 = r11;     // Catch: Throwable -> L38
        r9.L$7 = r15;     // Catch: Throwable -> L38
        r9.L$8 = r12;     // Catch: Throwable -> L38
        r9.label = 1;     // Catch: Throwable -> L38
        Object r17 = r12.a(r9);     // Catch: Throwable -> L38
        if (r17 != r10) goto L28;
        return r10;
    L28:
        p<? extends E> r18 = r6;
        r0 = r17;
        ChannelsKt__Channels_commonKt$mapIndexedTo$3 r19 = r9;
        p<? extends E> r24 = r13;
        r1 = r19;
        t r110 = r16;
        p<? extends E> r25 = r15;
        ChannelIterator r26 = r12;
        t r111 = r110;
        Throwable r112 = r11;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r113 = r7;
        Throwable r27 = r112;
    L30:
        if (((Boolean) r0).booleanValue() == false) goto L35;
        XI.AbstractBinderC0002XI r28 = (Object) r26.next();
        int r114 = r8.element;     // Catch: Throwable -> L38
        r8.element = r114 + 1;     // Catch: Throwable -> L38
        R r115 = r113.invoke(kotlin.coroutines.jvm.internal.a.d(r114), r28);     // Catch: Throwable -> L38
        r1.L$0 = r18;     // Catch: Throwable -> L38
        r1.L$1 = r111;     // Catch: Throwable -> L38
        r1.L$2 = r113;     // Catch: Throwable -> L38
        r1.L$3 = r8;     // Catch: Throwable -> L38
        r1.L$4 = r24;     // Catch: Throwable -> L38
        r1.L$5 = r14;     // Catch: Throwable -> L38
        r1.L$6 = r27;     // Catch: Throwable -> L38
        r1.L$7 = r25;     // Catch: Throwable -> L38
        r1.L$8 = r26;     // Catch: Throwable -> L38
        r1.L$9 = r28;     // Catch: Throwable -> L38
        r1.L$10 = r28;     // Catch: Throwable -> L38
        r1.label = 2;     // Catch: Throwable -> L38
        if (r111.F(r115, r1) != r10) goto L34;
        return r10;
    L34:
        r6 = r18;
        p<? extends E> r116 = r24;
        r9 = r1;
        r13 = r116;
        t r117 = r111;
        r12 = r26;
        r15 = r25;
        r16 = r117;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r118 = r113;
        r11 = r27;
        r7 = r118;
        goto L52
    L35:
        kotlin.v r29 = kotlin.v.f15822a;     // Catch: Throwable -> L38
        kotlin.jvm.internal.q.b(1);
        i.j(r14, r27);
        kotlin.jvm.internal.q.a(1);
        return r111;
    L38:
        Throwable th = th;
    L42:
        Throwable r30 = th;
    L50:
        throw r30;     // Catch: Throwable -> L44
    L44:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r14, r30);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L40:
        th = th;
        r14 = r20;
        goto L42
    L49:
        if (r4 == 1) goto L17;
        if (r4 != 2) goto L16;
        Object r31 = r1.L$10;
        Object r32 = r1.L$9;
        ChannelIterator r33 = (ChannelIterator) r1.L$8;
        p<? extends E> r34 = (p) r1.L$7;
        Throwable r35 = (Throwable) r1.L$6;
        p<? extends E> r36 = (p) r1.L$5;
        p<? extends E> r37 = (p) r1.L$4;
        Ref$IntRef r119 = (Ref$IntRef) r1.L$3;
        kotlin.jvm.b.p<? super Integer, ? super E, ? extends R> r120 = (kotlin.jvm.b.p) r1.L$2;
        t r121 = (t) r1.L$1;
        p<? extends E> r122 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r6 = r122;
        r9 = r1;
        r13 = r37;
        r10 = r3;
        r14 = r36;
        r8 = r119;
        r12 = r33;
        r15 = r34;
        r16 = r121;
        r11 = r35;
        r7 = r120;
        goto L52
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        r26 = (ChannelIterator) r1.L$8;
        r25 = (p) r1.L$7;
        r27 = (Throwable) r1.L$6;
        p<? extends E> r38 = (p) r1.L$5;
        r24 = (p) r1.L$4;
        Ref$IntRef r123 = (Ref$IntRef) r1.L$3;
        r113 = (kotlin.jvm.b.p) r1.L$2;
        r111 = (t) r1.L$1;
        r18 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r10 = r3;
        r14 = r38;
        r8 = r123;
    L20:
        th = move-exception;
        r30 = th;
        r14 = r8;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$mapIndexedTo$3(r23);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, R, C extends Collection<? super R>> Object Y(p<? extends E> r10, C r11, kotlin.jvm.b.l<? super E, ? extends R> r12, kotlin.coroutines.c<? super C> r13) {
        if ((r13 instanceof ChannelsKt__Channels_commonKt$mapNotNullTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapNotNullTo$1 r0 = (ChannelsKt__Channels_commonKt$mapNotNullTo$1) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r15 = (ChannelIterator) r0.L$7;
        p<? extends E> r16 = (p) r0.L$6;
        Throwable r17 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends R> r6 = (kotlin.jvm.b.l) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$mapNotNullTo$1 r9 = r0;
        p<? extends E> r18 = r16;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        Collection r21 = r7;
        ChannelsKt__Channels_commonKt$mapNotNullTo$1 r22 = r9;
        Throwable r23 = r17;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r14).booleanValue() == false) goto L31;
        R r111 = r6.invoke((Object) r15.next());     // Catch: Throwable -> L14
        if (r111 == null) goto L30;
        r21.add(r111);     // Catch: Throwable -> L14
    L30:
        p<? extends E> r112 = r4;
        kotlin.jvm.b.l<? super E, ? extends R> r24 = r6;
        ChannelsKt__Channels_commonKt$mapNotNullTo$1 r25 = r22;
        Object r26 = r20;
    L44:
        r25.L$0 = r19;     // Catch: Throwable -> L34
        r25.L$1 = r21;     // Catch: Throwable -> L34
        r25.L$2 = r24;     // Catch: Throwable -> L34
        r25.L$3 = r110;     // Catch: Throwable -> L34
        r25.L$4 = r112;     // Catch: Throwable -> L34
        r25.L$5 = r23;     // Catch: Throwable -> L34
        r25.L$6 = r18;     // Catch: Throwable -> L34
        r25.L$7 = r15;     // Catch: Throwable -> L34
        r25.label = 1;     // Catch: Throwable -> L34
        Object r27 = r15.a(r25);     // Catch: Throwable -> L34
        if (r27 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, ? extends R> r28 = r24;
        r4 = r112;
        r14 = r27;
        r20 = r26;
        r22 = r25;
        r6 = r28;
    L34:
        Throwable th = th;
    L48:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r112, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r112 = r4;
        goto L48
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r14);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r112 = r10;
        r18 = r112;
        r21 = r11;
        r19 = r18;
        r15 = r10.iterator();     // Catch: Throwable -> L36
        r24 = r12;
        r110 = r19;
    L36:
        th = move-exception;
        r112 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$mapNotNullTo$1(r13);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Object, kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00fc -> B:50:0x0097). Please report as a decompilation issue!!! */
    public static final <E, R, C extends t<? super R>> Object Z(p<? extends E> r12, C r13, kotlin.jvm.b.l<? super E, ? extends R> r14, kotlin.coroutines.c<? super C> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$mapNotNullTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapNotNullTo$3 r0 = (ChannelsKt__Channels_commonKt$mapNotNullTo$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        ?? r3 = r0.label;
        if (r3 != 0) goto L52;
        kotlin.k.b(r16);
        ChannelsKt__Channels_commonKt$mapNotNullTo$3 r5 = r0;
        Object r6 = r2;
        ChannelIterator r7 = r12.iterator();     // Catch: Throwable -> L44
        t r4 = r13;
        kotlin.jvm.b.l<? super E, ? extends R> r8 = r14;
        Throwable r9 = null;
        p<? extends E> r17 = r12;
        ?? r18 = r17;
        ?? r19 = r18;
    L50:
        r5.L$0 = r12;     // Catch: Throwable -> L42
        r5.L$1 = r4;     // Catch: Throwable -> L42
        r5.L$2 = r8;     // Catch: Throwable -> L42
        r5.L$3 = r17;     // Catch: Throwable -> L42
        r5.L$4 = r18;     // Catch: Throwable -> L42
        r5.L$5 = r9;     // Catch: Throwable -> L42
        r5.L$6 = r19;     // Catch: Throwable -> L42
        r5.L$7 = r7;     // Catch: Throwable -> L42
        r5.label = 1;     // Catch: Throwable -> L42
        Object r10 = r7.a(r5);     // Catch: Throwable -> L42
        if (r10 != r6) goto L28;
        return r6;
    L28:
        p<? extends E> r11 = r12;
        ChannelIterator r110 = r7;
        t r20 = r4;
        r0 = r5;
        p<? extends E> r21 = r17;
        ?? r111 = r19;
        r16 = r10;
        Object r112 = r6;
        kotlin.jvm.b.l<? super E, ? extends R> r22 = r8;
        r2 = r112;
        r18 = r18;
    L30:
        if (((Boolean) r16).booleanValue() == false) goto L39;
        Object r113 = (Object) r110.next();
        R r23 = r22.invoke(r113);     // Catch: Throwable -> L42
        if (r23 == null) goto L38;
        r0.L$0 = r11;     // Catch: Throwable -> L42
        r0.L$1 = r20;     // Catch: Throwable -> L42
        r0.L$2 = r22;     // Catch: Throwable -> L42
        r0.L$3 = r21;     // Catch: Throwable -> L42
        r0.L$4 = r18;     // Catch: Throwable -> L42
        r0.L$5 = r9;     // Catch: Throwable -> L42
        r0.L$6 = r111;     // Catch: Throwable -> L42
        r0.L$7 = r110;     // Catch: Throwable -> L42
        r0.L$8 = r113;     // Catch: Throwable -> L42
        r0.L$9 = r113;     // Catch: Throwable -> L42
        r0.L$10 = r23;     // Catch: Throwable -> L42
        r0.label = 2;     // Catch: Throwable -> L42
        if (r20.F(r23, r0) != r2) goto L37;
        return r2;
    L37:
        r19 = r111;
        r17 = r21;
        r5 = r0;
        r4 = r20;
        r7 = r110;
        r12 = r11;
        r9 = r9;
        r18 = r18;
        kotlin.jvm.b.l<? super E, ? extends R> r114 = r22;
        r6 = r2;
        r8 = r114;
        goto L50
    L38:
        r19 = r111;
        r17 = r21;
        r5 = r0;
        r4 = r20;
        r7 = r110;
        r12 = r11;
        kotlin.jvm.b.l<? super E, ? extends R> r115 = r22;
        r6 = r2;
        r8 = r115;
        goto L50
    L39:
        kotlin.v r116 = kotlin.v.f15822a;     // Catch: Throwable -> L42
        kotlin.jvm.internal.q.b(1);
        i.j(r18, r9);
        kotlin.jvm.internal.q.a(1);
        return r20;
    L42:
        th = th;
    L55:
        throw th;     // Catch: Throwable -> L47
    L47:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r18, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L44:
        th = move-exception;
        r18 = r12;
        th = th;
        goto L55
    L52:
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r117 = r0.L$10;
        Object r118 = r0.L$9;
        Object r119 = r0.L$8;
        ChannelIterator r120 = (ChannelIterator) r0.L$7;
        p r121 = (p) r0.L$6;
        Throwable r122 = (Throwable) r0.L$5;
        p r24 = (p) r0.L$4;
        p<? extends E> r25 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends R> r26 = (kotlin.jvm.b.l) r0.L$2;
        t r27 = (t) r0.L$1;
        p<? extends E> r28 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L20
        r19 = r121;
        r17 = r25;
        r5 = r0;
        r4 = r27;
        r7 = r120;
        r12 = r28;
        r9 = r122;
        r18 = r24;
        r6 = r2;
        r8 = r26;
        goto L50
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        r110 = (ChannelIterator) r0.L$7;
        p r123 = (p) r0.L$6;
        Throwable r124 = (Throwable) r0.L$5;
        p r29 = (p) r0.L$4;
        r21 = (p) r0.L$3;
        r22 = (kotlin.jvm.b.l) r0.L$2;
        r20 = (t) r0.L$1;
        r11 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L20
        r9 = r124;
        r18 = r29;
        r111 = r123;
    L20:
        th = th;
        r18 = r3;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$mapNotNullTo$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    public static final <E> Object a(p<? extends E> r10, kotlin.jvm.b.l<? super E, Boolean> r11, kotlin.coroutines.c<? super Boolean> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$all$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$all$1 r0 = (ChannelsKt__Channels_commonKt$all$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r15 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r7 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        p<? extends E> r9 = r15;
        p<? extends E> r16 = r8;
        Throwable r17 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$all$1 r20 = r0;
        p<? extends E> r21 = r5;
    L44:
    L36:
        Throwable th = th;
    L47:
        throw th;     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.a(true);
    L28:
        if (r18.invoke((Object) r14.next()).booleanValue() == true) goto L32;
        Boolean r111 = kotlin.coroutines.jvm.internal.a.a(false);     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(2);
        return r111;
    L32:
        p<? extends E> r112 = r6;
        Object r22 = r19;
        Throwable r23 = r17;
    L21:
        r20.L$0 = r16;     // Catch: Throwable -> L36
        r20.L$1 = r18;     // Catch: Throwable -> L36
        r20.L$2 = r112;     // Catch: Throwable -> L36
        r20.L$3 = r21;     // Catch: Throwable -> L36
        r20.L$4 = r23;     // Catch: Throwable -> L36
        r20.L$5 = r9;     // Catch: Throwable -> L36
        r20.L$6 = r14;     // Catch: Throwable -> L36
        r20.label = 1;     // Catch: Throwable -> L36
        Object r24 = r14.a(r20);     // Catch: Throwable -> L36
        if (r24 != r22) goto L24;
        return r22;
    L24:
        Object r25 = r22;
        r6 = r112;
        r13 = r24;
        r17 = r23;
        r19 = r25;
    L14:
        th = th;
        r21 = r5;
        goto L47
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r112 = r10;
        r21 = r112;
        r9 = r21;
        r14 = r10.iterator();     // Catch: Throwable -> L38
        r18 = r11;
        r16 = r9;
    L38:
        th = move-exception;
        r21 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$all$1(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, R, C extends Collection<? super R>> Object a0(p<? extends E> r10, C r11, kotlin.jvm.b.l<? super E, ? extends R> r12, kotlin.coroutines.c<? super C> r13) {
        if ((r13 instanceof ChannelsKt__Channels_commonKt$mapTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapTo$1 r0 = (ChannelsKt__Channels_commonKt$mapTo$1) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r15 = (ChannelIterator) r0.L$7;
        p<? extends E> r16 = (p) r0.L$6;
        Throwable r17 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends R> r6 = (kotlin.jvm.b.l) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$mapTo$1 r9 = r0;
        p<? extends E> r18 = r16;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        Collection r21 = r7;
        ChannelsKt__Channels_commonKt$mapTo$1 r22 = r9;
        Throwable r23 = r17;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r14).booleanValue() == false) goto L28;
        r21.add(r6.invoke((Object) r15.next()));     // Catch: Throwable -> L14
        p<? extends E> r111 = r4;
        kotlin.jvm.b.l<? super E, ? extends R> r24 = r6;
        ChannelsKt__Channels_commonKt$mapTo$1 r25 = r22;
        Object r26 = r20;
    L41:
        r25.L$0 = r19;     // Catch: Throwable -> L31
        r25.L$1 = r21;     // Catch: Throwable -> L31
        r25.L$2 = r24;     // Catch: Throwable -> L31
        r25.L$3 = r110;     // Catch: Throwable -> L31
        r25.L$4 = r111;     // Catch: Throwable -> L31
        r25.L$5 = r23;     // Catch: Throwable -> L31
        r25.L$6 = r18;     // Catch: Throwable -> L31
        r25.L$7 = r15;     // Catch: Throwable -> L31
        r25.label = 1;     // Catch: Throwable -> L31
        Object r27 = r15.a(r25);     // Catch: Throwable -> L31
        if (r27 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, ? extends R> r28 = r24;
        r4 = r111;
        r14 = r27;
        r20 = r26;
        r22 = r25;
        r6 = r28;
    L31:
        Throwable th = th;
    L45:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r111, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L28:
        kotlin.v r112 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r111 = r4;
        goto L45
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r14);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r111 = r10;
        r18 = r111;
        r21 = r11;
        r19 = r18;
        r15 = r10.iterator();     // Catch: Throwable -> L33
        r24 = r12;
        r110 = r19;
    L33:
        th = move-exception;
        r111 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$mapTo$1(r13);
        goto L8
    }

    public static final <E> Object b(p<? extends E> r4, kotlin.coroutines.c<? super Boolean> r5) {
        if ((r5 instanceof ChannelsKt__Channels_commonKt$any$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$any$1 r0 = (ChannelsKt__Channels_commonKt$any$1) r5;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r6 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        p r7 = (p) r0.L$3;
        Throwable r8 = (Throwable) r0.L$2;
        p<? extends E> r9 = (p) r0.L$1;
        p r10 = (p) r0.L$0;
        kotlin.k.b(r6);     // Catch: Throwable -> L14
        Object r11 = r6;
        Throwable r12 = r8;
        r4 = r9;
    L22:
        i.j(r4, r12);
        return r11;
    L14:
        Throwable th = th;
    L32:
        throw th;     // Catch: Throwable -> L27
    L27:
        th = move-exception;
        i.j(r9, th);
        throw th;
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r6);
        r12 = null;
        ChannelIterator<? extends E> r13 = r4.iterator();     // Catch: Throwable -> L24
        r0.L$0 = r4;     // Catch: Throwable -> L24
        r0.L$1 = r4;     // Catch: Throwable -> L24
        r0.L$2 = null;     // Catch: Throwable -> L24
        r0.L$3 = r4;     // Catch: Throwable -> L24
        r0.label = 1;     // Catch: Throwable -> L24
        r11 = r13.a(r0);     // Catch: Throwable -> L24
        if (r11 != r2) goto L22;
        return r2;
    L24:
        th = move-exception;
        r9 = r4;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$any$1(r5);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Object, kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r14v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00f1 -> B:46:0x00a0). Please report as a decompilation issue!!! */
    public static final <E, R, C extends t<? super R>> Object b0(p<? extends E> r12, C r13, kotlin.jvm.b.l<? super E, ? extends R> r14, kotlin.coroutines.c<? super C> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$mapTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$mapTo$3 r0 = (ChannelsKt__Channels_commonKt$mapTo$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        ?? r3 = r0.label;
        if (r3 != 0) goto L50;
        kotlin.k.b(r16);
        ChannelsKt__Channels_commonKt$mapTo$3 r5 = r0;
        Object r6 = r2;
        ChannelIterator r7 = r12.iterator();     // Catch: Throwable -> L40
        t r4 = r13;
        kotlin.jvm.b.l<? super E, ? extends R> r8 = r14;
        Throwable r9 = null;
        p<? extends E> r17 = r12;
        p<? extends E> r18 = r17;
        p<? extends E> r19 = r18;
        ?? r110 = r18;
    L46:
        r5.L$0 = r12;     // Catch: Throwable -> L38
        r5.L$1 = r4;     // Catch: Throwable -> L38
        r5.L$2 = r8;     // Catch: Throwable -> L38
        r5.L$3 = r17;     // Catch: Throwable -> L38
        r5.L$4 = r110;     // Catch: Throwable -> L38
        r5.L$5 = r9;     // Catch: Throwable -> L38
        r5.L$6 = r19;     // Catch: Throwable -> L38
        r5.L$7 = r7;     // Catch: Throwable -> L38
        r5.label = 1;     // Catch: Throwable -> L38
        Object r10 = r7.a(r5);     // Catch: Throwable -> L38
        if (r10 != r6) goto L28;
        return r6;
    L28:
        p<? extends E> r11 = r12;
        ChannelIterator r111 = r7;
        t r20 = r4;
        r0 = r5;
        p<? extends E> r21 = r17;
        p<? extends E> r112 = r19;
        r16 = r10;
        Object r113 = r6;
        kotlin.jvm.b.l<? super E, ? extends R> r22 = r8;
        r2 = r113;
        r110 = r110;
    L30:
        if (((Boolean) r16).booleanValue() == false) goto L35;
        Object r114 = (Object) r111.next();
        R r23 = r22.invoke(r114);     // Catch: Throwable -> L38
        r0.L$0 = r11;     // Catch: Throwable -> L38
        r0.L$1 = r20;     // Catch: Throwable -> L38
        r0.L$2 = r22;     // Catch: Throwable -> L38
        r0.L$3 = r21;     // Catch: Throwable -> L38
        r0.L$4 = r110;     // Catch: Throwable -> L38
        r0.L$5 = r9;     // Catch: Throwable -> L38
        r0.L$6 = r112;     // Catch: Throwable -> L38
        r0.L$7 = r111;     // Catch: Throwable -> L38
        r0.L$8 = r114;     // Catch: Throwable -> L38
        r0.L$9 = r114;     // Catch: Throwable -> L38
        r0.label = 2;     // Catch: Throwable -> L38
        if (r20.F(r23, r0) != r2) goto L34;
        return r2;
    L34:
        r19 = r112;
        r17 = r21;
        r5 = r0;
        r4 = r20;
        r7 = r111;
        r12 = r11;
        kotlin.jvm.b.l<? super E, ? extends R> r115 = r22;
        r6 = r2;
        r8 = r115;
        r110 = r110;
        goto L46
    L35:
        kotlin.v r116 = kotlin.v.f15822a;     // Catch: Throwable -> L38
        kotlin.jvm.internal.q.b(1);
        i.j(r110, r9);
        kotlin.jvm.internal.q.a(1);
        return r20;
    L38:
        th = th;
    L51:
        throw th;     // Catch: Throwable -> L43
    L43:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r110, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L40:
        th = move-exception;
        r110 = r12;
        th = th;
        goto L51
    L50:
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r117 = r0.L$9;
        Object r118 = r0.L$8;
        ChannelIterator r119 = (ChannelIterator) r0.L$7;
        p<? extends E> r120 = (p) r0.L$6;
        Throwable r121 = (Throwable) r0.L$5;
        p r24 = (p) r0.L$4;
        p<? extends E> r25 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends R> r26 = (kotlin.jvm.b.l) r0.L$2;
        t r27 = (t) r0.L$1;
        p<? extends E> r28 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L20
        r19 = r120;
        r17 = r25;
        r5 = r0;
        r4 = r27;
        r7 = r119;
        r12 = r28;
        r9 = r121;
        r110 = r24;
        r6 = r2;
        r8 = r26;
        goto L46
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        r111 = (ChannelIterator) r0.L$7;
        p<? extends E> r122 = (p) r0.L$6;
        Throwable r123 = (Throwable) r0.L$5;
        p r29 = (p) r0.L$4;
        r21 = (p) r0.L$3;
        r22 = (kotlin.jvm.b.l) r0.L$2;
        r20 = (t) r0.L$1;
        r11 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L20
        r9 = r123;
        r110 = r29;
        r112 = r122;
    L20:
        th = th;
        r110 = r3;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$mapTo$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    public static final <E> Object c(p<? extends E> r10, kotlin.jvm.b.l<? super E, Boolean> r11, kotlin.coroutines.c<? super Boolean> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$any$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$any$3 r0 = (ChannelsKt__Channels_commonKt$any$3) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r15 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r7 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        p<? extends E> r9 = r15;
        p<? extends E> r16 = r8;
        Throwable r17 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$any$3 r20 = r0;
        p<? extends E> r21 = r5;
    L44:
    L36:
        Throwable th = th;
    L47:
        throw th;     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.a(false);
    L28:
        if (r18.invoke((Object) r14.next()).booleanValue() == false) goto L32;
        Boolean r111 = kotlin.coroutines.jvm.internal.a.a(true);     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(2);
        return r111;
    L32:
        p<? extends E> r112 = r6;
        Object r22 = r19;
        Throwable r23 = r17;
    L21:
        r20.L$0 = r16;     // Catch: Throwable -> L36
        r20.L$1 = r18;     // Catch: Throwable -> L36
        r20.L$2 = r112;     // Catch: Throwable -> L36
        r20.L$3 = r21;     // Catch: Throwable -> L36
        r20.L$4 = r23;     // Catch: Throwable -> L36
        r20.L$5 = r9;     // Catch: Throwable -> L36
        r20.L$6 = r14;     // Catch: Throwable -> L36
        r20.label = 1;     // Catch: Throwable -> L36
        Object r24 = r14.a(r20);     // Catch: Throwable -> L36
        if (r24 != r22) goto L24;
        return r22;
    L24:
        Object r25 = r22;
        r6 = r112;
        r13 = r24;
        r17 = r23;
        r19 = r25;
    L14:
        th = th;
        r21 = r5;
        goto L47
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r112 = r10;
        r21 = r112;
        r9 = r21;
        r14 = r10.iterator();     // Catch: Throwable -> L38
        r18 = r11;
        r16 = r9;
    L38:
        th = move-exception;
        r21 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$any$3(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00e7 -> B:15:0x0051). Please report as a decompilation issue!!! */
    public static final <E, R extends Comparable<? super R>> Object c0(p<? extends E> r16, kotlin.jvm.b.l<? super E, ? extends R> r17, kotlin.coroutines.c<? super E> r18) {
        p<? extends E> r1 = r16;
        if ((r18 instanceof ChannelsKt__Channels_commonKt$maxBy$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$maxBy$1 r2 = (ChannelsKt__Channels_commonKt$maxBy$1) r18;
        int r3 = r2.label;
        if ((r3 & Integer.MIN_VALUE) == 0) goto L7;
        r2.label = r3 - Integer.MIN_VALUE;
    L8:
        Object r0 = r2.result;
        Object r4 = kotlin.coroutines.intrinsics.a.d();
        int r5 = r2.label;
        if (r5 == 0) goto L25;
        if (r5 == 1) goto L20;
        if (r5 != 2) goto L19;
        Comparable r6 = (Comparable) r2.L$7;
        Object r7 = r2.L$6;
        ChannelIterator<? extends E> r8 = (ChannelIterator) r2.L$5;
        p<? extends E> r9 = (p) r2.L$4;
        Throwable r10 = (Throwable) r2.L$3;
        p<? extends E> r11 = (p) r2.L$2;
        kotlin.jvm.b.l<? super E, ? extends R> r12 = (kotlin.jvm.b.l) r2.L$1;
        p<? extends E> r13 = (p) r2.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L16
        ChannelIterator<? extends E> r15 = r8;
        R r14 = r6;
        r1 = r11;
    L15:
        Throwable r19 = r10;
        ChannelIterator<? extends E> r20 = r15;
        if (((Boolean) r0).booleanValue() == false) goto L45;
        Object r21 = r20.next();     // Catch: Throwable -> L47
        R r110 = r12.invoke(r21);     // Catch: Throwable -> L47
        if (r14.compareTo(r110) >= 0) goto L44;
        r7 = r21;
        r14 = r110;
    L44:
        p<? extends E> r22 = r9;
        ChannelIterator<? extends E> r23 = r20;
        r10 = r19;
    L35:
        r2.L$0 = r13;     // Catch: Throwable -> L47
        r2.L$1 = r12;     // Catch: Throwable -> L47
        r2.L$2 = r1;     // Catch: Throwable -> L47
        r2.L$3 = r10;     // Catch: Throwable -> L47
        r2.L$4 = r22;     // Catch: Throwable -> L47
        r2.L$5 = r23;     // Catch: Throwable -> L47
        r2.L$6 = r7;     // Catch: Throwable -> L47
        r2.L$7 = r14;     // Catch: Throwable -> L47
        r2.label = 2;     // Catch: Throwable -> L47
        Object r111 = r23.a(r2);     // Catch: Throwable -> L47
        if (r111 != r4) goto L38;
        return r4;
    L38:
        r15 = r23;
        r9 = r22;
        r0 = r111;
        goto L15
    L45:
        kotlin.jvm.internal.q.b(2);
        i.j(r1, r19);
        kotlin.jvm.internal.q.a(2);
        return r7;
    L47:
        th = move-exception;
        Throwable r24 = th;
    L59:
        throw r24;     // Catch: Throwable -> L50
    L50:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r1, r24);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L16:
        th = move-exception;
        r24 = th;
        r1 = r11;
        goto L59
    L19:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L20:
        ChannelIterator<? extends E> r25 = (ChannelIterator) r2.L$5;
        p<? extends E> r26 = (p) r2.L$4;
        Throwable r27 = (Throwable) r2.L$3;
        p<? extends E> r28 = (p) r2.L$2;
        kotlin.jvm.b.l<? super E, ? extends R> r112 = (kotlin.jvm.b.l) r2.L$1;
        p<? extends E> r113 = (p) r2.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L23
        r23 = r25;
        r1 = r28;
        r10 = r27;
    L31:
        if (((Boolean) r0).booleanValue() == true) goto L34;
        kotlin.jvm.internal.q.b(3);
        i.j(r1, r10);
        kotlin.jvm.internal.q.a(3);
        return null;
    L34:
        Object r29 = r23.next();     // Catch: Throwable -> L47
        r14 = r112.invoke(r29);     // Catch: Throwable -> L47
        r13 = r113;
        r12 = r112;
        p<? extends E> r114 = r26;
        r7 = r29;
        r22 = r114;
    L23:
        th = move-exception;
        r24 = th;
        r1 = r28;
        goto L59
    L25:
        kotlin.k.b(r0);
        ChannelIterator<? extends E> r30 = r16.iterator();     // Catch: Throwable -> L47
        r2.L$0 = r1;     // Catch: Throwable -> L47
        r2.L$1 = r17;     // Catch: Throwable -> L47
        r2.L$2 = r1;     // Catch: Throwable -> L47
        r2.L$3 = null;     // Catch: Throwable -> L47
        r2.L$4 = r1;     // Catch: Throwable -> L47
        r2.L$5 = r30;     // Catch: Throwable -> L47
        r2.label = 1;     // Catch: Throwable -> L47
        Object r31 = r30.a(r2);     // Catch: Throwable -> L47
        if (r31 != r4) goto L29;
        return r4;
    L29:
        r113 = r1;
        r112 = r17;
        r10 = null;
        r26 = r113;
        r23 = r30;
        r0 = r31;
    L7:
        r2 = new ChannelsKt__Channels_commonKt$maxBy$1(r18);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0097 -> B:41:0x009c). Please report as a decompilation issue!!! */
    public static final <E, K, V> Object d(p<? extends E> r13, kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r14, kotlin.coroutines.c<? super Map<K, ? extends V>> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$associate$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$associate$1 r0 = (ChannelsKt__Channels_commonKt$associate$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Map r7 = (Map) r0.L$3;
        p<? extends E> r8 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        Map r12 = r7;
        Object r20 = r2;
        p<? extends E> r21 = r5;
        kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r22 = r9;
        Throwable r23 = r4;
        ChannelsKt__Channels_commonKt$associate$1 r24 = r0;
        p<? extends E> r25 = r6;
    L41:
    L31:
        Throwable th = th;
    L45:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L28;
        Pair<? extends K, ? extends V> r110 = r22.invoke((Object) r17.next());     // Catch: Throwable -> L31
        r12.put(r110.getFirst(), r110.getSecond());     // Catch: Throwable -> L31
        p<? extends E> r111 = r8;
        Throwable r26 = r23;
        Map r27 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L31
        r24.L$1 = r22;     // Catch: Throwable -> L31
        r24.L$2 = r111;     // Catch: Throwable -> L31
        r24.L$3 = r27;     // Catch: Throwable -> L31
        r24.L$4 = r25;     // Catch: Throwable -> L31
        r24.L$5 = r21;     // Catch: Throwable -> L31
        r24.L$6 = r26;     // Catch: Throwable -> L31
        r24.L$7 = r11;     // Catch: Throwable -> L31
        r24.L$8 = r17;     // Catch: Throwable -> L31
        r24.label = 1;     // Catch: Throwable -> L31
        Object r28 = r17.a(r24);     // Catch: Throwable -> L31
        if (r28 != r20) goto L24;
        return r20;
    L24:
        Throwable r112 = r26;
        r8 = r111;
        r16 = r28;
        r12 = r27;
        r23 = r112;
        goto L41
    L28:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r23);
        kotlin.jvm.internal.q.a(1);
        return r12;
    L14:
        th = th;
        r21 = r5;
        goto L45
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        r27 = new LinkedHashMap();
        r24 = r0;
        r20 = r2;
        r26 = null;
        r111 = r13;
        r25 = r111;
        r21 = r25;
        r11 = r21;
        r17 = r13.iterator();     // Catch: Throwable -> L33
        r22 = r14;
        r19 = r11;
    L33:
        th = move-exception;
        r21 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associate$1(r15);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:38:0x00c1). Please report as a decompilation issue!!! */
    public static final <E> Object d0(p<? extends E> r10, Comparator<? super E> r11, kotlin.coroutines.c<? super E> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$maxWith$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$maxWith$1 r0 = (ChannelsKt__Channels_commonKt$maxWith$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        ?? r5 = 1;
        if (r3 == 0) goto L22;
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r14 = r0.L$6;
        ChannelIterator<? extends E> r15 = (ChannelIterator) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        Throwable r6 = (Throwable) r0.L$3;
        p r7 = (p) r0.L$2;
        Comparator<? super E> r8 = (Comparator) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        p<? extends E> r16 = r4;
        r5 = r7;
        p<? extends E> r17 = r9;
    L38:
        if (((Boolean) r13).booleanValue() == false) goto L44;
        Object r18 = r15.next();     // Catch: Throwable -> L20
        p<? extends E> r19 = r16;
        ?? r20 = r5;
        p<? extends E> r21 = r17;
        if (r8.compare(r14, r18) < 0) goto L33;
        r18 = r14;
        r19 = r16;
        r20 = r5;
        r21 = r17;
    L33:
        r10 = (p<? extends E>) r20;
        r0.L$0 = r21;     // Catch: Throwable -> L46
        r0.L$1 = r8;     // Catch: Throwable -> L46
        r0.L$2 = r10;     // Catch: Throwable -> L46
        r0.L$3 = r6;     // Catch: Throwable -> L46
        r0.L$4 = r19;     // Catch: Throwable -> L46
        r0.L$5 = r15;     // Catch: Throwable -> L46
        r0.L$6 = r18;     // Catch: Throwable -> L46
        r0.label = 2;     // Catch: Throwable -> L46
        Object r22 = r15.a(r0);     // Catch: Throwable -> L46
        if (r22 != r2) goto L37;
        return r2;
    L37:
        r5 = r10;
        r14 = r18;
        r13 = r22;
        r16 = r19;
        r17 = r21;
    L46:
        th = move-exception;
        r5 = r10;
        th = th;
    L56:
        throw th;     // Catch: Throwable -> L49
    L49:
        th = move-exception;
        i.j(r5, th);
        throw th;
    L44:
        i.j(r5, r6);
        return r14;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator<? extends E> r110 = (ChannelIterator) r0.L$5;
        p<? extends E> r111 = (p) r0.L$4;
        Throwable r23 = (Throwable) r0.L$3;
        p<? extends E> r24 = (p) r0.L$2;
        r8 = (Comparator) r0.L$1;
        p<? extends E> r25 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        p<? extends E> r26 = r24;
        p<? extends E> r27 = r25;
        p<? extends E> r112 = r111;
    L28:
        if (((Boolean) r13).booleanValue() == true) goto L31;
        i.j(r26, r23);
        return null;
    L31:
        r18 = r110.next();     // Catch: Throwable -> L20
        r6 = r23;
        r19 = r112;
        r15 = r110;
        r20 = r26;
        r21 = r27;
        goto L33
    L22:
        kotlin.k.b(r13);
        ChannelIterator<? extends E> r113 = r10.iterator();     // Catch: Throwable -> L46
        r0.L$0 = r10;     // Catch: Throwable -> L46
        r0.L$1 = r11;     // Catch: Throwable -> L46
        r0.L$2 = r10;     // Catch: Throwable -> L46
        r0.L$3 = null;     // Catch: Throwable -> L46
        r0.L$4 = r10;     // Catch: Throwable -> L46
        r0.L$5 = r113;     // Catch: Throwable -> L46
        r0.label = 1;     // Catch: Throwable -> L46
        Object r28 = r113.a(r0);     // Catch: Throwable -> L46
        if (r28 != r2) goto L26;
        return r2;
    L26:
        p<? extends E> r29 = r10;
        p<? extends E> r30 = r29;
        r8 = r11;
        r112 = r30;
        r110 = r113;
        r13 = r28;
        r23 = null;
        r26 = r29;
        r27 = r30;
    L20:
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$maxWith$1(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0097 -> B:45:0x009c). Please report as a decompilation issue!!! */
    public static final <E, K> Object e(p<? extends E> r13, kotlin.jvm.b.l<? super E, ? extends K> r14, kotlin.coroutines.c<? super Map<K, ? extends E>> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$associateBy$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$associateBy$1 r0 = (ChannelsKt__Channels_commonKt$associateBy$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Map r7 = (Map) r0.L$3;
        p<? extends E> r8 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, ? extends K> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        Map r12 = r7;
        Object r20 = r2;
        p<? extends E> r21 = r5;
        kotlin.jvm.b.l<? super E, ? extends K> r22 = r9;
        Throwable r23 = r4;
        ChannelsKt__Channels_commonKt$associateBy$1 r24 = r0;
        p<? extends E> r25 = r6;
    L45:
    L31:
        Throwable th = th;
    L41:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L28;
        XI.AbstractBinderC0002XI.C0003XI r110 = (Object) r17.next();
        r12.put(r22.invoke(r110), r110);     // Catch: Throwable -> L31
        p<? extends E> r111 = r8;
        Throwable r26 = r23;
        Map r27 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L31
        r24.L$1 = r22;     // Catch: Throwable -> L31
        r24.L$2 = r111;     // Catch: Throwable -> L31
        r24.L$3 = r27;     // Catch: Throwable -> L31
        r24.L$4 = r25;     // Catch: Throwable -> L31
        r24.L$5 = r21;     // Catch: Throwable -> L31
        r24.L$6 = r26;     // Catch: Throwable -> L31
        r24.L$7 = r11;     // Catch: Throwable -> L31
        r24.L$8 = r17;     // Catch: Throwable -> L31
        r24.label = 1;     // Catch: Throwable -> L31
        Object r28 = r17.a(r24);     // Catch: Throwable -> L31
        if (r28 != r20) goto L24;
        return r20;
    L24:
        Throwable r112 = r26;
        r8 = r111;
        r16 = r28;
        r12 = r27;
        r23 = r112;
        goto L45
    L28:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r23);
        kotlin.jvm.internal.q.a(1);
        return r12;
    L14:
        th = th;
        r21 = r5;
        goto L41
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        r27 = new LinkedHashMap();
        r24 = r0;
        r20 = r2;
        r26 = null;
        r111 = r13;
        r25 = r111;
        r21 = r25;
        r11 = r21;
        r17 = r13.iterator();     // Catch: Throwable -> L33
        r22 = r14;
        r19 = r11;
    L33:
        th = move-exception;
        r21 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associateBy$1(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00e7 -> B:15:0x0051). Please report as a decompilation issue!!! */
    public static final <E, R extends Comparable<? super R>> Object e0(p<? extends E> r16, kotlin.jvm.b.l<? super E, ? extends R> r17, kotlin.coroutines.c<? super E> r18) {
        p<? extends E> r1 = r16;
        if ((r18 instanceof ChannelsKt__Channels_commonKt$minBy$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$minBy$1 r2 = (ChannelsKt__Channels_commonKt$minBy$1) r18;
        int r3 = r2.label;
        if ((r3 & Integer.MIN_VALUE) == 0) goto L7;
        r2.label = r3 - Integer.MIN_VALUE;
    L8:
        Object r0 = r2.result;
        Object r4 = kotlin.coroutines.intrinsics.a.d();
        int r5 = r2.label;
        if (r5 == 0) goto L25;
        if (r5 == 1) goto L20;
        if (r5 != 2) goto L19;
        Comparable r6 = (Comparable) r2.L$7;
        Object r7 = r2.L$6;
        ChannelIterator<? extends E> r8 = (ChannelIterator) r2.L$5;
        p<? extends E> r9 = (p) r2.L$4;
        Throwable r10 = (Throwable) r2.L$3;
        p<? extends E> r11 = (p) r2.L$2;
        kotlin.jvm.b.l<? super E, ? extends R> r12 = (kotlin.jvm.b.l) r2.L$1;
        p<? extends E> r13 = (p) r2.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L16
        ChannelIterator<? extends E> r15 = r8;
        R r14 = r6;
        r1 = r11;
    L15:
        Throwable r19 = r10;
        ChannelIterator<? extends E> r20 = r15;
        if (((Boolean) r0).booleanValue() == false) goto L45;
        Object r21 = r20.next();     // Catch: Throwable -> L47
        R r110 = r12.invoke(r21);     // Catch: Throwable -> L47
        if (r14.compareTo(r110) <= 0) goto L44;
        r7 = r21;
        r14 = r110;
    L44:
        p<? extends E> r22 = r9;
        ChannelIterator<? extends E> r23 = r20;
        r10 = r19;
    L35:
        r2.L$0 = r13;     // Catch: Throwable -> L47
        r2.L$1 = r12;     // Catch: Throwable -> L47
        r2.L$2 = r1;     // Catch: Throwable -> L47
        r2.L$3 = r10;     // Catch: Throwable -> L47
        r2.L$4 = r22;     // Catch: Throwable -> L47
        r2.L$5 = r23;     // Catch: Throwable -> L47
        r2.L$6 = r7;     // Catch: Throwable -> L47
        r2.L$7 = r14;     // Catch: Throwable -> L47
        r2.label = 2;     // Catch: Throwable -> L47
        Object r111 = r23.a(r2);     // Catch: Throwable -> L47
        if (r111 != r4) goto L38;
        return r4;
    L38:
        r15 = r23;
        r9 = r22;
        r0 = r111;
        goto L15
    L45:
        kotlin.jvm.internal.q.b(2);
        i.j(r1, r19);
        kotlin.jvm.internal.q.a(2);
        return r7;
    L47:
        th = move-exception;
        Throwable r24 = th;
    L59:
        throw r24;     // Catch: Throwable -> L50
    L50:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r1, r24);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L16:
        th = move-exception;
        r24 = th;
        r1 = r11;
        goto L59
    L19:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L20:
        ChannelIterator<? extends E> r25 = (ChannelIterator) r2.L$5;
        p<? extends E> r26 = (p) r2.L$4;
        Throwable r27 = (Throwable) r2.L$3;
        p<? extends E> r28 = (p) r2.L$2;
        kotlin.jvm.b.l<? super E, ? extends R> r112 = (kotlin.jvm.b.l) r2.L$1;
        p<? extends E> r113 = (p) r2.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L23
        r23 = r25;
        r1 = r28;
        r10 = r27;
    L31:
        if (((Boolean) r0).booleanValue() == true) goto L34;
        kotlin.jvm.internal.q.b(3);
        i.j(r1, r10);
        kotlin.jvm.internal.q.a(3);
        return null;
    L34:
        Object r29 = r23.next();     // Catch: Throwable -> L47
        r14 = r112.invoke(r29);     // Catch: Throwable -> L47
        r13 = r113;
        r12 = r112;
        p<? extends E> r114 = r26;
        r7 = r29;
        r22 = r114;
    L23:
        th = move-exception;
        r24 = th;
        r1 = r28;
        goto L59
    L25:
        kotlin.k.b(r0);
        ChannelIterator<? extends E> r30 = r16.iterator();     // Catch: Throwable -> L47
        r2.L$0 = r1;     // Catch: Throwable -> L47
        r2.L$1 = r17;     // Catch: Throwable -> L47
        r2.L$2 = r1;     // Catch: Throwable -> L47
        r2.L$3 = null;     // Catch: Throwable -> L47
        r2.L$4 = r1;     // Catch: Throwable -> L47
        r2.L$5 = r30;     // Catch: Throwable -> L47
        r2.label = 1;     // Catch: Throwable -> L47
        Object r31 = r30.a(r2);     // Catch: Throwable -> L47
        if (r31 != r4) goto L29;
        return r4;
    L29:
        r113 = r1;
        r112 = r17;
        r10 = null;
        r26 = r113;
        r23 = r30;
        r0 = r31;
    L7:
        r2 = new ChannelsKt__Channels_commonKt$minBy$1(r18);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009d -> B:41:0x00a3). Please report as a decompilation issue!!! */
    public static final <E, K, V> Object f(p<? extends E> r12, kotlin.jvm.b.l<? super E, ? extends K> r13, kotlin.jvm.b.l<? super E, ? extends V> r14, kotlin.coroutines.c<? super Map<K, ? extends V>> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$associateBy$2) == false) goto L7;
        ChannelsKt__Channels_commonKt$associateBy$2 r0 = (ChannelsKt__Channels_commonKt$associateBy$2) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$9;
        p<? extends E> r18 = (p) r0.L$8;
        Throwable r19 = (Throwable) r0.L$7;
        p<? extends E> r4 = (p) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        Map r6 = (Map) r0.L$4;
        p<? extends E> r7 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends V> r8 = (kotlin.jvm.b.l) r0.L$2;
        kotlin.jvm.b.l<? super E, ? extends K> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r110 = r10;
        Map r20 = r6;
        Throwable r21 = r19;
        p<? extends E> r111 = r7;
        ChannelsKt__Channels_commonKt$associateBy$2 r22 = r0;
        p<? extends E> r23 = r4;
        kotlin.jvm.b.l<? super E, ? extends K> r24 = r9;
        Object r25 = r2;
    L41:
    L31:
        Throwable th = th;
    L39:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r23, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L28;
        XI.AbstractBinderC0002XI.C0003XI r112 = (Object) r17.next();
        r20.put(r24.invoke(r112), r8.invoke(r112));     // Catch: Throwable -> L31
        p<? extends E> r113 = r5;
        kotlin.jvm.b.l<? super E, ? extends V> r26 = r8;
        Object r27 = r25;
        Map r28 = r20;
    L21:
        r22.L$0 = r110;     // Catch: Throwable -> L31
        r22.L$1 = r24;     // Catch: Throwable -> L31
        r22.L$2 = r26;     // Catch: Throwable -> L31
        r22.L$3 = r111;     // Catch: Throwable -> L31
        r22.L$4 = r28;     // Catch: Throwable -> L31
        r22.L$5 = r113;     // Catch: Throwable -> L31
        r22.L$6 = r23;     // Catch: Throwable -> L31
        r22.L$7 = r21;     // Catch: Throwable -> L31
        r22.L$8 = r11;     // Catch: Throwable -> L31
        r22.L$9 = r17;     // Catch: Throwable -> L31
        r22.label = 1;     // Catch: Throwable -> L31
        Object r29 = r17.a(r22);     // Catch: Throwable -> L31
        if (r29 != r27) goto L24;
        return r27;
    L24:
        kotlin.jvm.b.l<? super E, ? extends V> r114 = r26;
        r5 = r113;
        r16 = r29;
        r20 = r28;
        r25 = r27;
        r8 = r114;
        goto L41
    L28:
        kotlin.v r115 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r21);
        kotlin.jvm.internal.q.a(1);
        return r20;
    L14:
        th = th;
        r23 = r4;
        goto L39
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        r28 = new LinkedHashMap();
        r22 = r0;
        r27 = r2;
        r21 = null;
        r113 = r12;
        r23 = r113;
        r11 = r23;
        r24 = r13;
        r110 = r11;
        r17 = r12.iterator();     // Catch: Throwable -> L33
        r26 = r14;
        r111 = r110;
    L33:
        th = move-exception;
        r23 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associateBy$2(r15);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:38:0x00c1). Please report as a decompilation issue!!! */
    public static final <E> Object f0(p<? extends E> r10, Comparator<? super E> r11, kotlin.coroutines.c<? super E> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$minWith$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$minWith$1 r0 = (ChannelsKt__Channels_commonKt$minWith$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        ?? r5 = 1;
        if (r3 == 0) goto L22;
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r14 = r0.L$6;
        ChannelIterator<? extends E> r15 = (ChannelIterator) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        Throwable r6 = (Throwable) r0.L$3;
        p r7 = (p) r0.L$2;
        Comparator<? super E> r8 = (Comparator) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        p<? extends E> r16 = r4;
        r5 = r7;
        p<? extends E> r17 = r9;
    L38:
        if (((Boolean) r13).booleanValue() == false) goto L44;
        Object r18 = r15.next();     // Catch: Throwable -> L20
        p<? extends E> r19 = r16;
        ?? r20 = r5;
        p<? extends E> r21 = r17;
        if (r8.compare(r14, r18) > 0) goto L33;
        r18 = r14;
        r19 = r16;
        r20 = r5;
        r21 = r17;
    L33:
        r10 = (p<? extends E>) r20;
        r0.L$0 = r21;     // Catch: Throwable -> L46
        r0.L$1 = r8;     // Catch: Throwable -> L46
        r0.L$2 = r10;     // Catch: Throwable -> L46
        r0.L$3 = r6;     // Catch: Throwable -> L46
        r0.L$4 = r19;     // Catch: Throwable -> L46
        r0.L$5 = r15;     // Catch: Throwable -> L46
        r0.L$6 = r18;     // Catch: Throwable -> L46
        r0.label = 2;     // Catch: Throwable -> L46
        Object r22 = r15.a(r0);     // Catch: Throwable -> L46
        if (r22 != r2) goto L37;
        return r2;
    L37:
        r5 = r10;
        r14 = r18;
        r13 = r22;
        r16 = r19;
        r17 = r21;
    L46:
        th = move-exception;
        r5 = r10;
        th = th;
    L56:
        throw th;     // Catch: Throwable -> L49
    L49:
        th = move-exception;
        i.j(r5, th);
        throw th;
    L44:
        i.j(r5, r6);
        return r14;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator<? extends E> r110 = (ChannelIterator) r0.L$5;
        p<? extends E> r111 = (p) r0.L$4;
        Throwable r23 = (Throwable) r0.L$3;
        p<? extends E> r24 = (p) r0.L$2;
        r8 = (Comparator) r0.L$1;
        p<? extends E> r25 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        p<? extends E> r26 = r24;
        p<? extends E> r27 = r25;
        p<? extends E> r112 = r111;
    L28:
        if (((Boolean) r13).booleanValue() == true) goto L31;
        i.j(r26, r23);
        return null;
    L31:
        r18 = r110.next();     // Catch: Throwable -> L20
        r6 = r23;
        r19 = r112;
        r15 = r110;
        r20 = r26;
        r21 = r27;
        goto L33
    L22:
        kotlin.k.b(r13);
        ChannelIterator<? extends E> r113 = r10.iterator();     // Catch: Throwable -> L46
        r0.L$0 = r10;     // Catch: Throwable -> L46
        r0.L$1 = r11;     // Catch: Throwable -> L46
        r0.L$2 = r10;     // Catch: Throwable -> L46
        r0.L$3 = null;     // Catch: Throwable -> L46
        r0.L$4 = r10;     // Catch: Throwable -> L46
        r0.L$5 = r113;     // Catch: Throwable -> L46
        r0.label = 1;     // Catch: Throwable -> L46
        Object r28 = r113.a(r0);     // Catch: Throwable -> L46
        if (r28 != r2) goto L26;
        return r2;
    L26:
        p<? extends E> r29 = r10;
        p<? extends E> r30 = r29;
        r8 = r11;
        r112 = r30;
        r110 = r113;
        r13 = r28;
        r23 = null;
        r26 = r29;
        r27 = r30;
    L20:
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$minWith$1(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, K, M extends Map<? super K, ? super E>> Object g(p<? extends E> r11, M r12, kotlin.jvm.b.l<? super E, ? extends K> r13, kotlin.coroutines.c<? super M> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$associateByTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$associateByTo$1 r0 = (ChannelsKt__Channels_commonKt$associateByTo$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r18 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends K> r6 = (kotlin.jvm.b.l) r0.L$2;
        Map r7 = (Map) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$associateByTo$1 r9 = r0;
        p<? extends E> r10 = r17;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        Map r21 = r7;
        ChannelsKt__Channels_commonKt$associateByTo$1 r22 = r9;
        Throwable r23 = r18;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r15).booleanValue() == false) goto L28;
        XI.AbstractBinderC0002XI.C0003XI r111 = (Object) r16.next();
        r21.put(r6.invoke(r111), r111);     // Catch: Throwable -> L14
        p<? extends E> r112 = r4;
        kotlin.jvm.b.l<? super E, ? extends K> r24 = r6;
        ChannelsKt__Channels_commonKt$associateByTo$1 r25 = r22;
        Object r26 = r20;
    L41:
        r25.L$0 = r19;     // Catch: Throwable -> L31
        r25.L$1 = r21;     // Catch: Throwable -> L31
        r25.L$2 = r24;     // Catch: Throwable -> L31
        r25.L$3 = r110;     // Catch: Throwable -> L31
        r25.L$4 = r112;     // Catch: Throwable -> L31
        r25.L$5 = r23;     // Catch: Throwable -> L31
        r25.L$6 = r10;     // Catch: Throwable -> L31
        r25.L$7 = r16;     // Catch: Throwable -> L31
        r25.label = 1;     // Catch: Throwable -> L31
        Object r27 = r16.a(r25);     // Catch: Throwable -> L31
        if (r27 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, ? extends K> r28 = r24;
        r4 = r112;
        r15 = r27;
        r20 = r26;
        r22 = r25;
        r6 = r28;
    L31:
        Throwable th = th;
    L45:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r112, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L28:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r112 = r4;
        goto L45
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r112 = r11;
        r10 = r112;
        r21 = r12;
        r19 = r10;
        r16 = r11.iterator();     // Catch: Throwable -> L33
        r24 = r13;
        r110 = r19;
    L33:
        th = move-exception;
        r112 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associateByTo$1(r14);
        goto L8
    }

    public static final <E> Object g0(p<? extends E> r4, kotlin.coroutines.c<? super Boolean> r5) {
        if ((r5 instanceof ChannelsKt__Channels_commonKt$none$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$none$1 r0 = (ChannelsKt__Channels_commonKt$none$1) r5;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r6 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        boolean r7 = true;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        p r8 = (p) r0.L$3;
        Throwable r9 = (Throwable) r0.L$2;
        p<? extends E> r10 = (p) r0.L$1;
        p r11 = (p) r0.L$0;
        kotlin.k.b(r6);     // Catch: Throwable -> L14
        Object r12 = r6;
        Throwable r13 = r9;
        r4 = r10;
    L23:
        if (((Boolean) r12).booleanValue() == false) goto L26;
        r7 = false;
    L26:
        Boolean r14 = kotlin.coroutines.jvm.internal.a.a(r7);     // Catch: Throwable -> L29
        i.j(r4, r13);
        return r14;
    L29:
        th = move-exception;
        r10 = r4;
        Throwable th = th;
    L37:
        throw th;     // Catch: Throwable -> L32
    L32:
        th = move-exception;
        i.j(r10, th);
        throw th;
    L14:
        th = th;
        goto L37
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r6);
        r13 = null;
        ChannelIterator<? extends E> r15 = r4.iterator();     // Catch: Throwable -> L29
        r0.L$0 = r4;     // Catch: Throwable -> L29
        r0.L$1 = r4;     // Catch: Throwable -> L29
        r0.L$2 = null;     // Catch: Throwable -> L29
        r0.L$3 = r4;     // Catch: Throwable -> L29
        r0.label = 1;     // Catch: Throwable -> L29
        r12 = r15.a(r0);     // Catch: Throwable -> L29
        if (r12 != r2) goto L23;
        return r2;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$none$1(r5);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008f -> B:25:0x0094). Please report as a decompilation issue!!! */
    public static final <E, K, V, M extends Map<? super K, ? super V>> Object h(p<? extends E> r11, M r12, kotlin.jvm.b.l<? super E, ? extends K> r13, kotlin.jvm.b.l<? super E, ? extends V> r14, kotlin.coroutines.c<? super M> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$associateByTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$associateByTo$3 r0 = (ChannelsKt__Channels_commonKt$associateByTo$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r19 = (Throwable) r0.L$6;
        p<? extends E> r110 = (p) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        kotlin.jvm.b.l<? super E, ? extends V> r5 = (kotlin.jvm.b.l) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends K> r6 = (kotlin.jvm.b.l) r0.L$2;
        Map r7 = (Map) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$associateByTo$3 r9 = r0;
        p<? extends E> r10 = r18;
        p<? extends E> r111 = r8;
        Object r20 = r2;
        kotlin.jvm.b.l<? super E, ? extends K> r21 = r6;
        ChannelsKt__Channels_commonKt$associateByTo$3 r22 = r9;
        Throwable r23 = r19;
        p<? extends E> r112 = r4;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L28;
        XI.AbstractBinderC0002XI.C0003XI r113 = (Object) r17.next();
        r7.put(r21.invoke(r113), r5.invoke(r113));     // Catch: Throwable -> L14
        p<? extends E> r114 = r10;
        Map r24 = r7;
        Object r25 = r20;
    L21:
        r22.L$0 = r111;     // Catch: Throwable -> L14
        r22.L$1 = r24;     // Catch: Throwable -> L14
        r22.L$2 = r21;     // Catch: Throwable -> L14
        r22.L$3 = r5;     // Catch: Throwable -> L14
        r22.L$4 = r112;     // Catch: Throwable -> L14
        r22.L$5 = r110;     // Catch: Throwable -> L14
        r22.L$6 = r23;     // Catch: Throwable -> L14
        r22.L$7 = r114;     // Catch: Throwable -> L14
        r22.L$8 = r17;     // Catch: Throwable -> L14
        r22.label = 1;     // Catch: Throwable -> L14
        Object r26 = r17.a(r22);     // Catch: Throwable -> L14
        if (r26 != r25) goto L24;
        return r25;
    L24:
        Map r27 = r24;
        r10 = r114;
        r16 = r26;
        r20 = r25;
        r7 = r27;
        goto L26
    L28:
        kotlin.v r115 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r110, r23);
        kotlin.jvm.internal.q.a(1);
        return r7;
    L14:
        Throwable th = th;
    L41:
        throw th;     // Catch: Throwable -> L34
    L34:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r110, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        r5 = r14;
        r22 = r0;
        r25 = r2;
        r110 = r11;
        r24 = r12;
        r21 = r13;
        r111 = r110;
        r112 = r111;
        r17 = r11.iterator();     // Catch: Throwable -> L31
        r23 = null;
        r114 = r112;
    L31:
        th = move-exception;
        r110 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associateByTo$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    public static final <E> Object h0(p<? extends E> r10, kotlin.jvm.b.l<? super E, Boolean> r11, kotlin.coroutines.c<? super Boolean> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$none$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$none$3 r0 = (ChannelsKt__Channels_commonKt$none$3) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r15 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r7 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        p<? extends E> r9 = r15;
        p<? extends E> r16 = r8;
        Throwable r17 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$none$3 r20 = r0;
        p<? extends E> r21 = r5;
    L44:
    L36:
        Throwable th = th;
    L47:
        throw th;     // Catch: Throwable -> L41
    L41:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.a(true);
    L28:
        if (r18.invoke((Object) r14.next()).booleanValue() == false) goto L32;
        Boolean r111 = kotlin.coroutines.jvm.internal.a.a(false);     // Catch: Throwable -> L36
        kotlin.jvm.internal.q.b(2);
        i.j(r21, r17);
        kotlin.jvm.internal.q.a(2);
        return r111;
    L32:
        p<? extends E> r112 = r6;
        Object r22 = r19;
        Throwable r23 = r17;
    L21:
        r20.L$0 = r16;     // Catch: Throwable -> L36
        r20.L$1 = r18;     // Catch: Throwable -> L36
        r20.L$2 = r112;     // Catch: Throwable -> L36
        r20.L$3 = r21;     // Catch: Throwable -> L36
        r20.L$4 = r23;     // Catch: Throwable -> L36
        r20.L$5 = r9;     // Catch: Throwable -> L36
        r20.L$6 = r14;     // Catch: Throwable -> L36
        r20.label = 1;     // Catch: Throwable -> L36
        Object r24 = r14.a(r20);     // Catch: Throwable -> L36
        if (r24 != r22) goto L24;
        return r22;
    L24:
        Object r25 = r22;
        r6 = r112;
        r13 = r24;
        r17 = r23;
        r19 = r25;
    L14:
        th = th;
        r21 = r5;
        goto L47
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r112 = r10;
        r21 = r112;
        r9 = r21;
        r14 = r10.iterator();     // Catch: Throwable -> L38
        r18 = r11;
        r16 = r9;
    L38:
        th = move-exception;
        r21 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$none$3(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, K, V, M extends Map<? super K, ? super V>> Object i(p<? extends E> r11, M r12, kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r13, kotlin.coroutines.c<? super M> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$associateTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$associateTo$1 r0 = (ChannelsKt__Channels_commonKt$associateTo$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r18 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r6 = (kotlin.jvm.b.l) r0.L$2;
        Map r7 = (Map) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$associateTo$1 r9 = r0;
        p<? extends E> r10 = r17;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        Map r21 = r7;
        ChannelsKt__Channels_commonKt$associateTo$1 r22 = r9;
        Throwable r23 = r18;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r15).booleanValue() == false) goto L28;
        Pair<? extends K, ? extends V> r111 = r6.invoke((Object) r16.next());     // Catch: Throwable -> L14
        r21.put(r111.getFirst(), r111.getSecond());     // Catch: Throwable -> L14
        p<? extends E> r112 = r4;
        kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r24 = r6;
        ChannelsKt__Channels_commonKt$associateTo$1 r25 = r22;
        Object r26 = r20;
    L43:
        r25.L$0 = r19;     // Catch: Throwable -> L31
        r25.L$1 = r21;     // Catch: Throwable -> L31
        r25.L$2 = r24;     // Catch: Throwable -> L31
        r25.L$3 = r110;     // Catch: Throwable -> L31
        r25.L$4 = r112;     // Catch: Throwable -> L31
        r25.L$5 = r23;     // Catch: Throwable -> L31
        r25.L$6 = r10;     // Catch: Throwable -> L31
        r25.L$7 = r16;     // Catch: Throwable -> L31
        r25.label = 1;     // Catch: Throwable -> L31
        Object r27 = r16.a(r25);     // Catch: Throwable -> L31
        if (r27 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, ? extends Pair<? extends K, ? extends V>> r28 = r24;
        r4 = r112;
        r15 = r27;
        r20 = r26;
        r22 = r25;
        r6 = r28;
    L31:
        Throwable th = th;
    L41:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r112, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L28:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r112 = r4;
        goto L41
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r112 = r11;
        r10 = r112;
        r21 = r12;
        r19 = r10;
        r16 = r11.iterator();     // Catch: Throwable -> L33
        r24 = r13;
        r110 = r19;
    L33:
        th = move-exception;
        r112 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$associateTo$1(r14);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009c -> B:45:0x00a3). Please report as a decompilation issue!!! */
    public static final <E> Object i0(p<? extends E> r13, kotlin.jvm.b.l<? super E, Boolean> r14, kotlin.coroutines.c<? super Pair<? extends List<? extends E>, ? extends List<? extends E>>> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$partition$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$partition$1 r0 = (ChannelsKt__Channels_commonKt$partition$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        ArrayList r7 = (ArrayList) r0.L$3;
        ArrayList r8 = (ArrayList) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        ?? r12 = r8;
        Throwable r20 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r21 = r9;
        ?? r22 = r7;
        Object r23 = r2;
        ChannelsKt__Channels_commonKt$partition$1 r24 = r0;
        p<? extends E> r25 = r5;
    L45:
    L35:
        Throwable th = th;
    L49:
        throw th;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r25, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L32;
        Object r110 = (Object) r17.next();
        if (r21.invoke(r110).booleanValue() == false) goto L30;
        r12.add(r110);     // Catch: Throwable -> L35
    L31:
        p<? extends E> r111 = r6;
        Object r26 = r23;
        Throwable r27 = r20;
        ?? r28 = r22;
        ?? r29 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L35
        r24.L$1 = r21;     // Catch: Throwable -> L35
        r24.L$2 = r29;     // Catch: Throwable -> L35
        r24.L$3 = r28;     // Catch: Throwable -> L35
        r24.L$4 = r111;     // Catch: Throwable -> L35
        r24.L$5 = r25;     // Catch: Throwable -> L35
        r24.L$6 = r27;     // Catch: Throwable -> L35
        r24.L$7 = r11;     // Catch: Throwable -> L35
        r24.L$8 = r17;     // Catch: Throwable -> L35
        r24.label = 1;     // Catch: Throwable -> L35
        Object r30 = r17.a(r24);     // Catch: Throwable -> L35
        if (r30 != r26) goto L24;
        return r26;
    L24:
        Object r112 = r26;
        r6 = r111;
        r16 = r30;
        r12 = r29;
        r22 = r28;
        r20 = r27;
        r23 = r112;
        goto L45
    L30:
        r22.add(r110);     // Catch: Throwable -> L35
        goto L31
    L32:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L35
        kotlin.jvm.internal.q.b(1);
        i.j(r25, r20);
        kotlin.jvm.internal.q.a(1);
        return new Pair(r12, r22);
    L14:
        th = th;
        r25 = r5;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        ArrayList r114 = new ArrayList();
        r29 = r114;
        r28 = new ArrayList();
        r27 = null;
        r111 = r13;
        r21 = r14;
        r24 = r0;
        r19 = r111;
        r25 = r19;
        r17 = r13.iterator();     // Catch: Throwable -> L37
        r26 = r2;
        r11 = r25;
    L37:
        th = move-exception;
        r25 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$partition$1(r15);
        goto L8
    }

    public static final void j(p<?> r2, Throwable r3) {
        CancellationException r0 = null;
        Throwable r1 = null;
        if (r3 != null) goto L5;
    L12:
        r2.a(r0);
        return;
    L5:
        if ((r3 instanceof CancellationException) == false) goto L8;
        r1 = r3;
    L8:
        r0 = (CancellationException) r1;
        if (r0 != null) goto L12;
        r0 = h1.a("Channel was consumed, consumer had failed", r3);
        goto L12
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Object j0(p<? extends E> r1, kotlin.coroutines.c<? super E> r2) {
        Objects.requireNonNull(r1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E?>");
        return r1.A(r2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0079 -> B:39:0x007e). Please report as a decompilation issue!!! */
    public static final <E> Object k(e<E> r10, kotlin.jvm.b.l<? super E, kotlin.v> r11, kotlin.coroutines.c<? super kotlin.v> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$consumeEach$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$consumeEach$1 r0 = (ChannelsKt__Channels_commonKt$consumeEach$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        ?? r3 = r0.label;
        if (r3 == 0) goto L16;
        if (r3 != 1) goto L15;
        ChannelIterator r14 = (ChannelIterator) r0.L$5;
        p<E> r15 = (p) r0.L$4;
        p<E> r4 = (p) r0.L$3;
        e<E> r5 = (e) r0.L$2;
        kotlin.jvm.b.l<? super E, kotlin.v> r6 = (kotlin.jvm.b.l) r0.L$1;
        e<E> r7 = (e) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L33
        p<E> r8 = r15;
        e<E> r16 = r7;
        p<E> r9 = r4;
        ChannelsKt__Channels_commonKt$consumeEach$1 r17 = r0;
        kotlin.jvm.b.l<? super E, kotlin.v> r18 = r6;
        Object r19 = r2;
    L39:
    L29:
        th = th;
        r3 = r9;
    L34:
        kotlin.jvm.internal.q.b(1);
        p.a.a(r3, null, 1, null);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L24:
        if (((Boolean) r13).booleanValue() == false) goto L26;
        r18.invoke((Object) r14.next());     // Catch: Throwable -> L29
        e<E> r110 = r5;
        Object r20 = r19;
        p<E> r21 = r9;
    L36:
        r17.L$0 = r16;     // Catch: Throwable -> L31
        r17.L$1 = r18;     // Catch: Throwable -> L31
        r17.L$2 = r110;     // Catch: Throwable -> L31
        r17.L$3 = r21;     // Catch: Throwable -> L31
        r17.L$4 = r8;     // Catch: Throwable -> L31
        r17.L$5 = r14;     // Catch: Throwable -> L31
        r17.label = 1;     // Catch: Throwable -> L31
        Object r22 = r14.a(r17);     // Catch: Throwable -> L31
        if (r22 != r20) goto L22;
        return r20;
    L22:
        Object r23 = r20;
        r5 = r110;
        r13 = r22;
        r9 = r21;
        r19 = r23;
    L31:
        th = th;
        r3 = r21;
        goto L34
    L26:
        kotlin.v r111 = kotlin.v.f15822a;     // Catch: Throwable -> L29
        kotlin.jvm.internal.q.b(1);
        p.a.a(r9, null, 1, null);
        kotlin.jvm.internal.q.a(1);
        return r111;
    L15:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L16:
        kotlin.k.b(r13);
        r8 = r10.o();
        r20 = r2;
        r21 = r8;
        r17 = r0;
        r18 = r11;
        r16 = r10;
        r14 = r8.iterator();     // Catch: Throwable -> L33
        r110 = r16;
    L33:
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$consumeEach$1(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bf -> B:37:0x00c3). Please report as a decompilation issue!!! */
    public static final <S, E extends S> Object k0(p<? extends E> r10, kotlin.jvm.b.p<? super S, ? super E, ? extends S> r11, kotlin.coroutines.c<? super S> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$reduce$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$reduce$1 r0 = (ChannelsKt__Channels_commonKt$reduce$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L24;
        if (r3 == 1) goto L19;
        if (r3 != 2) goto L18;
        Object r14 = r0.L$6;
        ChannelIterator<? extends E> r15 = (ChannelIterator) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        Throwable r5 = (Throwable) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        kotlin.jvm.b.p<? super S, ? super E, ? extends S> r7 = (kotlin.jvm.b.p) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L15
    L37:
        if (((Boolean) r13).booleanValue() == false) goto L41;
        Object r16 = r7.invoke(r14, r15.next());     // Catch: Throwable -> L15
        r10 = r6;
    L33:
        r0.L$0 = r8;     // Catch: Throwable -> L45
        r0.L$1 = r7;     // Catch: Throwable -> L45
        r0.L$2 = r10;     // Catch: Throwable -> L45
        r0.L$3 = r5;     // Catch: Throwable -> L45
        r0.L$4 = r4;     // Catch: Throwable -> L45
        r0.L$5 = r15;     // Catch: Throwable -> L45
        r0.L$6 = r16;     // Catch: Throwable -> L45
        r0.label = 2;     // Catch: Throwable -> L45
        Object r9 = r15.a(r0);     // Catch: Throwable -> L45
        if (r9 != r2) goto L36;
        return r2;
    L36:
        r6 = r10;
        r14 = r16;
        r13 = r9;
    L45:
        th = move-exception;
        p<? extends E> r17 = r10;
        th = th;
    L55:
        throw th;     // Catch: Throwable -> L48
    L48:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r17, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L41:
        kotlin.jvm.internal.q.b(2);
        i.j(r6, r5);
        kotlin.jvm.internal.q.a(2);
        return r14;
    L15:
        th = th;
        r17 = r6;
        goto L55
    L18:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L19:
        ChannelIterator<? extends E> r18 = (ChannelIterator) r0.L$5;
        p<? extends E> r19 = (p) r0.L$4;
        Throwable r20 = (Throwable) r0.L$3;
        r17 = (p) r0.L$2;
        kotlin.jvm.b.p<? super S, ? super E, ? extends S> r21 = (kotlin.jvm.b.p) r0.L$1;
        p<? extends E> r22 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L22
    L30:
        if (((Boolean) r13).booleanValue() == false) goto L44;
        r16 = r18.next();     // Catch: Throwable -> L22
        r8 = r22;
        r7 = r21;
        p<? extends E> r23 = r19;
        r15 = r18;
        r10 = r17;
        r5 = r20;
        r4 = r23;
        goto L33
    L44:
        throw new UnsupportedOperationException("Empty channel can't be reduced.");     // Catch: Throwable -> L22
    L22:
        th = th;
        goto L55
    L24:
        kotlin.k.b(r13);
        r20 = null;
        ChannelIterator<? extends E> r110 = r10.iterator();     // Catch: Throwable -> L45
        r0.L$0 = r10;     // Catch: Throwable -> L45
        r0.L$1 = r11;     // Catch: Throwable -> L45
        r0.L$2 = r10;     // Catch: Throwable -> L45
        r0.L$3 = null;     // Catch: Throwable -> L45
        r0.L$4 = r10;     // Catch: Throwable -> L45
        r0.L$5 = r110;     // Catch: Throwable -> L45
        r0.label = 1;     // Catch: Throwable -> L45
        Object r24 = r110.a(r0);     // Catch: Throwable -> L45
        if (r24 != r2) goto L28;
        return r2;
    L28:
        r22 = r10;
        r21 = r11;
        r19 = r22;
        r18 = r110;
        r13 = r24;
        r17 = r19;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$reduce$1(r12);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007a -> B:25:0x007f). Please report as a decompilation issue!!! */
    public static final <E> Object l(p<? extends E> r9, kotlin.jvm.b.l<? super E, kotlin.v> r10, kotlin.coroutines.c<? super kotlin.v> r11) {
        if ((r11 instanceof ChannelsKt__Channels_commonKt$consumeEach$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$consumeEach$3 r0 = (ChannelsKt__Channels_commonKt$consumeEach$3) r11;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r12 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r13 = (ChannelIterator) r0.L$5;
        p<? extends E> r14 = (p) r0.L$4;
        Throwable r4 = (Throwable) r0.L$3;
        p<? extends E> r5 = (p) r0.L$2;
        kotlin.jvm.b.l<? super E, kotlin.v> r6 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r7 = (p) r0.L$0;
        kotlin.k.b(r12);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$consumeEach$3 r8 = r0;
        p<? extends E> r15 = r14;
        p<? extends E> r16 = r7;
        Throwable r17 = r4;
        ChannelsKt__Channels_commonKt$consumeEach$3 r18 = r8;
        Object r19 = r2;
        kotlin.jvm.b.l<? super E, kotlin.v> r20 = r6;
    L26:
        if (((Boolean) r12).booleanValue() == false) goto L28;
        r20.invoke((Object) r13.next());     // Catch: Throwable -> L14
        p<? extends E> r110 = r5;
        Object r21 = r19;
        Throwable r22 = r17;
    L45:
        r18.L$0 = r16;     // Catch: Throwable -> L31
        r18.L$1 = r20;     // Catch: Throwable -> L31
        r18.L$2 = r110;     // Catch: Throwable -> L31
        r18.L$3 = r22;     // Catch: Throwable -> L31
        r18.L$4 = r15;     // Catch: Throwable -> L31
        r18.L$5 = r13;     // Catch: Throwable -> L31
        r18.label = 1;     // Catch: Throwable -> L31
        Object r23 = r13.a(r18);     // Catch: Throwable -> L31
        if (r23 != r21) goto L24;
        return r21;
    L24:
        Object r24 = r21;
        r5 = r110;
        r12 = r23;
        r17 = r22;
        r19 = r24;
    L31:
        Throwable th = th;
    L41:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r110, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L28:
        kotlin.v r25 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r5, r17);
        kotlin.jvm.internal.q.a(1);
        return r25;
    L14:
        th = th;
        r110 = r5;
        goto L41
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r12);
        r22 = null;
        r21 = r2;
        r110 = r9;
        r20 = r10;
        r16 = r110;
        r13 = r9.iterator();     // Catch: Throwable -> L33
        r18 = r0;
        r15 = r16;
    L33:
        th = move-exception;
        r110 = r9;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$consumeEach$3(r11);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c3 -> B:37:0x00c7). Please report as a decompilation issue!!! */
    public static final <S, E extends S> Object l0(p<? extends E> r12, kotlin.jvm.b.q<? super Integer, ? super S, ? super E, ? extends S> r13, kotlin.coroutines.c<? super S> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$reduceIndexed$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$reduceIndexed$1 r0 = (ChannelsKt__Channels_commonKt$reduceIndexed$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L24;
        if (r3 == 1) goto L19;
        if (r3 != 2) goto L18;
        Object r16 = r0.L$6;
        int r17 = r0.I$0;
        ChannelIterator<? extends E> r4 = (ChannelIterator) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        Throwable r6 = (Throwable) r0.L$3;
        p<? extends E> r7 = (p) r0.L$2;
        kotlin.jvm.b.q<? super Integer, ? super S, ? super E, ? extends S> r8 = (kotlin.jvm.b.q) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L15
    L37:
        if (((Boolean) r15).booleanValue() == false) goto L41;
        Integer r18 = kotlin.coroutines.jvm.internal.a.d(r17);     // Catch: Throwable -> L15
        r17 = r17 + 1;     // Catch: Throwable -> L15
        Object r19 = r8.invoke(r18, r16, r4.next());     // Catch: Throwable -> L15
        r12 = r7;
    L33:
        r0.L$0 = r9;     // Catch: Throwable -> L45
        r0.L$1 = r8;     // Catch: Throwable -> L45
        r0.L$2 = r12;     // Catch: Throwable -> L45
        r0.L$3 = r6;     // Catch: Throwable -> L45
        r0.L$4 = r5;     // Catch: Throwable -> L45
        r0.L$5 = r4;     // Catch: Throwable -> L45
        r0.I$0 = r17;     // Catch: Throwable -> L45
        r0.L$6 = r19;     // Catch: Throwable -> L45
        r0.label = 2;     // Catch: Throwable -> L45
        Object r10 = r4.a(r0);     // Catch: Throwable -> L45
        if (r10 != r2) goto L36;
        return r2;
    L36:
        r7 = r12;
        r16 = r19;
        r15 = r10;
    L45:
        th = move-exception;
        p<? extends E> r11 = r12;
        th = th;
    L54:
        throw th;     // Catch: Throwable -> L48
    L48:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r11, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L41:
        kotlin.jvm.internal.q.b(2);
        i.j(r7, r6);
        kotlin.jvm.internal.q.a(2);
        return r16;
    L15:
        th = th;
        r11 = r7;
        goto L54
    L18:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L19:
        ChannelIterator<? extends E> r110 = (ChannelIterator) r0.L$5;
        p<? extends E> r111 = (p) r0.L$4;
        Throwable r20 = (Throwable) r0.L$3;
        r11 = (p) r0.L$2;
        kotlin.jvm.b.q<? super Integer, ? super S, ? super E, ? extends S> r21 = (kotlin.jvm.b.q) r0.L$1;
        p<? extends E> r22 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L22
    L30:
        if (((Boolean) r15).booleanValue() == false) goto L44;
        r19 = r110.next();     // Catch: Throwable -> L22
        r8 = r21;
        r9 = r22;
        r6 = r20;
        r4 = r110;
        r12 = r11;
        r5 = r111;
        r17 = 1;
        goto L33
    L44:
        throw new UnsupportedOperationException("Empty channel can't be reduced.");     // Catch: Throwable -> L22
    L22:
        th = th;
        goto L54
    L24:
        kotlin.k.b(r15);
        r20 = null;
        ChannelIterator<? extends E> r112 = r12.iterator();     // Catch: Throwable -> L45
        r0.L$0 = r12;     // Catch: Throwable -> L45
        r0.L$1 = r13;     // Catch: Throwable -> L45
        r0.L$2 = r12;     // Catch: Throwable -> L45
        r0.L$3 = null;     // Catch: Throwable -> L45
        r0.L$4 = r12;     // Catch: Throwable -> L45
        r0.L$5 = r112;     // Catch: Throwable -> L45
        r0.label = 1;     // Catch: Throwable -> L45
        Object r23 = r112.a(r0);     // Catch: Throwable -> L45
        if (r23 != r2) goto L28;
        return r2;
    L28:
        r22 = r12;
        r21 = r13;
        r111 = r22;
        r110 = r112;
        r15 = r23;
        r11 = r111;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$reduceIndexed$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009a -> B:40:0x009d). Please report as a decompilation issue!!! */
    public static final <E> Object m(p<? extends E> r17, kotlin.jvm.b.l<? super f0<? extends E>, kotlin.v> r18, kotlin.coroutines.c<? super kotlin.v> r19) {
        if ((r19 instanceof ChannelsKt__Channels_commonKt$consumeEachIndexed$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$consumeEachIndexed$1 r1 = (ChannelsKt__Channels_commonKt$consumeEachIndexed$1) r19;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$7;
        p<? extends E> r6 = (p) r1.L$6;
        Throwable r7 = (Throwable) r1.L$5;
        p<? extends E> r8 = (p) r1.L$4;
        p<? extends E> r9 = (p) r1.L$3;
        Ref$IntRef r10 = (Ref$IntRef) r1.L$2;
        kotlin.jvm.b.l<? super f0<? extends E>, kotlin.v> r11 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r12 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$consumeEachIndexed$1 r13 = r1;
        p<? extends E> r14 = r9;
        ChannelIterator r15 = r5;
        p<? extends E> r16 = r6;
        kotlin.jvm.b.l<? super f0<? extends E>, kotlin.v> r20 = r11;
        Ref$IntRef r110 = r10;
        Throwable r21 = r7;
        Object r22 = r3;
        p<? extends E> r23 = r8;
    L40:
    L31:
        th = th;
    L35:
        Throwable r24 = th;
    L46:
        throw r24;     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r24);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L28;
        Object r25 = r15.next();     // Catch: Throwable -> L31
        int r111 = r110.element;     // Catch: Throwable -> L31
        r110.element = r111 + 1;     // Catch: Throwable -> L31
        r20.invoke(new f0(r111, r25));     // Catch: Throwable -> L31
        p<? extends E> r26 = r12;
    L21:
        r13.L$0 = r26;     // Catch: Throwable -> L31
        r13.L$1 = r20;     // Catch: Throwable -> L31
        r13.L$2 = r110;     // Catch: Throwable -> L31
        r13.L$3 = r14;     // Catch: Throwable -> L31
        r13.L$4 = r23;     // Catch: Throwable -> L31
        r13.L$5 = r21;     // Catch: Throwable -> L31
        r13.L$6 = r16;     // Catch: Throwable -> L31
        r13.L$7 = r15;     // Catch: Throwable -> L31
        r13.label = 1;     // Catch: Throwable -> L31
        Object r112 = r15.a(r13);     // Catch: Throwable -> L31
        if (r112 != r22) goto L24;
        return r22;
    L24:
        r12 = r26;
        r0 = r112;
        goto L40
    L28:
        kotlin.v r27 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r21);
        kotlin.jvm.internal.q.a(1);
        return r27;
    L14:
        th = move-exception;
        r24 = th;
        r23 = r8;
        goto L46
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$IntRef r28 = new Ref$IntRef();
        r28.element = 0;
        r110 = r28;
        r13 = r1;
        r22 = r3;
        r21 = null;
        r15 = r17.iterator();     // Catch: Throwable -> L33
        r26 = r17;
        r14 = r26;
        r23 = r14;
        r16 = r23;
        r20 = r18;
    L33:
        th = th;
        r23 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$consumeEachIndexed$1(r19);
        goto L8
    }

    public static final <E> Object m0(p<? extends E> r8, kotlin.coroutines.c<? super E> r9) {
        if ((r9 instanceof ChannelsKt__Channels_commonKt$single$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$single$1 r0 = (ChannelsKt__Channels_commonKt$single$1) r9;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r10 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L24;
        if (r3 == 1) goto L19;
        if (r3 != 2) goto L18;
        Object r11 = r0.L$5;
        ChannelIterator r4 = (ChannelIterator) r0.L$4;
        p r5 = (p) r0.L$3;
        Throwable r6 = (Throwable) r0.L$2;
        p<? extends E> r7 = (p) r0.L$1;
        p r12 = (p) r0.L$0;
        kotlin.k.b(r10);     // Catch: Throwable -> L15
    L36:
        if (((Boolean) r10).booleanValue() == true) goto L40;
        i.j(r7, r6);
        return r11;
    L40:
        throw new IllegalArgumentException("ReceiveChannel has more than one element.");     // Catch: Throwable -> L15
    L15:
        Throwable th = th;
        p<? extends E> r13 = r7;
    L49:
        throw th;     // Catch: Throwable -> L46
    L46:
        th = move-exception;
        i.j(r13, th);
        throw th;
    L18:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L19:
        ChannelIterator<? extends E> r14 = (ChannelIterator) r0.L$4;
        p<? extends E> r15 = (p) r0.L$3;
        Throwable r16 = (Throwable) r0.L$2;
        r13 = (p) r0.L$1;
        p<? extends E> r17 = (p) r0.L$0;
        kotlin.k.b(r10);     // Catch: Throwable -> L22
    L30:
        if (((Boolean) r10).booleanValue() == false) goto L42;
        E r18 = r14.next();     // Catch: Throwable -> L22
        r0.L$0 = r17;     // Catch: Throwable -> L22
        r0.L$1 = r13;     // Catch: Throwable -> L22
        r0.L$2 = r16;     // Catch: Throwable -> L22
        r0.L$3 = r15;     // Catch: Throwable -> L22
        r0.L$4 = r14;     // Catch: Throwable -> L22
        r0.L$5 = r18;     // Catch: Throwable -> L22
        r0.label = 2;     // Catch: Throwable -> L22
        Object r19 = r14.a(r0);     // Catch: Throwable -> L22
        if (r19 != r2) goto L34;
        return r2;
    L34:
        r6 = r16;
        r7 = r13;
        r10 = r19;
        r11 = r18;
        goto L36
    L42:
        throw new NoSuchElementException("ReceiveChannel is empty.");     // Catch: Throwable -> L22
    L22:
        th = th;
        goto L49
    L24:
        kotlin.k.b(r10);
        ChannelIterator<? extends E> r20 = r8.iterator();     // Catch: Throwable -> L43
        r0.L$0 = r8;     // Catch: Throwable -> L43
        r0.L$1 = r8;     // Catch: Throwable -> L43
        r0.L$2 = null;     // Catch: Throwable -> L43
        r0.L$3 = r8;     // Catch: Throwable -> L43
        r0.L$4 = r20;     // Catch: Throwable -> L43
        r0.label = 1;     // Catch: Throwable -> L43
        Object r21 = r20.a(r0);     // Catch: Throwable -> L43
        if (r21 != r2) goto L28;
        return r2;
    L28:
        r13 = r8;
        r17 = r13;
        r14 = r20;
        r15 = r17;
        r16 = null;
        r10 = r21;
    L43:
        th = move-exception;
        r13 = r8;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$single$1(r9);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0088 -> B:39:0x008b). Please report as a decompilation issue!!! */
    public static final <E> Object n(p<? extends E> r11, kotlin.coroutines.c<? super Integer> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$count$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$count$1 r0 = (ChannelsKt__Channels_commonKt$count$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r4 = (p) r0.L$5;
        Throwable r5 = (Throwable) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        p<? extends E> r7 = (p) r0.L$2;
        Ref$IntRef r8 = (Ref$IntRef) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$count$1 r10 = r0;
        p<? extends E> r15 = r7;
        Throwable r16 = r5;
        Object r17 = r2;
        p<? extends E> r18 = r6;
    L39:
    L31:
        Throwable th = th;
    L45:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        i.j(r18, th);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == false) goto L28;
        r14.next();     // Catch: Throwable -> L31
        r8.element++;     // Catch: Throwable -> L31
        p<? extends E> r19 = r9;
    L21:
        r10.L$0 = r19;     // Catch: Throwable -> L31
        r10.L$1 = r8;     // Catch: Throwable -> L31
        r10.L$2 = r15;     // Catch: Throwable -> L31
        r10.L$3 = r18;     // Catch: Throwable -> L31
        r10.L$4 = r16;     // Catch: Throwable -> L31
        r10.L$5 = r4;     // Catch: Throwable -> L31
        r10.L$6 = r14;     // Catch: Throwable -> L31
        r10.label = 1;     // Catch: Throwable -> L31
        Object r20 = r14.a(r10);     // Catch: Throwable -> L31
        if (r20 != r17) goto L24;
        return r17;
    L24:
        r9 = r19;
        r13 = r20;
        goto L39
    L28:
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        i.j(r18, r16);
        return kotlin.coroutines.jvm.internal.a.d(r8.element);
    L14:
        th = th;
        r18 = r6;
        goto L45
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        Ref$IntRef r111 = new Ref$IntRef();
        r111.element = 0;
        r8 = r111;
        r17 = r2;
        r16 = null;
        r19 = r11;
        r18 = r19;
        r4 = r18;
        r14 = r11.iterator();     // Catch: Throwable -> L33
        r10 = r0;
        r15 = r4;
    L33:
        th = move-exception;
        r18 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$count$1(r12);
        goto L8
    }

    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a1 -> B:50:0x00a8). Please report as a decompilation issue!!! */
    public static final <E> Object n0(p<? extends E> r13, kotlin.jvm.b.l<? super E, Boolean> r14, kotlin.coroutines.c<? super E> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$single$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$single$3 r0 = (ChannelsKt__Channels_commonKt$single$3) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$8;
        p<? extends E> r18 = (p) r0.L$7;
        Throwable r4 = (Throwable) r0.L$6;
        p<? extends E> r5 = (p) r0.L$5;
        p<? extends E> r6 = (p) r0.L$4;
        Ref$BooleanRef r7 = (Ref$BooleanRef) r0.L$3;
        Ref$ObjectRef r8 = (Ref$ObjectRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r9 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r10 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r11 = r18;
        p<? extends E> r19 = r10;
        Ref$ObjectRef r12 = r8;
        Throwable r20 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r21 = r9;
        Ref$BooleanRef r22 = r7;
        Object r23 = r2;
        ChannelsKt__Channels_commonKt$single$3 r24 = r0;
        p<? extends E> r25 = r5;
    L50:
    L42:
        Throwable th = th;
    L53:
        throw th;     // Catch: Throwable -> L47
    L47:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r25, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L35;
        ?? r110 = (Object) r17.next();
        if (r21.invoke(r110).booleanValue() == true) goto L30;
    L34:
        p<? extends E> r111 = r6;
        Object r26 = r23;
        Throwable r27 = r20;
        Ref$BooleanRef r28 = r22;
        Ref$ObjectRef r29 = r12;
    L21:
        r24.L$0 = r19;     // Catch: Throwable -> L42
        r24.L$1 = r21;     // Catch: Throwable -> L42
        r24.L$2 = r29;     // Catch: Throwable -> L42
        r24.L$3 = r28;     // Catch: Throwable -> L42
        r24.L$4 = r111;     // Catch: Throwable -> L42
        r24.L$5 = r25;     // Catch: Throwable -> L42
        r24.L$6 = r27;     // Catch: Throwable -> L42
        r24.L$7 = r11;     // Catch: Throwable -> L42
        r24.L$8 = r17;     // Catch: Throwable -> L42
        r24.label = 1;     // Catch: Throwable -> L42
        Object r30 = r17.a(r24);     // Catch: Throwable -> L42
        if (r30 != r26) goto L24;
        return r26;
    L24:
        Object r112 = r26;
        r6 = r111;
        r16 = r30;
        r12 = r29;
        r22 = r28;
        r20 = r27;
        r23 = r112;
        goto L50
    L30:
        if (r22.element == true) goto L33;
        r12.element = r110;     // Catch: Throwable -> L42
        r22.element = true;     // Catch: Throwable -> L42
        goto L34
    L33:
        throw new IllegalArgumentException("ReceiveChannel contains more than one matching element.");     // Catch: Throwable -> L42
    L35:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L42
        kotlin.jvm.internal.q.b(1);
        i.j(r25, r20);
        kotlin.jvm.internal.q.a(1);
        if (r22.element == false) goto L41;
        return r12.element;
    L41:
        throw new NoSuchElementException("ReceiveChannel contains no element matching the predicate.");
    L14:
        th = th;
        r25 = r5;
        goto L53
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        Ref$ObjectRef r114 = new Ref$ObjectRef();
        r114.element = null;
        Ref$BooleanRef r31 = new Ref$BooleanRef();
        r31.element = false;
        r29 = r114;
        r28 = r31;
        r27 = null;
        r111 = r13;
        r21 = r14;
        r24 = r0;
        r19 = r111;
        r25 = r19;
        r17 = r13.iterator();     // Catch: Throwable -> L44
        r26 = r2;
        r11 = r25;
    L44:
        th = move-exception;
        r25 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$single$3(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:46:0x0099). Please report as a decompilation issue!!! */
    public static final <E> Object o(p<? extends E> r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super Integer> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$count$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$count$3 r0 = (ChannelsKt__Channels_commonKt$count$3) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r4 = (Throwable) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r8 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        p<? extends E> r10 = r17;
        p<? extends E> r18 = r9;
        Ref$IntRef r11 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$count$3 r20 = r0;
        p<? extends E> r21 = r5;
        Throwable r22 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r23 = r8;
    L46:
    L34:
        Throwable th = th;
    L42:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r15).booleanValue() == true) goto L28;
        kotlin.v r110 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r22);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.d(r11.element);
    L28:
        if (r23.invoke((Object) r16.next()).booleanValue() == false) goto L30;
        r11.element++;     // Catch: Throwable -> L34
    L30:
        p<? extends E> r111 = r6;
        Object r24 = r19;
        Throwable r25 = r22;
        Ref$IntRef r26 = r11;
    L21:
        r20.L$0 = r18;     // Catch: Throwable -> L34
        r20.L$1 = r23;     // Catch: Throwable -> L34
        r20.L$2 = r26;     // Catch: Throwable -> L34
        r20.L$3 = r111;     // Catch: Throwable -> L34
        r20.L$4 = r21;     // Catch: Throwable -> L34
        r20.L$5 = r25;     // Catch: Throwable -> L34
        r20.L$6 = r10;     // Catch: Throwable -> L34
        r20.L$7 = r16;     // Catch: Throwable -> L34
        r20.label = 1;     // Catch: Throwable -> L34
        Object r27 = r16.a(r20);     // Catch: Throwable -> L34
        if (r27 != r24) goto L24;
        return r24;
    L24:
        Object r28 = r24;
        r6 = r111;
        r15 = r27;
        r11 = r26;
        r22 = r25;
        r19 = r28;
    L14:
        th = th;
        r21 = r5;
        goto L42
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        Ref$IntRef r112 = new Ref$IntRef();
        r112.element = 0;
        r26 = r112;
        r24 = r2;
        r25 = null;
        r111 = r12;
        r10 = r111;
        r23 = r13;
        r18 = r10;
        r16 = r12.iterator();     // Catch: Throwable -> L36
        r20 = r0;
        r21 = r18;
    L36:
        th = move-exception;
        r21 = r12;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$count$3(r14);
        goto L8
    }

    public static final <E> Object o0(p<? extends E> r9, kotlin.coroutines.c<? super E> r10) {
        if ((r10 instanceof ChannelsKt__Channels_commonKt$singleOrNull$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$singleOrNull$1 r0 = (ChannelsKt__Channels_commonKt$singleOrNull$1) r10;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r11 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L24;
        if (r3 == 1) goto L19;
        if (r3 != 2) goto L18;
        Object r12 = r0.L$5;
        ChannelIterator r4 = (ChannelIterator) r0.L$4;
        p r5 = (p) r0.L$3;
        Throwable r6 = (Throwable) r0.L$2;
        p<? extends E> r7 = (p) r0.L$1;
        p r8 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L15
    L37:
        if (((Boolean) r11).booleanValue() == false) goto L41;
        i.j(r7, r6);
        return null;
    L41:
        i.j(r7, r6);
        return r12;
    L15:
        Throwable th = th;
        p<? extends E> r13 = r7;
    L55:
        throw th;     // Catch: Throwable -> L46
    L46:
        th = move-exception;
        i.j(r13, th);
        throw th;
    L18:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L19:
        ChannelIterator<? extends E> r14 = (ChannelIterator) r0.L$4;
        p<? extends E> r15 = (p) r0.L$3;
        Throwable r16 = (Throwable) r0.L$2;
        r13 = (p) r0.L$1;
        p<? extends E> r17 = (p) r0.L$0;
        kotlin.k.b(r11);     // Catch: Throwable -> L22
    L30:
        if (((Boolean) r11).booleanValue() == true) goto L33;
        i.j(r13, r16);
        return null;
    L33:
        E r18 = r14.next();     // Catch: Throwable -> L22
        r0.L$0 = r17;     // Catch: Throwable -> L22
        r0.L$1 = r13;     // Catch: Throwable -> L22
        r0.L$2 = r16;     // Catch: Throwable -> L22
        r0.L$3 = r15;     // Catch: Throwable -> L22
        r0.L$4 = r14;     // Catch: Throwable -> L22
        r0.L$5 = r18;     // Catch: Throwable -> L22
        r0.label = 2;     // Catch: Throwable -> L22
        Object r19 = r14.a(r0);     // Catch: Throwable -> L22
        if (r19 != r2) goto L36;
        return r2;
    L36:
        r6 = r16;
        r7 = r13;
        r11 = r19;
        r12 = r18;
    L22:
        th = th;
        goto L55
    L24:
        kotlin.k.b(r11);
        ChannelIterator<? extends E> r110 = r9.iterator();     // Catch: Throwable -> L43
        r0.L$0 = r9;     // Catch: Throwable -> L43
        r0.L$1 = r9;     // Catch: Throwable -> L43
        r0.L$2 = null;     // Catch: Throwable -> L43
        r0.L$3 = r9;     // Catch: Throwable -> L43
        r0.L$4 = r110;     // Catch: Throwable -> L43
        r0.label = 1;     // Catch: Throwable -> L43
        Object r20 = r110.a(r0);     // Catch: Throwable -> L43
        if (r20 != r2) goto L28;
        return r2;
    L28:
        r13 = r9;
        r17 = r13;
        r16 = null;
        r14 = r110;
        r11 = r20;
        r15 = r17;
    L43:
        th = move-exception;
        r13 = r9;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$singleOrNull$1(r10);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0091 -> B:53:0x0097). Please report as a decompilation issue!!! */
    public static final <E> Object p(p<? extends E> r16, int r17, kotlin.coroutines.c<? super E> r18) {
        if ((r18 instanceof ChannelsKt__Channels_commonKt$elementAt$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$elementAt$1 r2 = (ChannelsKt__Channels_commonKt$elementAt$1) r18;
        int r3 = r2.label;
        if ((r3 & Integer.MIN_VALUE) == 0) goto L7;
        r2.label = r3 - Integer.MIN_VALUE;
    L8:
        Object r1 = r2.result;
        Object r4 = kotlin.coroutines.intrinsics.a.d();
        int r5 = r2.label;
        if (r5 == 0) goto L18;
        if (r5 != 1) goto L17;
        int r0 = r2.I$1;
        ChannelIterator r6 = (ChannelIterator) r2.L$5;
        p<? extends E> r8 = (p) r2.L$4;
        Throwable r9 = (Throwable) r2.L$3;
        p<? extends E> r10 = (p) r2.L$2;
        p<? extends E> r11 = (p) r2.L$1;
        int r12 = r2.I$0;
        p<? extends E> r13 = (p) r2.L$0;
        kotlin.k.b(r1);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$elementAt$1 r14 = r2;
        p<? extends E> r7 = r10;
        Object r15 = r4;
        p<? extends E> r19 = r8;
        ChannelIterator r20 = r6;
        int r21 = r12;
        Throwable r110 = r9;
    L53:
    L37:
        th = th;
    L41:
        Throwable r22 = th;
    L51:
        throw r22;     // Catch: Throwable -> L45
    L45:
        th = move-exception;
        i.j(r7, r22);
        throw th;
    L28:
        if (((Boolean) r1).booleanValue() == false) goto L35;
        Object r23 = r20.next();     // Catch: Throwable -> L37
        int r111 = r0 + 1;
        if (r21 != r0) goto L34;
        i.j(r7, r110);
        return r23;
    L34:
        p<? extends E> r24 = r11;
        p<? extends E> r25 = r13;
        ChannelIterator r112 = r20;
        int r26 = r111;
    L23:
        r14.L$0 = r25;     // Catch: Throwable -> L37
        r14.I$0 = r21;     // Catch: Throwable -> L37
        r14.L$1 = r24;     // Catch: Throwable -> L37
        r14.L$2 = r7;     // Catch: Throwable -> L37
        r14.L$3 = r110;     // Catch: Throwable -> L37
        r14.L$4 = r19;     // Catch: Throwable -> L37
        r14.L$5 = r112;     // Catch: Throwable -> L37
        r14.I$1 = r26;     // Catch: Throwable -> L37
        r14.label = 1;     // Catch: Throwable -> L37
        Object r113 = r112.a(r14);     // Catch: Throwable -> L37
        if (r113 != r15) goto L26;
        return r15;
    L26:
        r13 = r25;
        r0 = r26;
        r20 = r112;
        r11 = r24;
        r1 = r113;
        goto L53
    L35:
        kotlin.coroutines.jvm.internal.a.d(r21).intValue();     // Catch: Throwable -> L37
        throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + r21 + '.');     // Catch: Throwable -> L37
    L14:
        th = move-exception;
        r22 = th;
        r7 = r10;
        goto L51
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r1);
        if (r17 >= 0) goto L22;
        kotlin.coroutines.jvm.internal.a.d(r17).intValue();     // Catch: Throwable -> L39
        throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + r17 + '.');     // Catch: Throwable -> L39
    L22:
        r21 = r17;
        r110 = null;
        r14 = r2;
        r15 = r4;
        r112 = r16.iterator();     // Catch: Throwable -> L39
        r26 = 0;
        r25 = r16;
        r24 = r25;
        r7 = r24;
        r19 = r7;
    L39:
        th = th;
        r7 = r16;
    L7:
        r2 = new ChannelsKt__Channels_commonKt$elementAt$1(r18);
        goto L8
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:52:0x00ac). Please report as a decompilation issue!!! */
    public static final <E> Object p0(p<? extends E> r17, kotlin.jvm.b.l<? super E, Boolean> r18, kotlin.coroutines.c<? super E> r19) {
        if ((r19 instanceof ChannelsKt__Channels_commonKt$singleOrNull$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$singleOrNull$3 r1 = (ChannelsKt__Channels_commonKt$singleOrNull$3) r19;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$8;
        p<? extends E> r6 = (p) r1.L$7;
        Throwable r7 = (Throwable) r1.L$6;
        p<? extends E> r8 = (p) r1.L$5;
        p<? extends E> r9 = (p) r1.L$4;
        Ref$BooleanRef r10 = (Ref$BooleanRef) r1.L$3;
        Ref$ObjectRef r11 = (Ref$ObjectRef) r1.L$2;
        kotlin.jvm.b.l<? super E, Boolean> r12 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r13 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$singleOrNull$3 r14 = r1;
        p<? extends E> r15 = r9;
        ChannelIterator r16 = r5;
        p<? extends E> r20 = r6;
        kotlin.jvm.b.l<? super E, Boolean> r21 = r12;
        Ref$ObjectRef r110 = r11;
        Ref$BooleanRef r111 = r10;
        Throwable r112 = r7;
        Object r22 = r3;
        p<? extends E> r23 = r8;
    L52:
    L41:
        th = th;
    L45:
        Throwable r24 = th;
    L50:
        throw r24;     // Catch: Throwable -> L47
    L47:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r24);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L35;
        ?? r25 = (Object) r16.next();
        if (r21.invoke(r25).booleanValue() == true) goto L30;
    L34:
        p<? extends E> r26 = r13;
    L21:
        r14.L$0 = r26;     // Catch: Throwable -> L41
        r14.L$1 = r21;     // Catch: Throwable -> L41
        r14.L$2 = r110;     // Catch: Throwable -> L41
        r14.L$3 = r111;     // Catch: Throwable -> L41
        r14.L$4 = r15;     // Catch: Throwable -> L41
        r14.L$5 = r23;     // Catch: Throwable -> L41
        r14.L$6 = r112;     // Catch: Throwable -> L41
        r14.L$7 = r20;     // Catch: Throwable -> L41
        r14.L$8 = r16;     // Catch: Throwable -> L41
        r14.label = 1;     // Catch: Throwable -> L41
        Object r113 = r16.a(r14);     // Catch: Throwable -> L41
        if (r113 != r22) goto L24;
        return r22;
    L24:
        r13 = r26;
        r0 = r113;
        goto L52
    L30:
        if (r111.element == false) goto L33;
        kotlin.jvm.internal.q.b(2);
        i.j(r23, r112);
        kotlin.jvm.internal.q.a(2);
        return null;
    L33:
        r110.element = r25;     // Catch: Throwable -> L41
        r111.element = true;     // Catch: Throwable -> L41
        goto L34
    L35:
        kotlin.v r27 = kotlin.v.f15822a;     // Catch: Throwable -> L41
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r112);
        kotlin.jvm.internal.q.a(1);
        if (r111.element == true) goto L40;
        return null;
    L40:
        return r110.element;
    L14:
        th = move-exception;
        r24 = th;
        r23 = r8;
        goto L50
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$ObjectRef r28 = new Ref$ObjectRef();
        r28.element = null;
        Ref$BooleanRef r29 = new Ref$BooleanRef();
        r29.element = false;
        r110 = r28;
        r14 = r1;
        r22 = r3;
        r111 = r29;
        r112 = null;
        r16 = r17.iterator();     // Catch: Throwable -> L43
        r26 = r17;
        r15 = r26;
        r23 = r15;
        r20 = r23;
        r21 = r18;
    L43:
        th = th;
        r23 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$singleOrNull$3(r19);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0098 -> B:49:0x009f). Please report as a decompilation issue!!! */
    public static final <E> Object q(p<? extends E> r11, int r12, kotlin.jvm.b.l<? super Integer, ? extends E> r13, kotlin.coroutines.c<? super E> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$elementAtOrElse$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$elementAtOrElse$1 r0 = (ChannelsKt__Channels_commonKt$elementAtOrElse$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$5;
        int r17 = r0.I$1;
        p<? extends E> r18 = (p) r0.L$4;
        Throwable r4 = (Throwable) r0.L$3;
        p<? extends E> r5 = (p) r0.L$2;
        kotlin.jvm.b.l<? super Integer, ? extends E> r6 = (kotlin.jvm.b.l) r0.L$1;
        int r7 = r0.I$0;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$elementAtOrElse$1 r9 = r0;
        p<? extends E> r10 = r18;
        p<? extends E> r19 = r5;
        ChannelsKt__Channels_commonKt$elementAtOrElse$1 r20 = r9;
        Object r21 = r2;
        kotlin.jvm.b.l<? super Integer, ? extends E> r22 = r6;
    L49:
    L41:
        Throwable th = th;
    L52:
        throw th;     // Catch: Throwable -> L46
    L46:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r19, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L31:
        if (((Boolean) r15).booleanValue() == false) goto L38;
        Object r110 = r16.next();     // Catch: Throwable -> L41
        int r23 = r17 + 1;
        if (r7 != r17) goto L37;
        kotlin.jvm.internal.q.b(3);
        i.j(r19, r4);
        kotlin.jvm.internal.q.a(3);
        return r110;
    L37:
        p<? extends E> r111 = r10;
        int r24 = r7;
        p<? extends E> r112 = r8;
        Throwable r25 = r4;
        int r26 = r23;
    L26:
        r20.L$0 = r112;     // Catch: Throwable -> L41
        r20.I$0 = r24;     // Catch: Throwable -> L41
        r20.L$1 = r22;     // Catch: Throwable -> L41
        r20.L$2 = r19;     // Catch: Throwable -> L41
        r20.L$3 = r25;     // Catch: Throwable -> L41
        r20.L$4 = r111;     // Catch: Throwable -> L41
        r20.I$1 = r26;     // Catch: Throwable -> L41
        r20.L$5 = r16;     // Catch: Throwable -> L41
        r20.label = 1;     // Catch: Throwable -> L41
        Object r27 = r16.a(r20);     // Catch: Throwable -> L41
        if (r27 != r21) goto L29;
        return r21;
    L29:
        r8 = r112;
        r17 = r26;
        r4 = r25;
        r7 = r24;
        r10 = r111;
        r15 = r27;
        goto L49
    L38:
        E r113 = r22.invoke(kotlin.coroutines.jvm.internal.a.d(r7));     // Catch: Throwable -> L41
        kotlin.jvm.internal.q.b(2);
        i.j(r19, r4);
        kotlin.jvm.internal.q.a(2);
        return r113;
    L14:
        th = th;
        r19 = r5;
        goto L52
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        if (r12 >= 0) goto L23;
        E r114 = r13.invoke(kotlin.coroutines.jvm.internal.a.d(r12));     // Catch: Throwable -> L43
        kotlin.jvm.internal.q.b(4);
        i.j(r11, null);
        kotlin.jvm.internal.q.a(4);
        return r114;
    L23:
        r26 = 0;
        r25 = null;
        r21 = r2;
        r111 = r11;
        r22 = r13;
        r19 = r111;
        r16 = r11.iterator();     // Catch: Throwable -> L43
        r20 = r0;
        r24 = r12;
        r112 = r19;
    L43:
        th = move-exception;
        r19 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$elementAtOrElse$1(r14);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:43:0x0099). Please report as a decompilation issue!!! */
    public static final <E> Object q0(p<? extends E> r13, kotlin.jvm.b.l<? super E, Integer> r14, kotlin.coroutines.c<? super Integer> r15) {
        if ((r15 instanceof ChannelsKt__Channels_commonKt$sumBy$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$sumBy$1 r0 = (ChannelsKt__Channels_commonKt$sumBy$1) r15;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r16 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r17 = (ChannelIterator) r0.L$7;
        p<? extends E> r18 = (p) r0.L$6;
        Throwable r4 = (Throwable) r0.L$5;
        p<? extends E> r5 = (p) r0.L$4;
        p<? extends E> r6 = (p) r0.L$3;
        Ref$IntRef r7 = (Ref$IntRef) r0.L$2;
        kotlin.jvm.b.l<? super E, Integer> r8 = (kotlin.jvm.b.l) r0.L$1;
        p<? extends E> r9 = (p) r0.L$0;
        kotlin.k.b(r16);     // Catch: Throwable -> L14
        p<? extends E> r10 = r18;
        p<? extends E> r19 = r9;
        Ref$IntRef r11 = r7;
        Object r12 = r2;
        ChannelsKt__Channels_commonKt$sumBy$1 r20 = r0;
        p<? extends E> r21 = r5;
        Throwable r22 = r4;
        kotlin.jvm.b.l<? super E, Integer> r23 = r8;
    L43:
    L31:
        Throwable th = th;
    L39:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r21, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r16).booleanValue() == false) goto L28;
        r11.element += r23.invoke((Object) r17.next()).intValue();     // Catch: Throwable -> L31
        p<? extends E> r110 = r6;
        Object r24 = r12;
        Throwable r25 = r22;
        Ref$IntRef r26 = r11;
    L21:
        r20.L$0 = r19;     // Catch: Throwable -> L31
        r20.L$1 = r23;     // Catch: Throwable -> L31
        r20.L$2 = r26;     // Catch: Throwable -> L31
        r20.L$3 = r110;     // Catch: Throwable -> L31
        r20.L$4 = r21;     // Catch: Throwable -> L31
        r20.L$5 = r25;     // Catch: Throwable -> L31
        r20.L$6 = r10;     // Catch: Throwable -> L31
        r20.L$7 = r17;     // Catch: Throwable -> L31
        r20.label = 1;     // Catch: Throwable -> L31
        Object r27 = r17.a(r20);     // Catch: Throwable -> L31
        if (r27 != r24) goto L24;
        return r24;
    L24:
        Object r111 = r24;
        r6 = r110;
        r16 = r27;
        r11 = r26;
        r22 = r25;
        r12 = r111;
        goto L43
    L28:
        kotlin.v r112 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r21, r22);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.d(r11.element);
    L14:
        th = th;
        r21 = r5;
        goto L39
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r16);
        Ref$IntRef r113 = new Ref$IntRef();
        r113.element = 0;
        r26 = r113;
        r24 = r2;
        r25 = null;
        r110 = r13;
        r10 = r110;
        r23 = r14;
        r19 = r10;
        r17 = r13.iterator();     // Catch: Throwable -> L33
        r20 = r0;
        r21 = r19;
    L33:
        th = move-exception;
        r21 = r13;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$sumBy$1(r15);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0082 -> B:29:0x0088). Please report as a decompilation issue!!! */
    public static final <E> Object r(p<? extends E> r11, int r12, kotlin.coroutines.c<? super E> r13) {
        if ((r13 instanceof ChannelsKt__Channels_commonKt$elementAtOrNull$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$elementAtOrNull$1 r0 = (ChannelsKt__Channels_commonKt$elementAtOrNull$1) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r15 = (ChannelIterator) r0.L$4;
        int r16 = r0.I$1;
        p<? extends E> r4 = (p) r0.L$3;
        Throwable r5 = (Throwable) r0.L$2;
        p<? extends E> r6 = (p) r0.L$1;
        int r7 = r0.I$0;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$elementAtOrNull$1 r9 = r0;
        p<? extends E> r10 = r4;
        Object r17 = r2;
        int r18 = r7;
        Throwable r19 = r5;
    L29:
        if (((Boolean) r14).booleanValue() == false) goto L37;
        Object r110 = r15.next();     // Catch: Throwable -> L14
        int r20 = r16 + 1;
        if (r18 != r16) goto L36;
        i.j(r6, r19);
        return r110;
    L36:
        p<? extends E> r111 = r6;
        p<? extends E> r112 = r8;
        Object r21 = r17;
        int r22 = r20;
    L47:
        r9.L$0 = r112;     // Catch: Throwable -> L39
        r9.I$0 = r18;     // Catch: Throwable -> L39
        r9.L$1 = r111;     // Catch: Throwable -> L39
        r9.L$2 = r19;     // Catch: Throwable -> L39
        r9.L$3 = r10;     // Catch: Throwable -> L39
        r9.I$1 = r22;     // Catch: Throwable -> L39
        r9.L$4 = r15;     // Catch: Throwable -> L39
        r9.label = 1;     // Catch: Throwable -> L39
        Object r23 = r15.a(r9);     // Catch: Throwable -> L39
        if (r23 != r21) goto L28;
        return r21;
    L28:
        r8 = r112;
        r16 = r22;
        r17 = r21;
        r6 = r111;
        r14 = r23;
    L39:
        Throwable th = th;
    L53:
        throw th;     // Catch: Throwable -> L44
    L44:
        th = move-exception;
        i.j(r111, th);
        throw th;
    L37:
        i.j(r6, r19);
        return null;
    L14:
        th = th;
        r111 = r6;
        goto L53
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r14);
        if (r12 >= 0) goto L49;
        i.j(r11, null);
        return null;
    L49:
        r111 = r11;
        r9 = r0;
        r21 = r2;
        r19 = null;
        r10 = r111;
        r18 = r12;
        r15 = r11.iterator();     // Catch: Throwable -> L41
        r22 = 0;
        r112 = r10;
    L41:
        th = move-exception;
        r111 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$elementAtOrNull$1(r13);
        goto L8
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009d -> B:40:0x00a2). Please report as a decompilation issue!!! */
    public static final <E> Object r0(p<? extends E> r18, kotlin.jvm.b.l<? super E, Double> r19, kotlin.coroutines.c<? super Double> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$sumByDouble$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$sumByDouble$1 r1 = (ChannelsKt__Channels_commonKt$sumByDouble$1) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r5 = (ChannelIterator) r1.L$7;
        p<? extends E> r6 = (p) r1.L$6;
        Throwable r7 = (Throwable) r1.L$5;
        p<? extends E> r8 = (p) r1.L$4;
        p<? extends E> r9 = (p) r1.L$3;
        Ref$DoubleRef r10 = (Ref$DoubleRef) r1.L$2;
        kotlin.jvm.b.l<? super E, Double> r11 = (kotlin.jvm.b.l) r1.L$1;
        p<? extends E> r12 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$sumByDouble$1 r13 = r1;
        p<? extends E> r14 = r9;
        ChannelIterator r15 = r5;
        p<? extends E> r16 = r6;
        kotlin.jvm.b.l<? super E, Double> r17 = r11;
        Ref$DoubleRef r110 = r10;
        Throwable r21 = r7;
        Object r22 = r3;
        p<? extends E> r23 = r8;
    L40:
    L31:
        th = th;
    L35:
        Throwable r24 = th;
    L44:
        throw r24;     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r24);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L28;
        r110.element += r17.invoke((Object) r15.next()).doubleValue();     // Catch: Throwable -> L31
        p<? extends E> r25 = r12;
    L21:
        r13.L$0 = r25;     // Catch: Throwable -> L31
        r13.L$1 = r17;     // Catch: Throwable -> L31
        r13.L$2 = r110;     // Catch: Throwable -> L31
        r13.L$3 = r14;     // Catch: Throwable -> L31
        r13.L$4 = r23;     // Catch: Throwable -> L31
        r13.L$5 = r21;     // Catch: Throwable -> L31
        r13.L$6 = r16;     // Catch: Throwable -> L31
        r13.L$7 = r15;     // Catch: Throwable -> L31
        r13.label = 1;     // Catch: Throwable -> L31
        Object r111 = r15.a(r13);     // Catch: Throwable -> L31
        if (r111 != r22) goto L24;
        return r22;
    L24:
        r12 = r25;
        r0 = r111;
        goto L40
    L28:
        kotlin.v r26 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        kotlin.jvm.internal.q.b(1);
        i.j(r23, r21);
        kotlin.jvm.internal.q.a(1);
        return kotlin.coroutines.jvm.internal.a.b(r110.element);
    L14:
        th = move-exception;
        r24 = th;
        r23 = r8;
        goto L44
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$DoubleRef r27 = new Ref$DoubleRef();
        r27.element = 0.0d;
        r110 = r27;
        r13 = r1;
        r22 = r3;
        r21 = null;
        r15 = r18.iterator();     // Catch: Throwable -> L33
        r25 = r18;
        r14 = r25;
        r23 = r14;
        r16 = r23;
        r17 = r19;
    L33:
        th = th;
        r23 = r18;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$sumByDouble$1(r20);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:43:0x00ae). Please report as a decompilation issue!!! */
    public static final <E, C extends Collection<? super E>> Object s(p<? extends E> r17, C r18, kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r19, kotlin.coroutines.c<? super C> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$filterIndexedTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterIndexedTo$1 r1 = (ChannelsKt__Channels_commonKt$filterIndexedTo$1) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        int r5 = 1;
        if (r4 == 0) goto L18;
        if (r4 != 1) goto L17;
        ChannelIterator r6 = (ChannelIterator) r1.L$9;
        p<? extends E> r7 = (p) r1.L$8;
        Throwable r8 = (Throwable) r1.L$7;
        p<? extends E> r9 = (p) r1.L$6;
        p<? extends E> r10 = (p) r1.L$5;
        Ref$IntRef r11 = (Ref$IntRef) r1.L$4;
        p<? extends E> r12 = (p) r1.L$3;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r13 = (kotlin.jvm.b.p) r1.L$2;
        Collection r14 = (Collection) r1.L$1;
        p<? extends E> r15 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$filterIndexedTo$1 r16 = r1;
        p<? extends E> r21 = r12;
        ChannelIterator r110 = r6;
        p<? extends E> r22 = r9;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r23 = r13;
        Throwable r111 = r8;
        ?? r24 = r14;
        Ref$IntRef r112 = r11;
        Object r25 = r3;
        p<? extends E> r26 = r10;
    L43:
    L34:
        th = th;
    L38:
        Throwable r27 = th;
    L49:
        throw r27;     // Catch: Throwable -> L40
    L40:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r27);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L26:
        if (((Boolean) r0).booleanValue() == false) goto L31;
        Object r28 = r110.next();     // Catch: Throwable -> L34
        int r113 = r112.element;     // Catch: Throwable -> L34
        r112.element = r113 + 1;     // Catch: Throwable -> L34
        f0 r114 = new f0(r113, r28);     // Catch: Throwable -> L34
        int r29 = r114.a();     // Catch: Throwable -> L34
        Object r30 = (Object) r114.b();
        if (r23.invoke(kotlin.coroutines.jvm.internal.a.d(r29), r30).booleanValue() == false) goto L30;
        r24.add(r30);     // Catch: Throwable -> L34
    L30:
        p<? extends E> r31 = r15;
        r5 = 1;
        ?? r32 = r24;
    L21:
        r16.L$0 = r31;     // Catch: Throwable -> L34
        r16.L$1 = r32;     // Catch: Throwable -> L34
        r16.L$2 = r23;     // Catch: Throwable -> L34
        r16.L$3 = r21;     // Catch: Throwable -> L34
        r16.L$4 = r112;     // Catch: Throwable -> L34
        r16.L$5 = r26;     // Catch: Throwable -> L34
        r16.L$6 = r22;     // Catch: Throwable -> L34
        r16.L$7 = r111;     // Catch: Throwable -> L34
        r16.L$8 = r7;     // Catch: Throwable -> L34
        r16.L$9 = r110;     // Catch: Throwable -> L34
        r16.label = r5;     // Catch: Throwable -> L34
        Object r115 = r110.a(r16);     // Catch: Throwable -> L34
        if (r115 != r25) goto L24;
        return r25;
    L24:
        r15 = r31;
        r0 = r115;
        r24 = r32;
        goto L43
    L31:
        kotlin.v r33 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        kotlin.jvm.internal.q.b(1);
        i.j(r22, r111);
        kotlin.jvm.internal.q.a(1);
        return r24;
    L14:
        th = move-exception;
        r27 = th;
        r22 = r9;
        goto L49
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r0);
        Ref$IntRef r34 = new Ref$IntRef();
        r34.element = 0;
        r32 = r18;
        r23 = r19;
        r112 = r34;
        r16 = r1;
        r25 = r3;
        r111 = null;
        r110 = r17.iterator();     // Catch: Throwable -> L36
        r31 = r17;
        r21 = r31;
        r26 = r21;
        r22 = r26;
        r7 = r22;
    L36:
        th = th;
        r22 = r17;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$filterIndexedTo$1(r20);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0081: MOVE (r12 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:21:0x0081 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00da -> B:47:0x0094). Please report as a decompilation issue!!! */
    public static final <E, C extends t<? super E>> Object s0(p<? extends E> r10, C r11, kotlin.coroutines.c<? super C> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$toChannel$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$toChannel$1 r0 = (ChannelsKt__Channels_commonKt$toChannel$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 != 0) goto L46;
        kotlin.k.b(r13);
        ChannelsKt__Channels_commonKt$toChannel$1 r5 = r0;
        Object r6 = r2;
        ChannelIterator r7 = r10.iterator();     // Catch: Throwable -> L40
        p<? extends E> r4 = r10;
        ?? r8 = r11;
        Throwable r9 = null;
        p<? extends E> r14 = r4;
        p<? extends E> r15 = r14;
    L47:
        r5.L$0 = r10;     // Catch: Throwable -> L38
        r5.L$1 = r8;     // Catch: Throwable -> L38
        r5.L$2 = r14;     // Catch: Throwable -> L38
        r5.L$3 = r15;     // Catch: Throwable -> L38
        r5.L$4 = r9;     // Catch: Throwable -> L38
        r5.L$5 = r4;     // Catch: Throwable -> L38
        r5.L$6 = r7;     // Catch: Throwable -> L38
        r5.label = 1;     // Catch: Throwable -> L38
        Object r16 = r7.a(r5);     // Catch: Throwable -> L38
        if (r16 != r6) goto L28;
        return r6;
    L28:
        ChannelsKt__Channels_commonKt$toChannel$1 r17 = r5;
        p<? extends E> r18 = r10;
        ChannelIterator r19 = r7;
        ?? r20 = r8;
        r2 = r6;
        p<? extends E> r21 = r14;
        p<? extends E> r110 = r4;
        r0 = r17;
    L30:
        if (((Boolean) r16).booleanValue() == false) goto L35;
        Object r22 = r19.next();     // Catch: Throwable -> L38
        r0.L$0 = r18;     // Catch: Throwable -> L38
        r0.L$1 = r20;     // Catch: Throwable -> L38
        r0.L$2 = r21;     // Catch: Throwable -> L38
        r0.L$3 = r15;     // Catch: Throwable -> L38
        r0.L$4 = r9;     // Catch: Throwable -> L38
        r0.L$5 = r110;     // Catch: Throwable -> L38
        r0.L$6 = r19;     // Catch: Throwable -> L38
        r0.L$7 = r22;     // Catch: Throwable -> L38
        r0.L$8 = r22;     // Catch: Throwable -> L38
        r0.label = 2;     // Catch: Throwable -> L38
        if (r20.F(r22, r0) != r2) goto L34;
        return r2;
    L34:
        ?? r23 = r20;
        r7 = r19;
        r10 = r18;
        r5 = r0;
        r4 = r110;
        r14 = r21;
        r6 = r2;
        r8 = r23;
        goto L47
    L35:
        kotlin.v r111 = kotlin.v.f15822a;     // Catch: Throwable -> L38
        i.j(r15, r9);
        return r20;
    L38:
        th = th;
    L51:
        throw th;     // Catch: Throwable -> L43
    L43:
        th = move-exception;
        i.j(r15, th);
        throw th;
    L40:
        th = move-exception;
        r15 = r10;
        th = th;
        goto L51
    L46:
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r112 = r0.L$8;
        Object r113 = r0.L$7;
        ChannelIterator r114 = (ChannelIterator) r0.L$6;
        p<? extends E> r115 = (p) r0.L$5;
        r9 = (Throwable) r0.L$4;
        p<? extends E> r24 = (p) r0.L$3;
        p<? extends E> r25 = (p) r0.L$2;
        t r26 = (t) r0.L$1;
        p<? extends E> r27 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        r15 = r24;
        r5 = r0;
        r4 = r115;
        r14 = r25;
        r6 = r2;
        r8 = r26;
        r7 = r114;
        r10 = r27;
        goto L47
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        r19 = (ChannelIterator) r0.L$6;
        r110 = (p) r0.L$5;
        r9 = (Throwable) r0.L$4;
        p<? extends E> r28 = (p) r0.L$3;
        r21 = (p) r0.L$2;
        t r29 = (t) r0.L$1;
        p<? extends E> r30 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L20
        r16 = r13;
        r15 = r28;
        r18 = r30;
        r20 = r29;
    L20:
        th = th;
        r15 = r5;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$toChannel$1(r12);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00a1: MOVE (r3 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x00a0 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    public static final <E, C extends t<? super E>> Object t(p<? extends E> r19, C r20, kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r21, kotlin.coroutines.c<? super C> r22) {
        if ((r22 instanceof ChannelsKt__Channels_commonKt$filterIndexedTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterIndexedTo$3 r1 = (ChannelsKt__Channels_commonKt$filterIndexedTo$3) r22;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        int r5 = 1;
        if (r4 != 0) goto L58;
        kotlin.k.b(r0);
        Ref$IntRef r6 = new Ref$IntRef();
        r6.element = 0;
        ?? r7 = r20;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r8 = r21;
        Ref$IntRef r9 = r6;
        ChannelsKt__Channels_commonKt$filterIndexedTo$3 r10 = r1;
        Object r11 = r3;
        Throwable r12 = null;
        ChannelIterator r13 = r19.iterator();     // Catch: Throwable -> L45
        p<? extends E> r14 = r19;
        p<? extends E> r15 = r14;
        p<? extends E> r16 = r15;
        p<? extends E> r17 = r16;
        p<? extends E> r18 = r17;
    L52:
        r10.L$0 = r14;     // Catch: Throwable -> L43
        r10.L$1 = r7;     // Catch: Throwable -> L43
        r10.L$2 = r8;     // Catch: Throwable -> L43
        r10.L$3 = r15;     // Catch: Throwable -> L43
        r10.L$4 = r9;     // Catch: Throwable -> L43
        r10.L$5 = r16;     // Catch: Throwable -> L43
        r10.L$6 = r17;     // Catch: Throwable -> L43
        r10.L$7 = r12;     // Catch: Throwable -> L43
        r10.L$8 = r18;     // Catch: Throwable -> L43
        r10.L$9 = r13;     // Catch: Throwable -> L43
        r10.label = r5;     // Catch: Throwable -> L43
        Object r110 = r13.a(r10);     // Catch: Throwable -> L43
        if (r110 != r11) goto L28;
        return r11;
    L28:
        p<? extends E> r111 = r14;
        r0 = r110;
        Object r112 = r11;
        p<? extends E> r113 = r15;
        r1 = r10;
        Ref$IntRef r114 = r9;
        p<? extends E> r23 = r16;
        r3 = r112;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r115 = r8;
        ?? r24 = r7;
        Throwable r25 = r12;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r116 = r115;
    L30:
        if (((Boolean) r0).booleanValue() == false) goto L40;
        Object r26 = r13.next();     // Catch: Throwable -> L43
        int r27 = r114.element;     // Catch: Throwable -> L43
        r114.element = r27 + 1;     // Catch: Throwable -> L43
        f0 r117 = new f0(r27, r26);     // Catch: Throwable -> L43
        int r28 = r117.a();     // Catch: Throwable -> L43
        Object r29 = (Object) r117.b();
        Object r118 = r3;
        if (r116.invoke(kotlin.coroutines.jvm.internal.a.d(r28), r29).booleanValue() == false) goto L38;
        r1.L$0 = r111;     // Catch: Throwable -> L43
        r1.L$1 = r24;     // Catch: Throwable -> L43
        r1.L$2 = r116;     // Catch: Throwable -> L43
        r1.L$3 = r113;     // Catch: Throwable -> L43
        r1.L$4 = r114;     // Catch: Throwable -> L43
        r1.L$5 = r23;     // Catch: Throwable -> L43
        r1.L$6 = r17;     // Catch: Throwable -> L43
        r1.L$7 = r25;     // Catch: Throwable -> L43
        r1.L$8 = r18;     // Catch: Throwable -> L43
        r1.L$9 = r13;     // Catch: Throwable -> L43
        r1.L$10 = r26;     // Catch: Throwable -> L43
        r1.L$11 = r26;     // Catch: Throwable -> L43
        r1.L$12 = r117;     // Catch: Throwable -> L43
        r1.I$0 = r28;     // Catch: Throwable -> L43
        r1.L$13 = r29;     // Catch: Throwable -> L43
        r1.label = 2;     // Catch: Throwable -> L43
        if (r24.F(r29, r1) != r118) goto L36;
        return r118;
    L36:
        r3 = r118;
        ?? r119 = r24;
        p<? extends E> r30 = r17;
        ChannelIterator r31 = r13;
        ?? r120 = r119;
    L37:
        Ref$IntRef r121 = r114;
        r10 = r1;
        r15 = r113;
        r11 = r3;
        r16 = r23;
        r9 = r121;
        ?? r122 = r120;
        r13 = r31;
        r17 = r30;
        r8 = r116;
        r12 = r25;
        r7 = r122;
        r14 = r111;
        r5 = 1;
        goto L52
    L38:
        r16 = r23;
        r9 = r114;
        r10 = r1;
        r15 = r113;
        r11 = r118;
        kotlin.jvm.b.p<? super Integer, ? super E, Boolean> r123 = r116;
        r12 = r25;
        r7 = r24;
        r8 = r123;
        r14 = r111;
        r5 = 1;
        goto L52
    L40:
        kotlin.v r32 = kotlin.v.f15822a;     // Catch: Throwable -> L43
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r25);
        kotlin.jvm.internal.q.a(1);
        return r24;
    L43:
        Throwable th = th;
    L47:
        Throwable r33 = th;
    L56:
        throw r33;     // Catch: Throwable -> L49
    L49:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r17, r33);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L45:
        th = th;
        r17 = r19;
        goto L47
    L58:
        if (r4 == 1) goto L17;
        if (r4 != 2) goto L16;
        Object r34 = r1.L$13;
        int r35 = r1.I$0;
        f0 r36 = (f0) r1.L$12;
        Object r37 = r1.L$11;
        Object r38 = r1.L$10;
        r31 = (ChannelIterator) r1.L$9;
        r18 = (p) r1.L$8;
        r25 = (Throwable) r1.L$7;
        r30 = (p) r1.L$6;
        r23 = (p) r1.L$5;
        r114 = (Ref$IntRef) r1.L$4;
        r113 = (p) r1.L$3;
        r116 = (kotlin.jvm.b.p) r1.L$2;
        t r124 = (t) r1.L$1;
        r111 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r120 = r124;
        goto L37
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator r39 = (ChannelIterator) r1.L$9;
        r18 = (p) r1.L$8;
        r25 = (Throwable) r1.L$7;
        p<? extends E> r40 = (p) r1.L$6;
        r23 = (p) r1.L$5;
        r114 = (Ref$IntRef) r1.L$4;
        r113 = (p) r1.L$3;
        r116 = (kotlin.jvm.b.p) r1.L$2;
        t r125 = (t) r1.L$1;
        r111 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r13 = r39;
        r17 = r40;
        r24 = r125;
    L20:
        th = move-exception;
        r33 = th;
        r17 = r8;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$filterIndexedTo$3(r22);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:39:0x0087). Please report as a decompilation issue!!! */
    public static final <E, C extends Collection<? super E>> Object t0(p<? extends E> r10, C r11, kotlin.coroutines.c<? super C> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$toCollection$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$toCollection$1 r0 = (ChannelsKt__Channels_commonKt$toCollection$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r15 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        p<? extends E> r9 = r15;
        p<? extends E> r16 = r8;
        Throwable r17 = r4;
        ?? r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$toCollection$1 r20 = r0;
        p<? extends E> r21 = r5;
    L39:
    L31:
        Throwable th = th;
    L43:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        i.j(r21, th);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == false) goto L28;
        r18.add(r14.next());     // Catch: Throwable -> L31
        p<? extends E> r110 = r6;
        Object r22 = r19;
        Throwable r23 = r17;
        ?? r24 = r18;
    L21:
        r20.L$0 = r16;     // Catch: Throwable -> L31
        r20.L$1 = r24;     // Catch: Throwable -> L31
        r20.L$2 = r110;     // Catch: Throwable -> L31
        r20.L$3 = r21;     // Catch: Throwable -> L31
        r20.L$4 = r23;     // Catch: Throwable -> L31
        r20.L$5 = r9;     // Catch: Throwable -> L31
        r20.L$6 = r14;     // Catch: Throwable -> L31
        r20.label = 1;     // Catch: Throwable -> L31
        Object r25 = r14.a(r20);     // Catch: Throwable -> L31
        if (r25 != r22) goto L24;
        return r22;
    L24:
        Object r26 = r22;
        r6 = r110;
        r13 = r25;
        r17 = r23;
        r19 = r26;
        r18 = r24;
        goto L39
    L28:
        kotlin.v r111 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        i.j(r21, r17);
        return r18;
    L14:
        th = th;
        r21 = r5;
        goto L43
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r110 = r10;
        r21 = r110;
        r9 = r21;
        r14 = r10.iterator();     // Catch: Throwable -> L33
        r24 = r11;
        r16 = r9;
    L33:
        th = move-exception;
        r21 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$toCollection$1(r12);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:42:0x0087). Please report as a decompilation issue!!! */
    public static final <E, C extends Collection<? super E>> Object u(p<? extends E> r10, C r11, kotlin.coroutines.c<? super C> r12) {
        if ((r12 instanceof ChannelsKt__Channels_commonKt$filterNotNullTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterNotNullTo$1 r0 = (ChannelsKt__Channels_commonKt$filterNotNullTo$1) r12;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r13 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r14 = (ChannelIterator) r0.L$6;
        p<? extends E> r15 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r13);     // Catch: Throwable -> L14
        p<? extends E> r9 = r15;
        p<? extends E> r16 = r8;
        Throwable r17 = r4;
        ?? r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$filterNotNullTo$1 r20 = r0;
        p<? extends E> r21 = r5;
    L42:
    L34:
        Throwable th = th;
    L46:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        i.j(r21, th);
        throw th;
    L26:
        if (((Boolean) r13).booleanValue() == false) goto L31;
        Object r110 = r14.next();     // Catch: Throwable -> L34
        if (r110 == null) goto L30;
        r18.add(r110);     // Catch: Throwable -> L34
    L30:
        p<? extends E> r111 = r6;
        Object r22 = r19;
        Throwable r23 = r17;
        ?? r24 = r18;
    L21:
        r20.L$0 = r16;     // Catch: Throwable -> L34
        r20.L$1 = r24;     // Catch: Throwable -> L34
        r20.L$2 = r111;     // Catch: Throwable -> L34
        r20.L$3 = r21;     // Catch: Throwable -> L34
        r20.L$4 = r23;     // Catch: Throwable -> L34
        r20.L$5 = r9;     // Catch: Throwable -> L34
        r20.L$6 = r14;     // Catch: Throwable -> L34
        r20.label = 1;     // Catch: Throwable -> L34
        Object r25 = r14.a(r20);     // Catch: Throwable -> L34
        if (r25 != r22) goto L24;
        return r22;
    L24:
        Object r26 = r22;
        r6 = r111;
        r13 = r25;
        r17 = r23;
        r19 = r26;
        r18 = r24;
        goto L42
    L31:
        kotlin.v r112 = kotlin.v.f15822a;     // Catch: Throwable -> L34
        i.j(r21, r17);
        return r18;
    L14:
        th = th;
        r21 = r5;
        goto L46
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r13);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r111 = r10;
        r21 = r111;
        r9 = r21;
        r14 = r10.iterator();     // Catch: Throwable -> L36
        r24 = r11;
        r16 = r9;
    L36:
        th = move-exception;
        r21 = r10;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$filterNotNullTo$1(r12);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:41:0x0087). Please report as a decompilation issue!!! */
    public static final <K, V, M extends Map<? super K, ? super V>> Object u0(p<? extends Pair<? extends K, ? extends V>> r11, M r12, kotlin.coroutines.c<? super M> r13) {
        if ((r13 instanceof ChannelsKt__Channels_commonKt$toMap$2) == false) goto L7;
        ChannelsKt__Channels_commonKt$toMap$2 r0 = (ChannelsKt__Channels_commonKt$toMap$2) r13;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r14 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r15 = (ChannelIterator) r0.L$6;
        p<? extends Pair<? extends K, ? extends V>> r16 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends Pair<? extends K, ? extends V>> r5 = (p) r0.L$3;
        p<? extends Pair<? extends K, ? extends V>> r6 = (p) r0.L$2;
        Map r7 = (Map) r0.L$1;
        p<? extends Pair<? extends K, ? extends V>> r8 = (p) r0.L$0;
        kotlin.k.b(r14);     // Catch: Throwable -> L14
        p<? extends Pair<? extends K, ? extends V>> r9 = r16;
        p<? extends Pair<? extends K, ? extends V>> r17 = r8;
        Throwable r10 = r4;
        ?? r18 = r7;
        Object r19 = r2;
        ChannelsKt__Channels_commonKt$toMap$2 r20 = r0;
        p<? extends Pair<? extends K, ? extends V>> r21 = r5;
    L41:
    L31:
        Throwable th = th;
    L39:
        throw th;     // Catch: Throwable -> L36
    L36:
        th = move-exception;
        i.j(r21, th);
        throw th;
    L26:
        if (((Boolean) r14).booleanValue() == false) goto L28;
        Pair r110 = (Pair) r15.next();     // Catch: Throwable -> L31
        r18.put(r110.getFirst(), r110.getSecond());     // Catch: Throwable -> L31
        p<? extends Pair<? extends K, ? extends V>> r111 = r6;
        Object r22 = r19;
        Throwable r23 = r10;
        ?? r24 = r18;
    L21:
        r20.L$0 = r17;     // Catch: Throwable -> L31
        r20.L$1 = r24;     // Catch: Throwable -> L31
        r20.L$2 = r111;     // Catch: Throwable -> L31
        r20.L$3 = r21;     // Catch: Throwable -> L31
        r20.L$4 = r23;     // Catch: Throwable -> L31
        r20.L$5 = r9;     // Catch: Throwable -> L31
        r20.L$6 = r15;     // Catch: Throwable -> L31
        r20.label = 1;     // Catch: Throwable -> L31
        Object r25 = r15.a(r20);     // Catch: Throwable -> L31
        if (r25 != r22) goto L24;
        return r22;
    L24:
        Object r26 = r22;
        r6 = r111;
        r14 = r25;
        r10 = r23;
        r19 = r26;
        r18 = r24;
        goto L41
    L28:
        kotlin.v r112 = kotlin.v.f15822a;     // Catch: Throwable -> L31
        i.j(r21, r10);
        return r18;
    L14:
        th = th;
        r21 = r5;
        goto L39
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r14);
        r23 = null;
        r20 = r0;
        r22 = r2;
        r111 = r11;
        r21 = r111;
        r9 = r21;
        r15 = r11.iterator();     // Catch: Throwable -> L33
        r24 = r12;
        r17 = r9;
    L33:
        th = move-exception;
        r21 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$toMap$2(r13);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public static final <E, C extends t<? super E>> Object v(p<? extends E> r12, C r13, kotlin.coroutines.c<? super C> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$filterNotNullTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterNotNullTo$3 r0 = (ChannelsKt__Channels_commonKt$filterNotNullTo$3) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L22;
        if (r3 == 1) goto L17;
        if (r3 != 2) goto L16;
        Object r16 = r0.L$8;
        Object r17 = r0.L$7;
        ChannelIterator r18 = (ChannelIterator) r0.L$6;
        p<? extends E> r19 = (p) r0.L$5;
        Throwable r4 = (Throwable) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        p<? extends E> r6 = (p) r0.L$2;
        t r7 = (t) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L20
        p<? extends E> r110 = r5;
        ChannelsKt__Channels_commonKt$filterNotNullTo$3 r9 = r0;
        p<? extends E> r10 = r19;
        p<? extends E> r111 = r6;
        Object r11 = r2;
        ?? r20 = r7;
        ChannelIterator r21 = r18;
        r12 = r8;
    L52:
        r9.L$0 = r12;     // Catch: Throwable -> L40
        r9.L$1 = r20;     // Catch: Throwable -> L40
        r9.L$2 = r111;     // Catch: Throwable -> L40
        r9.L$3 = r110;     // Catch: Throwable -> L40
        r9.L$4 = r4;     // Catch: Throwable -> L40
        r9.L$5 = r10;     // Catch: Throwable -> L40
        r9.L$6 = r21;     // Catch: Throwable -> L40
        r9.label = 1;     // Catch: Throwable -> L40
        Object r22 = r21.a(r9);     // Catch: Throwable -> L40
        if (r22 != r11) goto L28;
        return r11;
    L28:
        ChannelsKt__Channels_commonKt$filterNotNullTo$3 r23 = r9;
        p<? extends E> r24 = r110;
        r15 = r22;
        ChannelIterator r25 = r21;
        Object r26 = r11;
        ChannelsKt__Channels_commonKt$filterNotNullTo$3 r27 = r23;
        r20 = r20;
    L30:
        if (((Boolean) r15).booleanValue() == false) goto L37;
        Object r112 = r25.next();     // Catch: Throwable -> L20
        if (r112 == null) goto L36;
        r27.L$0 = r12;     // Catch: Throwable -> L20
        r27.L$1 = r20;     // Catch: Throwable -> L20
        r27.L$2 = r111;     // Catch: Throwable -> L20
        r27.L$3 = r24;     // Catch: Throwable -> L20
        r27.L$4 = r4;     // Catch: Throwable -> L20
        r27.L$5 = r10;     // Catch: Throwable -> L20
        r27.L$6 = r25;     // Catch: Throwable -> L20
        r27.L$7 = r112;     // Catch: Throwable -> L20
        r27.L$8 = r112;     // Catch: Throwable -> L20
        r27.label = 2;     // Catch: Throwable -> L20
        if (r20.F(r112, r27) != r26) goto L36;
        return r26;
    L36:
        r110 = r24;
        r9 = r27;
        r11 = r26;
        r21 = r25;
        goto L52
    L56:
        r110 = r24;
        r9 = r27;
        r11 = r26;
        r21 = r25;
        goto L52
    L37:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L20
        i.j(r24, r4);
        return r20;
    L40:
        th = th;
        r24 = r110;
    L48:
        throw th;     // Catch: Throwable -> L45
    L45:
        th = move-exception;
        i.j(r24, th);
        throw th;
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator r114 = (ChannelIterator) r0.L$6;
        p<? extends E> r115 = (p) r0.L$5;
        r4 = (Throwable) r0.L$4;
        r24 = (p) r0.L$3;
        p<? extends E> r28 = (p) r0.L$2;
        t r29 = (t) r0.L$1;
        p<? extends E> r30 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L20
        r25 = r114;
        r12 = r30;
        ChannelsKt__Channels_commonKt$filterNotNullTo$3 r116 = r0;
        r10 = r115;
        r111 = r28;
        r27 = r116;
        r26 = r2;
        r20 = r29;
        goto L30
    L22:
        kotlin.k.b(r15);
        r9 = r0;
        r11 = r2;
        r21 = r12.iterator();     // Catch: Throwable -> L42
        r10 = r12;
        r20 = r13;
        r4 = null;
        r111 = r10;
        r110 = r111;
    L42:
        th = move-exception;
        r24 = r12;
        th = th;
    L20:
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$filterNotNullTo$3(r14);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, C extends Collection<? super E>> Object w(p<? extends E> r11, C r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super C> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$filterNotTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterNotTo$1 r0 = (ChannelsKt__Channels_commonKt$filterNotTo$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r18 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r6 = (kotlin.jvm.b.l) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$filterNotTo$1 r9 = r0;
        p<? extends E> r10 = r17;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        ?? r21 = r7;
        ChannelsKt__Channels_commonKt$filterNotTo$1 r22 = r9;
        Throwable r23 = r18;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r15).booleanValue() == false) goto L31;
        Object r111 = (Object) r16.next();
        if (r6.invoke(r111).booleanValue() == true) goto L30;
        r21.add(r111);     // Catch: Throwable -> L14
    L30:
        p<? extends E> r112 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r24 = r6;
        ChannelsKt__Channels_commonKt$filterNotTo$1 r25 = r22;
        Object r26 = r20;
        ?? r27 = r21;
    L46:
        r25.L$0 = r19;     // Catch: Throwable -> L34
        r25.L$1 = r27;     // Catch: Throwable -> L34
        r25.L$2 = r24;     // Catch: Throwable -> L34
        r25.L$3 = r110;     // Catch: Throwable -> L34
        r25.L$4 = r112;     // Catch: Throwable -> L34
        r25.L$5 = r23;     // Catch: Throwable -> L34
        r25.L$6 = r10;     // Catch: Throwable -> L34
        r25.L$7 = r16;     // Catch: Throwable -> L34
        r25.label = 1;     // Catch: Throwable -> L34
        Object r28 = r16.a(r25);     // Catch: Throwable -> L34
        if (r28 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, Boolean> r29 = r24;
        r4 = r112;
        r15 = r28;
        r20 = r26;
        r22 = r25;
        r6 = r29;
        r21 = r27;
    L34:
        Throwable th = th;
    L42:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r112, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r112 = r4;
        goto L42
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r112 = r11;
        r10 = r112;
        r27 = r12;
        r19 = r10;
        r16 = r11.iterator();     // Catch: Throwable -> L36
        r24 = r13;
        r110 = r19;
    L36:
        th = move-exception;
        r112 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$filterNotTo$1(r14);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x009e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x009d */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static final <E, C extends t<? super E>> Object x(p<? extends E> r17, C r18, kotlin.jvm.b.l<? super E, Boolean> r19, kotlin.coroutines.c<? super C> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$filterNotTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterNotTo$3 r1 = (ChannelsKt__Channels_commonKt$filterNotTo$3) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 != 0) goto L55;
        kotlin.k.b(r0);
        ?? r6 = r18;
        kotlin.jvm.b.l<? super E, Boolean> r7 = r19;
        Throwable r8 = null;
        ChannelsKt__Channels_commonKt$filterNotTo$3 r9 = r1;
        Object r10 = r3;
        ChannelIterator r11 = r17.iterator();     // Catch: Throwable -> L42
        p<? extends E> r5 = r17;
        p<? extends E> r12 = r5;
        p<? extends E> r13 = r12;
        p<? extends E> r14 = r13;
    L49:
        r9.L$0 = r5;     // Catch: Throwable -> L40
        r9.L$1 = r6;     // Catch: Throwable -> L40
        r9.L$2 = r7;     // Catch: Throwable -> L40
        r9.L$3 = r12;     // Catch: Throwable -> L40
        r9.L$4 = r13;     // Catch: Throwable -> L40
        r9.L$5 = r8;     // Catch: Throwable -> L40
        r9.L$6 = r14;     // Catch: Throwable -> L40
        r9.L$7 = r11;     // Catch: Throwable -> L40
        r9.label = 1;     // Catch: Throwable -> L40
        Object r15 = r11.a(r9);     // Catch: Throwable -> L40
        if (r15 != r10) goto L28;
        return r10;
    L28:
        p<? extends E> r16 = r5;
        r0 = r15;
        r6 = r6;
    L30:
        if (((Boolean) r0).booleanValue() == false) goto L37;
        Object r21 = (Object) r11.next();
        if (r7.invoke(r21).booleanValue() == true) goto L36;
        r9.L$0 = r16;     // Catch: Throwable -> L40
        r9.L$1 = r6;     // Catch: Throwable -> L40
        r9.L$2 = r7;     // Catch: Throwable -> L40
        r9.L$3 = r12;     // Catch: Throwable -> L40
        r9.L$4 = r13;     // Catch: Throwable -> L40
        r9.L$5 = r8;     // Catch: Throwable -> L40
        r9.L$6 = r14;     // Catch: Throwable -> L40
        r9.L$7 = r11;     // Catch: Throwable -> L40
        r9.L$8 = r21;     // Catch: Throwable -> L40
        r9.L$9 = r21;     // Catch: Throwable -> L40
        r9.label = 2;     // Catch: Throwable -> L40
        if (r6.F(r21, r9) != r10) goto L36;
        return r10;
    L36:
        r5 = r16;
        goto L49
    L56:
        r5 = r16;
        goto L49
    L37:
        kotlin.v r22 = kotlin.v.f15822a;     // Catch: Throwable -> L40
        kotlin.jvm.internal.q.b(1);
        i.j(r13, r8);
        kotlin.jvm.internal.q.a(1);
        return r6;
    L40:
        Throwable th = th;
    L44:
        Throwable r23 = th;
    L53:
        throw r23;     // Catch: Throwable -> L46
    L46:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r13, r23);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L42:
        th = th;
        r13 = r17;
        goto L44
    L55:
        if (r4 == 1) goto L17;
        if (r4 != 2) goto L16;
        Object r24 = r1.L$9;
        Object r25 = r1.L$8;
        ChannelIterator r26 = (ChannelIterator) r1.L$7;
        p<? extends E> r27 = (p) r1.L$6;
        Throwable r28 = (Throwable) r1.L$5;
        p<? extends E> r29 = (p) r1.L$4;
        p<? extends E> r30 = (p) r1.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r110 = (kotlin.jvm.b.l) r1.L$2;
        t r111 = (t) r1.L$1;
        p<? extends E> r112 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r5 = r112;
        r9 = r1;
        r12 = r30;
        r10 = r3;
        r13 = r29;
        r8 = r28;
        r7 = r110;
        r11 = r26;
        r14 = r27;
        r6 = r111;
        goto L49
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator r31 = (ChannelIterator) r1.L$7;
        p<? extends E> r32 = (p) r1.L$6;
        Throwable r33 = (Throwable) r1.L$5;
        p<? extends E> r34 = (p) r1.L$4;
        p<? extends E> r35 = (p) r1.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r113 = (kotlin.jvm.b.l) r1.L$2;
        t r114 = (t) r1.L$1;
        r16 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r9 = r1;
        r12 = r35;
        r10 = r3;
        r13 = r34;
        r8 = r33;
        r7 = r113;
        r11 = r31;
        r14 = r32;
        r6 = r114;
    L20:
        th = move-exception;
        r23 = th;
        r13 = r8;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$filterNotTo$3(r20);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    public static final <E, C extends Collection<? super E>> Object y(p<? extends E> r11, C r12, kotlin.jvm.b.l<? super E, Boolean> r13, kotlin.coroutines.c<? super C> r14) {
        if ((r14 instanceof ChannelsKt__Channels_commonKt$filterTo$1) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterTo$1 r0 = (ChannelsKt__Channels_commonKt$filterTo$1) r14;
        int r1 = r0.label;
        if ((r1 & Integer.MIN_VALUE) == 0) goto L7;
        r0.label = r1 - Integer.MIN_VALUE;
    L8:
        Object r15 = r0.result;
        Object r2 = kotlin.coroutines.intrinsics.a.d();
        int r3 = r0.label;
        if (r3 == 0) goto L18;
        if (r3 != 1) goto L17;
        ChannelIterator r16 = (ChannelIterator) r0.L$7;
        p<? extends E> r17 = (p) r0.L$6;
        Throwable r18 = (Throwable) r0.L$5;
        p<? extends E> r4 = (p) r0.L$4;
        p<? extends E> r5 = (p) r0.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r6 = (kotlin.jvm.b.l) r0.L$2;
        Collection r7 = (Collection) r0.L$1;
        p<? extends E> r8 = (p) r0.L$0;
        kotlin.k.b(r15);     // Catch: Throwable -> L14
        ChannelsKt__Channels_commonKt$filterTo$1 r9 = r0;
        p<? extends E> r10 = r17;
        p<? extends E> r19 = r8;
        Object r20 = r2;
        ?? r21 = r7;
        ChannelsKt__Channels_commonKt$filterTo$1 r22 = r9;
        Throwable r23 = r18;
        p<? extends E> r110 = r5;
    L26:
        if (((Boolean) r15).booleanValue() == false) goto L31;
        Object r111 = (Object) r16.next();
        if (r6.invoke(r111).booleanValue() == false) goto L30;
        r21.add(r111);     // Catch: Throwable -> L14
    L30:
        p<? extends E> r112 = r4;
        kotlin.jvm.b.l<? super E, Boolean> r24 = r6;
        ChannelsKt__Channels_commonKt$filterTo$1 r25 = r22;
        Object r26 = r20;
        ?? r27 = r21;
    L46:
        r25.L$0 = r19;     // Catch: Throwable -> L34
        r25.L$1 = r27;     // Catch: Throwable -> L34
        r25.L$2 = r24;     // Catch: Throwable -> L34
        r25.L$3 = r110;     // Catch: Throwable -> L34
        r25.L$4 = r112;     // Catch: Throwable -> L34
        r25.L$5 = r23;     // Catch: Throwable -> L34
        r25.L$6 = r10;     // Catch: Throwable -> L34
        r25.L$7 = r16;     // Catch: Throwable -> L34
        r25.label = 1;     // Catch: Throwable -> L34
        Object r28 = r16.a(r25);     // Catch: Throwable -> L34
        if (r28 != r26) goto L24;
        return r26;
    L24:
        kotlin.jvm.b.l<? super E, Boolean> r29 = r24;
        r4 = r112;
        r15 = r28;
        r20 = r26;
        r22 = r25;
        r6 = r29;
        r21 = r27;
    L34:
        Throwable th = th;
    L42:
        throw th;     // Catch: Throwable -> L39
    L39:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r112, th);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L31:
        kotlin.v r113 = kotlin.v.f15822a;     // Catch: Throwable -> L14
        kotlin.jvm.internal.q.b(1);
        i.j(r4, r23);
        kotlin.jvm.internal.q.a(1);
        return r21;
    L14:
        th = th;
        r112 = r4;
        goto L42
    L17:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L18:
        kotlin.k.b(r15);
        r23 = null;
        r25 = r0;
        r26 = r2;
        r112 = r11;
        r10 = r112;
        r27 = r12;
        r19 = r10;
        r16 = r11.iterator();     // Catch: Throwable -> L36
        r24 = r13;
        r110 = r19;
    L36:
        th = move-exception;
        r112 = r11;
        th = th;
    L7:
        r0 = new ChannelsKt__Channels_commonKt$filterTo$1(r14);
        goto L8
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x009e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x009d */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static final <E, C extends t<? super E>> Object z(p<? extends E> r17, C r18, kotlin.jvm.b.l<? super E, Boolean> r19, kotlin.coroutines.c<? super C> r20) {
        if ((r20 instanceof ChannelsKt__Channels_commonKt$filterTo$3) == false) goto L7;
        ChannelsKt__Channels_commonKt$filterTo$3 r1 = (ChannelsKt__Channels_commonKt$filterTo$3) r20;
        int r2 = r1.label;
        if ((r2 & Integer.MIN_VALUE) == 0) goto L7;
        r1.label = r2 - Integer.MIN_VALUE;
    L8:
        Object r0 = r1.result;
        Object r3 = kotlin.coroutines.intrinsics.a.d();
        int r4 = r1.label;
        if (r4 != 0) goto L55;
        kotlin.k.b(r0);
        ?? r6 = r18;
        kotlin.jvm.b.l<? super E, Boolean> r7 = r19;
        Throwable r8 = null;
        ChannelsKt__Channels_commonKt$filterTo$3 r9 = r1;
        Object r10 = r3;
        ChannelIterator r11 = r17.iterator();     // Catch: Throwable -> L42
        p<? extends E> r5 = r17;
        p<? extends E> r12 = r5;
        p<? extends E> r13 = r12;
        p<? extends E> r14 = r13;
    L49:
        r9.L$0 = r5;     // Catch: Throwable -> L40
        r9.L$1 = r6;     // Catch: Throwable -> L40
        r9.L$2 = r7;     // Catch: Throwable -> L40
        r9.L$3 = r12;     // Catch: Throwable -> L40
        r9.L$4 = r13;     // Catch: Throwable -> L40
        r9.L$5 = r8;     // Catch: Throwable -> L40
        r9.L$6 = r14;     // Catch: Throwable -> L40
        r9.L$7 = r11;     // Catch: Throwable -> L40
        r9.label = 1;     // Catch: Throwable -> L40
        Object r15 = r11.a(r9);     // Catch: Throwable -> L40
        if (r15 != r10) goto L28;
        return r10;
    L28:
        p<? extends E> r16 = r5;
        r0 = r15;
        r6 = r6;
    L30:
        if (((Boolean) r0).booleanValue() == false) goto L37;
        Object r21 = (Object) r11.next();
        if (r7.invoke(r21).booleanValue() == false) goto L36;
        r9.L$0 = r16;     // Catch: Throwable -> L40
        r9.L$1 = r6;     // Catch: Throwable -> L40
        r9.L$2 = r7;     // Catch: Throwable -> L40
        r9.L$3 = r12;     // Catch: Throwable -> L40
        r9.L$4 = r13;     // Catch: Throwable -> L40
        r9.L$5 = r8;     // Catch: Throwable -> L40
        r9.L$6 = r14;     // Catch: Throwable -> L40
        r9.L$7 = r11;     // Catch: Throwable -> L40
        r9.L$8 = r21;     // Catch: Throwable -> L40
        r9.L$9 = r21;     // Catch: Throwable -> L40
        r9.label = 2;     // Catch: Throwable -> L40
        if (r6.F(r21, r9) != r10) goto L36;
        return r10;
    L36:
        r5 = r16;
        goto L49
    L56:
        r5 = r16;
        goto L49
    L37:
        kotlin.v r22 = kotlin.v.f15822a;     // Catch: Throwable -> L40
        kotlin.jvm.internal.q.b(1);
        i.j(r13, r8);
        kotlin.jvm.internal.q.a(1);
        return r6;
    L40:
        Throwable th = th;
    L44:
        Throwable r23 = th;
    L53:
        throw r23;     // Catch: Throwable -> L46
    L46:
        th = move-exception;
        kotlin.jvm.internal.q.b(1);
        i.j(r13, r23);
        kotlin.jvm.internal.q.a(1);
        throw th;
    L42:
        th = th;
        r13 = r17;
        goto L44
    L55:
        if (r4 == 1) goto L17;
        if (r4 != 2) goto L16;
        Object r24 = r1.L$9;
        Object r25 = r1.L$8;
        ChannelIterator r26 = (ChannelIterator) r1.L$7;
        p<? extends E> r27 = (p) r1.L$6;
        Throwable r28 = (Throwable) r1.L$5;
        p<? extends E> r29 = (p) r1.L$4;
        p<? extends E> r30 = (p) r1.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r110 = (kotlin.jvm.b.l) r1.L$2;
        t r111 = (t) r1.L$1;
        p<? extends E> r112 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r5 = r112;
        r9 = r1;
        r12 = r30;
        r10 = r3;
        r13 = r29;
        r8 = r28;
        r7 = r110;
        r11 = r26;
        r14 = r27;
        r6 = r111;
        goto L49
    L16:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L17:
        ChannelIterator r31 = (ChannelIterator) r1.L$7;
        p<? extends E> r32 = (p) r1.L$6;
        Throwable r33 = (Throwable) r1.L$5;
        p<? extends E> r34 = (p) r1.L$4;
        p<? extends E> r35 = (p) r1.L$3;
        kotlin.jvm.b.l<? super E, Boolean> r113 = (kotlin.jvm.b.l) r1.L$2;
        t r114 = (t) r1.L$1;
        r16 = (p) r1.L$0;
        kotlin.k.b(r0);     // Catch: Throwable -> L20
        r9 = r1;
        r12 = r35;
        r10 = r3;
        r13 = r34;
        r8 = r33;
        r7 = r113;
        r11 = r31;
        r14 = r32;
        r6 = r114;
    L20:
        th = move-exception;
        r23 = th;
        r13 = r8;
    L7:
        r1 = new ChannelsKt__Channels_commonKt$filterTo$3(r20);
        goto L8
    }
}
