package kotlinx.coroutines.channels;

import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.h1;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class ChannelsKt__Channels_commonKt {
    /* JADX WARN: Code duplicated, block: B:23:0x0091 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    /* JADX WARN: Code duplicated, block: B:27:0x009d A[Catch: all -> 0x00c7, TRY_LEAVE, TryCatch #0 {all -> 0x00c7, blocks: (B:25:0x0095, B:27:0x009d, B:21:0x0079, B:31:0x00bb), top: B:43:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0092 -> B:43:0x0095). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object A(kotlinx.coroutines.channels.p<? extends E> r17, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r18, kotlin.coroutines.Continuation<? super E> r19) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.A(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0098 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a6 A[Catch: all -> 0x00ca, TryCatch #2 {all -> 0x00ca, blocks: (B:25:0x009e, B:27:0x00a6, B:29:0x00b6, B:21:0x007e, B:31:0x00bc), top: B:46:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00ca, TryCatch #2 {all -> 0x00ca, blocks: (B:25:0x009e, B:27:0x00a6, B:29:0x00b6, B:21:0x007e, B:31:0x00bc), top: B:46:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0099 -> B:46:0x009e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object B(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.B(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #1 {all -> 0x003d, blocks: (B:12:0x0039, B:23:0x0067, B:25:0x006f, B:28:0x0077, B:29:0x007e), top: B:38:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[Catch: all -> 0x003d, TRY_ENTER, TryCatch #1 {all -> 0x003d, blocks: (B:12:0x0039, B:23:0x0067, B:25:0x006f, B:28:0x0077, B:29:0x007e), top: B:38:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object C(p<? extends E> pVar, Continuation<? super E> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$first$1 channelsKt__Channels_commonKt$first$1;
        p<? extends E> pVar2;
        Throwable th;
        Throwable th2;
        ChannelIterator<? extends E> channelIterator;
        if (continuation instanceof ChannelsKt__Channels_commonKt$first$1) {
            channelsKt__Channels_commonKt$first$1 = (ChannelsKt__Channels_commonKt$first$1) continuation;
            int i = channelsKt__Channels_commonKt$first$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$first$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$first$1 = new ChannelsKt__Channels_commonKt$first$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$first$1 = new ChannelsKt__Channels_commonKt$first$1(continuation);
        }
        Object obj = channelsKt__Channels_commonKt$first$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$first$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            channelIterator = (ChannelIterator) channelsKt__Channels_commonKt$first$1.L$4;
            th2 = (Throwable) channelsKt__Channels_commonKt$first$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$first$1.L$1;
            try {
                kotlin.k.b(obj);
                if (((Boolean) obj).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                E next = channelIterator.next();
                i.j(pVar2, th2);
                return next;
            } catch (Throwable th3) {
                th = th3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    i.j(pVar2, th);
                    throw th4;
                }
            }
        }
        kotlin.k.b(obj);
        try {
            ChannelIterator<? extends E> it = pVar.iterator();
            channelsKt__Channels_commonKt$first$1.L$0 = pVar;
            channelsKt__Channels_commonKt$first$1.L$1 = pVar;
            channelsKt__Channels_commonKt$first$1.L$2 = null;
            channelsKt__Channels_commonKt$first$1.L$3 = pVar;
            channelsKt__Channels_commonKt$first$1.L$4 = it;
            channelsKt__Channels_commonKt$first$1.label = 1;
            Object objA = it.a(channelsKt__Channels_commonKt$first$1);
            if (objA == objD) {
                return objD;
            }
            th2 = null;
            obj = objA;
            pVar2 = pVar;
            channelIterator = it;
            if (((Boolean) obj).booleanValue()) {
                throw new NoSuchElementException("ReceiveChannel is empty.");
            }
            E next2 = channelIterator.next();
            i.j(pVar2, th2);
            return next2;
        } catch (Throwable th5) {
            pVar2 = pVar;
            th = th5;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, blocks: (B:25:0x0087, B:27:0x008f, B:21:0x006b, B:32:0x00ae), top: B:43:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    /* JADX WARN: Code duplicated, block: B:31:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:43:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object D(kotlinx.coroutines.channels.p<? extends E> r11, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r12, kotlin.coroutines.Continuation<? super E> r13) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.D(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object E(p<? extends E> pVar, Continuation<? super E> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$firstOrNull$1 channelsKt__Channels_commonKt$firstOrNull$1;
        p<? extends E> pVar2;
        Throwable th;
        ChannelIterator<? extends E> channelIterator;
        Throwable th2;
        if (continuation instanceof ChannelsKt__Channels_commonKt$firstOrNull$1) {
            channelsKt__Channels_commonKt$firstOrNull$1 = (ChannelsKt__Channels_commonKt$firstOrNull$1) continuation;
            int i = channelsKt__Channels_commonKt$firstOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$firstOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$firstOrNull$1 = new ChannelsKt__Channels_commonKt$firstOrNull$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$firstOrNull$1 = new ChannelsKt__Channels_commonKt$firstOrNull$1(continuation);
        }
        Object obj = channelsKt__Channels_commonKt$firstOrNull$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$firstOrNull$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            try {
                ChannelIterator<? extends E> it = pVar.iterator();
                channelsKt__Channels_commonKt$firstOrNull$1.L$0 = pVar;
                channelsKt__Channels_commonKt$firstOrNull$1.L$1 = pVar;
                channelsKt__Channels_commonKt$firstOrNull$1.L$2 = null;
                channelsKt__Channels_commonKt$firstOrNull$1.L$3 = pVar;
                channelsKt__Channels_commonKt$firstOrNull$1.L$4 = it;
                channelsKt__Channels_commonKt$firstOrNull$1.label = 1;
                Object objA = it.a(channelsKt__Channels_commonKt$firstOrNull$1);
                if (objA == objD) {
                    return objD;
                }
                pVar2 = pVar;
                channelIterator = it;
                obj = objA;
                th2 = null;
            } catch (Throwable th3) {
                pVar2 = pVar;
                th = th3;
                throw th;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            channelIterator = (ChannelIterator) channelsKt__Channels_commonKt$firstOrNull$1.L$4;
            th2 = (Throwable) channelsKt__Channels_commonKt$firstOrNull$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$firstOrNull$1.L$1;
            try {
                kotlin.k.b(obj);
            } catch (Throwable th4) {
                th = th4;
                try {
                    throw th;
                } catch (Throwable th5) {
                    i.j(pVar2, th);
                    throw th5;
                }
            }
        }
        if (!((Boolean) obj).booleanValue()) {
            i.j(pVar2, th2);
            return null;
        }
        E next = channelIterator.next();
        i.j(pVar2, th2);
        return next;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #1 {all -> 0x00ba, blocks: (B:25:0x0087, B:27:0x008f, B:21:0x006b, B:32:0x00ae), top: B:45:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    /* JADX WARN: Code duplicated, block: B:31:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:45:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object F(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.F(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ad A[Catch: all -> 0x00c9, TryCatch #1 {all -> 0x00c9, blocks: (B:25:0x00a5, B:27:0x00ad, B:21:0x0087, B:28:0x00bb), top: B:42:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R> java.lang.Object G(kotlinx.coroutines.channels.p<? extends E> r17, R r18, kotlin.jvm.functions.Function2<? super R, ? super E, ? extends R> r19, kotlin.coroutines.Continuation<? super R> r20) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.G(kotlinx.coroutines.channels.p, java.lang.Object, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:27:0x00bf A[Catch: all -> 0x00e5, TryCatch #1 {all -> 0x00e5, blocks: (B:25:0x00b7, B:27:0x00bf, B:21:0x0095, B:28:0x00d7), top: B:42:0x00b7 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R> java.lang.Object H(kotlinx.coroutines.channels.p<? extends E> r18, R r19, kotlin.jvm.functions.Function3<? super java.lang.Integer, ? super R, ? super E, ? extends R> r20, kotlin.coroutines.Continuation<? super R> r21) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.H(kotlinx.coroutines.channels.p, java.lang.Object, kotlin.jvm.b.q, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009e  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a9 A[Catch: all -> 0x00d2, TryCatch #0 {all -> 0x00d2, blocks: (B:25:0x00a1, B:27:0x00a9, B:29:0x00b7, B:30:0x00bf, B:21:0x0083, B:31:0x00c6), top: B:43:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b7 A[Catch: all -> 0x00d2, TryCatch #0 {all -> 0x00d2, blocks: (B:25:0x00a1, B:27:0x00a9, B:29:0x00b7, B:30:0x00bf, B:21:0x0083, B:31:0x00c6), top: B:43:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c6 A[Catch: all -> 0x00d2, TRY_LEAVE, TryCatch #0 {all -> 0x00d2, blocks: (B:25:0x00a1, B:27:0x00a9, B:29:0x00b7, B:30:0x00bf, B:21:0x0083, B:31:0x00c6), top: B:43:0x00a1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009e -> B:43:0x00a1). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K> java.lang.Object I(kotlinx.coroutines.channels.p<? extends E> r17, kotlin.jvm.functions.Function1<? super E, ? extends K> r18, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends java.util.List<? extends E>>> r19) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.I(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:25:0x00ab, B:27:0x00b3, B:29:0x00c1, B:30:0x00c9, B:21:0x0089, B:31:0x00d4), top: B:43:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c1 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:25:0x00ab, B:27:0x00b3, B:29:0x00c1, B:30:0x00c9, B:21:0x0089, B:31:0x00d4), top: B:43:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d4 A[Catch: all -> 0x00e0, TRY_LEAVE, TryCatch #0 {all -> 0x00e0, blocks: (B:25:0x00ab, B:27:0x00b3, B:29:0x00c1, B:30:0x00c9, B:21:0x0089, B:31:0x00d4), top: B:43:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a6 -> B:43:0x00ab). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V> java.lang.Object J(kotlinx.coroutines.channels.p<? extends E> r17, kotlin.jvm.functions.Function1<? super E, ? extends K> r18, kotlin.jvm.functions.Function1<? super E, ? extends V> r19, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends java.util.List<? extends V>>> r20) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.J(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0088  */
    /* JADX WARN: Code duplicated, block: B:27:0x0096 A[Catch: all -> 0x0052, TryCatch #1 {, blocks: (B:12:0x0045, B:25:0x008e, B:27:0x0096, B:29:0x00a4, B:30:0x00ac, B:31:0x00b6), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4 A[Catch: all -> 0x0052, TryCatch #1 {, blocks: (B:12:0x0045, B:25:0x008e, B:27:0x0096, B:29:0x00a4, B:30:0x00ac, B:31:0x00b6), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00b6 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {, blocks: (B:12:0x0045, B:25:0x008e, B:27:0x0096, B:29:0x00a4, B:30:0x00ac, B:31:0x00b6), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0088 -> B:25:0x008e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, M extends java.util.Map<? super K, java.util.List<E>>> java.lang.Object K(kotlinx.coroutines.channels.p<? extends E> r12, M r13, kotlin.jvm.functions.Function1<? super E, ? extends K> r14, kotlin.coroutines.Continuation<? super M> r15) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.K(kotlinx.coroutines.channels.p, java.util.Map, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009f  */
    /* JADX WARN: Code duplicated, block: B:27:0x00aa A[Catch: all -> 0x00d7, TryCatch #1 {all -> 0x00d7, blocks: (B:25:0x00a2, B:27:0x00aa, B:29:0x00b8, B:30:0x00c0, B:21:0x0084, B:31:0x00cb), top: B:45:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b8 A[Catch: all -> 0x00d7, TryCatch #1 {all -> 0x00d7, blocks: (B:25:0x00a2, B:27:0x00aa, B:29:0x00b8, B:30:0x00c0, B:21:0x0084, B:31:0x00cb), top: B:45:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00cb A[Catch: all -> 0x00d7, TRY_LEAVE, TryCatch #1 {all -> 0x00d7, blocks: (B:25:0x00a2, B:27:0x00aa, B:29:0x00b8, B:30:0x00c0, B:21:0x0084, B:31:0x00cb), top: B:45:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009f -> B:45:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V, M extends java.util.Map<? super K, java.util.List<V>>> java.lang.Object L(kotlinx.coroutines.channels.p<? extends E> r18, M r19, kotlin.jvm.functions.Function1<? super E, ? extends K> r20, kotlin.jvm.functions.Function1<? super E, ? extends V> r21, kotlin.coroutines.Continuation<? super M> r22) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.L(kotlinx.coroutines.channels.p, java.util.Map, kotlin.jvm.b.l, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0090 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0091  */
    /* JADX WARN: Code duplicated, block: B:27:0x009f A[Catch: all -> 0x00c8, TryCatch #1 {all -> 0x00c8, blocks: (B:25:0x0097, B:27:0x009f, B:29:0x00a9, B:32:0x00b3, B:21:0x0078, B:33:0x00bd), top: B:46:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a9 A[Catch: all -> 0x00c8, TRY_LEAVE, TryCatch #1 {all -> 0x00c8, blocks: (B:25:0x0097, B:27:0x009f, B:29:0x00a9, B:32:0x00b3, B:21:0x0078, B:33:0x00bd), top: B:46:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b3 A[Catch: all -> 0x00c8, TRY_ENTER, TryCatch #1 {all -> 0x00c8, blocks: (B:25:0x0097, B:27:0x009f, B:29:0x00a9, B:32:0x00b3, B:21:0x0078, B:33:0x00bd), top: B:46:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00bd A[Catch: all -> 0x00c8, TRY_LEAVE, TryCatch #1 {all -> 0x00c8, blocks: (B:25:0x0097, B:27:0x009f, B:29:0x00a9, B:32:0x00b3, B:21:0x0078, B:33:0x00bd), top: B:46:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0091 -> B:46:0x0097). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object M(kotlinx.coroutines.channels.p<? extends E> r12, E r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.M(kotlinx.coroutines.channels.p, java.lang.Object, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0092 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a1 A[Catch: all -> 0x00dd, TryCatch #2 {all -> 0x00dd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:32:0x00c2, B:21:0x007a, B:33:0x00cc), top: B:48:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b1 A[Catch: all -> 0x00dd, TRY_LEAVE, TryCatch #2 {all -> 0x00dd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:32:0x00c2, B:21:0x007a, B:33:0x00cc), top: B:48:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c2 A[Catch: all -> 0x00dd, TRY_ENTER, TryCatch #2 {all -> 0x00dd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:32:0x00c2, B:21:0x007a, B:33:0x00cc), top: B:48:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00cc A[Catch: all -> 0x00dd, TRY_LEAVE, TryCatch #2 {all -> 0x00dd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:32:0x00c2, B:21:0x007a, B:33:0x00cc), top: B:48:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:48:0x0099). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object N(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.N(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b1 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:25:0x00a9, B:27:0x00b1, B:29:0x00c1, B:30:0x00c5, B:21:0x0087, B:31:0x00d0), top: B:42:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c1 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:25:0x00a9, B:27:0x00b1, B:29:0x00c1, B:30:0x00c5, B:21:0x0087, B:31:0x00d0), top: B:42:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d0 A[Catch: all -> 0x00e2, TRY_LEAVE, TryCatch #0 {all -> 0x00e2, blocks: (B:25:0x00a9, B:27:0x00b1, B:29:0x00c1, B:30:0x00c5, B:21:0x0087, B:31:0x00d0), top: B:42:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a2 -> B:42:0x00a9). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object O(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.O(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bf A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #1 {all -> 0x0043, blocks: (B:13:0x003e, B:37:0x00b7, B:39:0x00bf), top: B:53:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:37:0x00b7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object P(kotlinx.coroutines.channels.p<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.P(kotlinx.coroutines.channels.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b0 A[Catch: all -> 0x00e4, TryCatch #0 {all -> 0x00e4, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:21:0x0086, B:31:0x00ca), top: B:46:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c0 A[Catch: all -> 0x00e4, TryCatch #0 {all -> 0x00e4, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:21:0x0086, B:31:0x00ca), top: B:46:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a1 -> B:46:0x00a8). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object Q(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.Q(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:27:0x00af A[Catch: all -> 0x00d4, TryCatch #0 {all -> 0x00d4, blocks: (B:25:0x00a7, B:27:0x00af, B:29:0x00b9, B:30:0x00bd, B:21:0x0085, B:31:0x00c8), top: B:42:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b9 A[Catch: all -> 0x00d4, TryCatch #0 {all -> 0x00d4, blocks: (B:25:0x00a7, B:27:0x00af, B:29:0x00b9, B:30:0x00bd, B:21:0x0085, B:31:0x00c8), top: B:42:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c8 A[Catch: all -> 0x00d4, TRY_LEAVE, TryCatch #0 {all -> 0x00d4, blocks: (B:25:0x00a7, B:27:0x00af, B:29:0x00b9, B:30:0x00bd, B:21:0x0085, B:31:0x00c8), top: B:42:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a0 -> B:42:0x00a7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object R(kotlinx.coroutines.channels.p<? extends E> r12, E r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.R(kotlinx.coroutines.channels.p, java.lang.Object, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ae A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00af  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bb A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:13:0x003f, B:38:0x00b3, B:40:0x00bb, B:18:0x0060, B:27:0x0087, B:31:0x0093), top: B:52:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00af -> B:38:0x00b3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object S(kotlinx.coroutines.channels.p<? extends E> r9, kotlin.coroutines.Continuation<? super E> r10) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.S(kotlinx.coroutines.channels.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0091 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a0 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:25:0x0098, B:27:0x00a0, B:29:0x00b0, B:21:0x0079, B:31:0x00b7), top: B:42:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b0 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:25:0x0098, B:27:0x00a0, B:29:0x00b0, B:21:0x0079, B:31:0x00b7), top: B:42:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0092 -> B:42:0x0098). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object T(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.T(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b6 A[Catch: all -> 0x00ea, TryCatch #2 {all -> 0x00ea, blocks: (B:25:0x00ae, B:27:0x00b6, B:29:0x00d7, B:21:0x008c, B:31:0x00dd), top: B:47:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d7 A[Catch: all -> 0x00ea, TryCatch #2 {all -> 0x00ea, blocks: (B:25:0x00ae, B:27:0x00b6, B:29:0x00d7, B:21:0x008c, B:31:0x00dd), top: B:47:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:47:0x00ae). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object U(kotlinx.coroutines.channels.p<? extends E> r17, C r18, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.U(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00e1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fd A[Catch: all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:25:0x00c5, B:29:0x00f5, B:31:0x00fd, B:33:0x0120, B:40:0x0177), top: B:53:0x00c5 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0120 A[Catch: all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:25:0x00c5, B:29:0x00f5, B:31:0x00fd, B:33:0x0120, B:40:0x0177), top: B:53:0x00c5 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x014b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x014c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0164  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00a3: MOVE (r3 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x00a2 */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends kotlinx.coroutines.channels.t<? super R>> java.lang.Object V(kotlinx.coroutines.channels.p<? extends E> r19, C r20, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r21, kotlin.coroutines.Continuation<? super C> r22) {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.V(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b1 A[Catch: all -> 0x00d4, TryCatch #1 {all -> 0x00d4, blocks: (B:25:0x00a9, B:27:0x00b1, B:21:0x008b, B:28:0x00c8), top: B:42:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a6 -> B:42:0x00a9). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object W(kotlinx.coroutines.channels.p<? extends E> r18, C r19, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r20, kotlin.coroutines.Continuation<? super C> r21) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.W(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00e1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ff A[Catch: all -> 0x014e, TryCatch #3 {all -> 0x014e, blocks: (B:25:0x00c7, B:29:0x00f7, B:31:0x00ff, B:35:0x0142), top: B:52:0x00c7 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x012f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x0130  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00a6: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x00a5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0130 -> B:52:0x00c7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends kotlinx.coroutines.channels.t<? super R>> java.lang.Object X(kotlinx.coroutines.channels.p<? extends E> r20, C r21, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, ? extends R> r22, kotlin.coroutines.Continuation<? super C> r23) {
        /*
            Method dump skipped, instruction units count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.X(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a1, B:31:0x00a9), top: B:42:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a1, B:31:0x00a9), top: B:42:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a1, B:31:0x00a9), top: B:42:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object Y(kotlinx.coroutines.channels.p<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, ? extends R> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
            boolean r0 = r13 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapNotNullTo$1
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapNotNullTo$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapNotNullTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapNotNullTo$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapNotNullTo$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5e
            if (r2 != r3) goto L56
            java.lang.Object r10 = r0.L$7
            kotlinx.coroutines.channels.ChannelIterator r10 = (kotlinx.coroutines.channels.ChannelIterator) r10
            java.lang.Object r11 = r0.L$6
            kotlinx.coroutines.channels.p r11 = (kotlinx.coroutines.channels.p) r11
            java.lang.Object r12 = r0.L$5
            java.lang.Throwable r12 = (java.lang.Throwable) r12
            java.lang.Object r2 = r0.L$4
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlin.jvm.b.l r5 = (kotlin.jvm.functions.Function1) r5
            java.lang.Object r6 = r0.L$1
            java.util.Collection r6 = (java.util.Collection) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r13)     // Catch: java.lang.Throwable -> L52
            r8 = r0
            r0 = r11
            r11 = r7
            r7 = r1
            r1 = r6
            r6 = r8
            r9 = r4
            r4 = r12
            r12 = r9
            goto L8f
        L52:
            r10 = move-exception
            r13 = r2
            goto Lba
        L56:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L5e:
            kotlin.k.b(r13)
            r13 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r10.iterator()     // Catch: java.lang.Throwable -> Lb7
            r4 = r13
            r5 = r0
            r6 = r1
            r13 = r10
            r0 = r13
            r1 = r11
            r11 = r0
            r10 = r2
            r2 = r12
            r12 = r11
        L70:
            r5.L$0 = r11     // Catch: java.lang.Throwable -> Lb5
            r5.L$1 = r1     // Catch: java.lang.Throwable -> Lb5
            r5.L$2 = r2     // Catch: java.lang.Throwable -> Lb5
            r5.L$3 = r12     // Catch: java.lang.Throwable -> Lb5
            r5.L$4 = r13     // Catch: java.lang.Throwable -> Lb5
            r5.L$5 = r4     // Catch: java.lang.Throwable -> Lb5
            r5.L$6 = r0     // Catch: java.lang.Throwable -> Lb5
            r5.L$7 = r10     // Catch: java.lang.Throwable -> Lb5
            r5.label = r3     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r7 = r10.a(r5)     // Catch: java.lang.Throwable -> Lb5
            if (r7 != r6) goto L89
            return r6
        L89:
            r8 = r2
            r2 = r13
            r13 = r7
            r7 = r6
            r6 = r5
            r5 = r8
        L8f:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Throwable -> L52
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Throwable -> L52
            if (r13 == 0) goto La9
            java.lang.Object r13 = r10.next()     // Catch: java.lang.Throwable -> L52
            java.lang.Object r13 = r5.invoke(r13)     // Catch: java.lang.Throwable -> L52
            if (r13 == 0) goto La4
            r1.add(r13)     // Catch: java.lang.Throwable -> L52
        La4:
            r13 = r2
            r2 = r5
            r5 = r6
            r6 = r7
            goto L70
        La9:
            kotlin.v r10 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L52
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r2, r4)
            kotlin.jvm.internal.q.a(r3)
            return r1
        Lb5:
            r10 = move-exception
            goto Lba
        Lb7:
            r11 = move-exception
            r13 = r10
            r10 = r11
        Lba:
            throw r10     // Catch: java.lang.Throwable -> Lbb
        Lbb:
            r11 = move-exception
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r13, r10)
            kotlin.jvm.internal.q.a(r3)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.Y(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00af A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c3 A[Catch: all -> 0x0112, TryCatch #0 {all -> 0x0112, blocks: (B:25:0x0097, B:29:0x00bb, B:31:0x00c3, B:33:0x00cd, B:39:0x0106), top: B:50:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00cd A[Catch: all -> 0x0112, TryCatch #0 {all -> 0x0112, blocks: (B:25:0x0097, B:29:0x00bb, B:31:0x00c3, B:33:0x00cd, B:39:0x0106), top: B:50:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00eb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:39:0x0106 A[Catch: all -> 0x0112, TRY_LEAVE, TryCatch #0 {all -> 0x0112, blocks: (B:25:0x0097, B:29:0x00bb, B:31:0x00c3, B:33:0x00cd, B:39:0x0106), top: B:50:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends kotlinx.coroutines.channels.t<? super R>> java.lang.Object Z(kotlinx.coroutines.channels.p<? extends E> r12, C r13, kotlin.jvm.functions.Function1<? super E, ? extends R> r14, kotlin.coroutines.Continuation<? super C> r15) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.Z(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x009f A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b3 A[Catch: all -> 0x00c3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object a(kotlinx.coroutines.channels.p<? extends E> r10, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r11, kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.a(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:28:0x00a7), top: B:39:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends java.util.Collection<? super R>> java.lang.Object a0(kotlinx.coroutines.channels.p<? extends E> r10, C r11, kotlin.jvm.functions.Function1<? super E, ? extends R> r12, kotlin.coroutines.Continuation<? super C> r13) {
        /*
            boolean r0 = r13 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapTo$1
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapTo$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapTo$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapTo$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5e
            if (r2 != r3) goto L56
            java.lang.Object r10 = r0.L$7
            kotlinx.coroutines.channels.ChannelIterator r10 = (kotlinx.coroutines.channels.ChannelIterator) r10
            java.lang.Object r11 = r0.L$6
            kotlinx.coroutines.channels.p r11 = (kotlinx.coroutines.channels.p) r11
            java.lang.Object r12 = r0.L$5
            java.lang.Throwable r12 = (java.lang.Throwable) r12
            java.lang.Object r2 = r0.L$4
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlin.jvm.b.l r5 = (kotlin.jvm.functions.Function1) r5
            java.lang.Object r6 = r0.L$1
            java.util.Collection r6 = (java.util.Collection) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r13)     // Catch: java.lang.Throwable -> L52
            r8 = r0
            r0 = r11
            r11 = r7
            r7 = r1
            r1 = r6
            r6 = r8
            r9 = r4
            r4 = r12
            r12 = r9
            goto L8f
        L52:
            r10 = move-exception
            r13 = r2
            goto Lb8
        L56:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L5e:
            kotlin.k.b(r13)
            r13 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r10.iterator()     // Catch: java.lang.Throwable -> Lb5
            r4 = r13
            r5 = r0
            r6 = r1
            r13 = r10
            r0 = r13
            r1 = r11
            r11 = r0
            r10 = r2
            r2 = r12
            r12 = r11
        L70:
            r5.L$0 = r11     // Catch: java.lang.Throwable -> Lb3
            r5.L$1 = r1     // Catch: java.lang.Throwable -> Lb3
            r5.L$2 = r2     // Catch: java.lang.Throwable -> Lb3
            r5.L$3 = r12     // Catch: java.lang.Throwable -> Lb3
            r5.L$4 = r13     // Catch: java.lang.Throwable -> Lb3
            r5.L$5 = r4     // Catch: java.lang.Throwable -> Lb3
            r5.L$6 = r0     // Catch: java.lang.Throwable -> Lb3
            r5.L$7 = r10     // Catch: java.lang.Throwable -> Lb3
            r5.label = r3     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r7 = r10.a(r5)     // Catch: java.lang.Throwable -> Lb3
            if (r7 != r6) goto L89
            return r6
        L89:
            r8 = r2
            r2 = r13
            r13 = r7
            r7 = r6
            r6 = r5
            r5 = r8
        L8f:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Throwable -> L52
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Throwable -> L52
            if (r13 == 0) goto La7
            java.lang.Object r13 = r10.next()     // Catch: java.lang.Throwable -> L52
            java.lang.Object r13 = r5.invoke(r13)     // Catch: java.lang.Throwable -> L52
            r1.add(r13)     // Catch: java.lang.Throwable -> L52
            r13 = r2
            r2 = r5
            r5 = r6
            r6 = r7
            goto L70
        La7:
            kotlin.v r10 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L52
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r2, r4)
            kotlin.jvm.internal.q.a(r3)
            return r1
        Lb3:
            r10 = move-exception
            goto Lb8
        Lb5:
            r11 = move-exception
            r13 = r10
            r10 = r11
        Lb8:
            throw r10     // Catch: java.lang.Throwable -> Lb9
        Lb9:
            r11 = move-exception
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r13, r10)
            kotlin.jvm.internal.q.a(r3)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.a0(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object b(p<? extends E> pVar, Continuation<? super Boolean> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$any$1 channelsKt__Channels_commonKt$any$1;
        Throwable th;
        p<? extends E> pVar2;
        Throwable th2;
        Object objA;
        if (continuation instanceof ChannelsKt__Channels_commonKt$any$1) {
            channelsKt__Channels_commonKt$any$1 = (ChannelsKt__Channels_commonKt$any$1) continuation;
            int i = channelsKt__Channels_commonKt$any$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$any$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$any$1 = new ChannelsKt__Channels_commonKt$any$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$any$1 = new ChannelsKt__Channels_commonKt$any$1(continuation);
        }
        Object obj = channelsKt__Channels_commonKt$any$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$any$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Throwable th3 = (Throwable) channelsKt__Channels_commonKt$any$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$any$1.L$1;
            try {
                kotlin.k.b(obj);
                objA = obj;
                th = th3;
                pVar = pVar2;
                i.j(pVar, th);
                return objA;
            } catch (Throwable th4) {
                th2 = th4;
                try {
                    throw th2;
                } catch (Throwable th5) {
                    i.j(pVar2, th2);
                    throw th5;
                }
            }
        }
        kotlin.k.b(obj);
        th = null;
        try {
            ChannelIterator<? extends E> it = pVar.iterator();
            channelsKt__Channels_commonKt$any$1.L$0 = pVar;
            channelsKt__Channels_commonKt$any$1.L$1 = pVar;
            channelsKt__Channels_commonKt$any$1.L$2 = null;
            channelsKt__Channels_commonKt$any$1.L$3 = pVar;
            channelsKt__Channels_commonKt$any$1.label = 1;
            objA = it.a(channelsKt__Channels_commonKt$any$1);
            if (objA == objD) {
                return objD;
            }
            i.j(pVar, th);
            return objA;
        } catch (Throwable th6) {
            pVar2 = pVar;
            th2 = th6;
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cc A[Catch: all -> 0x0107, TryCatch #0 {all -> 0x0107, blocks: (B:25:0x00a0, B:29:0x00c4, B:31:0x00cc, B:35:0x00fb), top: B:46:0x00a0 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00f0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R, C extends kotlinx.coroutines.channels.t<? super R>> java.lang.Object b0(kotlinx.coroutines.channels.p<? extends E> r12, C r13, kotlin.jvm.functions.Function1<? super E, ? extends R> r14, kotlin.coroutines.Continuation<? super C> r15) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.b0(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b2), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x009f A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b2), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b2 A[Catch: all -> 0x00c3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b2), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object c(kotlinx.coroutines.channels.p<? extends E> r10, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r11, kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.c(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f4 A[Catch: all -> 0x0114, TRY_LEAVE, TryCatch #1 {all -> 0x0114, blocks: (B:39:0x00ec, B:41:0x00f4, B:35:0x00ce, B:30:0x00ac, B:34:0x00bf, B:26:0x008a), top: B:55:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0104  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00e7 -> B:15:0x0051). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R extends java.lang.Comparable<? super R>> java.lang.Object c0(kotlinx.coroutines.channels.p<? extends E> r16, kotlin.jvm.functions.Function1<? super E, ? extends R> r17, kotlin.coroutines.Continuation<? super E> r18) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.c0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0096 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0097  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a4 A[Catch: all -> 0x00c9, TryCatch #1 {all -> 0x00c9, blocks: (B:25:0x009c, B:27:0x00a4, B:21:0x007c, B:28:0x00bd), top: B:41:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0097 -> B:41:0x009c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V> java.lang.Object d(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, ? extends kotlin.Pair<? extends K, ? extends V>> r14, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends V>> r15) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.d(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9 A[Catch: all -> 0x006c, TRY_LEAVE, TryCatch #1 {all -> 0x006c, blocks: (B:13:0x0043, B:38:0x00c1, B:40:0x00c9, B:18:0x0068, B:27:0x0092, B:31:0x009e), top: B:54:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object d0(kotlinx.coroutines.channels.p<? extends E> r10, java.util.Comparator<? super E> r11, kotlin.coroutines.Continuation<? super E> r12) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.d0(kotlinx.coroutines.channels.p, java.util.Comparator, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0096 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0097  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a4 A[Catch: all -> 0x00bf, TryCatch #3 {all -> 0x00bf, blocks: (B:25:0x009c, B:27:0x00a4, B:21:0x007c, B:28:0x00b3), top: B:45:0x009c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0097 -> B:45:0x009c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K> java.lang.Object e(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, ? extends K> r14, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends E>> r15) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.e(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f4 A[Catch: all -> 0x0114, TRY_LEAVE, TryCatch #1 {all -> 0x0114, blocks: (B:39:0x00ec, B:41:0x00f4, B:35:0x00ce, B:30:0x00ac, B:34:0x00bf, B:26:0x008a), top: B:55:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0104  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00e7 -> B:15:0x0051). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, R extends java.lang.Comparable<? super R>> java.lang.Object e0(kotlinx.coroutines.channels.p<? extends E> r16, kotlin.jvm.functions.Function1<? super E, ? extends R> r17, kotlin.coroutines.Continuation<? super E> r18) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.e0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ab A[Catch: all -> 0x00cb, TryCatch #1 {all -> 0x00cb, blocks: (B:25:0x00a3, B:27:0x00ab, B:21:0x0080, B:28:0x00bf), top: B:41:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009d -> B:41:0x00a3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V> java.lang.Object f(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function1<? super E, ? extends K> r13, kotlin.jvm.functions.Function1<? super E, ? extends V> r14, kotlin.coroutines.Continuation<? super java.util.Map<K, ? extends V>> r15) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.f(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9 A[Catch: all -> 0x006c, TRY_LEAVE, TryCatch #1 {all -> 0x006c, blocks: (B:13:0x0043, B:38:0x00c1, B:40:0x00c9, B:18:0x0068, B:27:0x0092, B:31:0x009e), top: B:54:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object f0(kotlinx.coroutines.channels.p<? extends E> r10, java.util.Comparator<? super E> r11, kotlin.coroutines.Continuation<? super E> r12) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.f0(kotlinx.coroutines.channels.p, java.util.Comparator, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:28:0x00a7), top: B:39:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, M extends java.util.Map<? super K, ? super E>> java.lang.Object g(kotlinx.coroutines.channels.p<? extends E> r11, M r12, kotlin.jvm.functions.Function1<? super E, ? extends K> r13, kotlin.coroutines.Continuation<? super M> r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$associateByTo$1
            if (r0 == 0) goto L13
            r0 = r14
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$associateByTo$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$associateByTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$associateByTo$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$associateByTo$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5e
            if (r2 != r3) goto L56
            java.lang.Object r11 = r0.L$7
            kotlinx.coroutines.channels.ChannelIterator r11 = (kotlinx.coroutines.channels.ChannelIterator) r11
            java.lang.Object r12 = r0.L$6
            kotlinx.coroutines.channels.p r12 = (kotlinx.coroutines.channels.p) r12
            java.lang.Object r13 = r0.L$5
            java.lang.Throwable r13 = (java.lang.Throwable) r13
            java.lang.Object r2 = r0.L$4
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlin.jvm.b.l r5 = (kotlin.jvm.functions.Function1) r5
            java.lang.Object r6 = r0.L$1
            java.util.Map r6 = (java.util.Map) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r14)     // Catch: java.lang.Throwable -> L52
            r9 = r0
            r0 = r12
            r12 = r7
            r7 = r1
            r1 = r6
            r6 = r9
            r10 = r4
            r4 = r13
            r13 = r10
            goto L8f
        L52:
            r11 = move-exception
            r14 = r2
            goto Lb8
        L56:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L5e:
            kotlin.k.b(r14)
            r14 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r11.iterator()     // Catch: java.lang.Throwable -> Lb5
            r4 = r14
            r5 = r0
            r6 = r1
            r14 = r11
            r0 = r14
            r1 = r12
            r12 = r0
            r11 = r2
            r2 = r13
            r13 = r12
        L70:
            r5.L$0 = r12     // Catch: java.lang.Throwable -> Lb3
            r5.L$1 = r1     // Catch: java.lang.Throwable -> Lb3
            r5.L$2 = r2     // Catch: java.lang.Throwable -> Lb3
            r5.L$3 = r13     // Catch: java.lang.Throwable -> Lb3
            r5.L$4 = r14     // Catch: java.lang.Throwable -> Lb3
            r5.L$5 = r4     // Catch: java.lang.Throwable -> Lb3
            r5.L$6 = r0     // Catch: java.lang.Throwable -> Lb3
            r5.L$7 = r11     // Catch: java.lang.Throwable -> Lb3
            r5.label = r3     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r7 = r11.a(r5)     // Catch: java.lang.Throwable -> Lb3
            if (r7 != r6) goto L89
            return r6
        L89:
            r9 = r2
            r2 = r14
            r14 = r7
            r7 = r6
            r6 = r5
            r5 = r9
        L8f:
            java.lang.Boolean r14 = (java.lang.Boolean) r14     // Catch: java.lang.Throwable -> L52
            boolean r14 = r14.booleanValue()     // Catch: java.lang.Throwable -> L52
            if (r14 == 0) goto La7
            java.lang.Object r14 = r11.next()     // Catch: java.lang.Throwable -> L52
            java.lang.Object r8 = r5.invoke(r14)     // Catch: java.lang.Throwable -> L52
            r1.put(r8, r14)     // Catch: java.lang.Throwable -> L52
            r14 = r2
            r2 = r5
            r5 = r6
            r6 = r7
            goto L70
        La7:
            kotlin.v r11 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L52
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r2, r4)
            kotlin.jvm.internal.q.a(r3)
            return r1
        Lb3:
            r11 = move-exception
            goto Lb8
        Lb5:
            r12 = move-exception
            r14 = r11
            r11 = r12
        Lb8:
            throw r11     // Catch: java.lang.Throwable -> Lb9
        Lb9:
            r12 = move-exception
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r14, r11)
            kotlin.jvm.internal.q.a(r3)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.g(kotlinx.coroutines.channels.p, java.util.Map, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object g0(p<? extends E> pVar, Continuation<? super Boolean> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$none$1 channelsKt__Channels_commonKt$none$1;
        Throwable th;
        Object objA;
        Throwable th2;
        p<? extends E> pVar2;
        if (continuation instanceof ChannelsKt__Channels_commonKt$none$1) {
            channelsKt__Channels_commonKt$none$1 = (ChannelsKt__Channels_commonKt$none$1) continuation;
            int i = channelsKt__Channels_commonKt$none$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$none$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$none$1 = new ChannelsKt__Channels_commonKt$none$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$none$1 = new ChannelsKt__Channels_commonKt$none$1(continuation);
        }
        Object obj = channelsKt__Channels_commonKt$none$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$none$1.label;
        boolean z = true;
        if (i2 == 0) {
            kotlin.k.b(obj);
            th = null;
            try {
                ChannelIterator<? extends E> it = pVar.iterator();
                channelsKt__Channels_commonKt$none$1.L$0 = pVar;
                channelsKt__Channels_commonKt$none$1.L$1 = pVar;
                channelsKt__Channels_commonKt$none$1.L$2 = null;
                channelsKt__Channels_commonKt$none$1.L$3 = pVar;
                channelsKt__Channels_commonKt$none$1.label = 1;
                objA = it.a(channelsKt__Channels_commonKt$none$1);
                if (objA == objD) {
                    return objD;
                }
            } catch (Throwable th3) {
                pVar2 = pVar;
                th2 = th3;
                throw th2;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Throwable th4 = (Throwable) channelsKt__Channels_commonKt$none$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$none$1.L$1;
            try {
                kotlin.k.b(obj);
                objA = obj;
                th = th4;
                pVar = pVar2;
            } catch (Throwable th5) {
                th2 = th5;
                try {
                    throw th2;
                } catch (Throwable th6) {
                    i.j(pVar2, th2);
                    throw th6;
                }
            }
        }
        if (((Boolean) objA).booleanValue()) {
            z = false;
        }
        Boolean boolA = kotlin.coroutines.jvm.internal.a.a(z);
        i.j(pVar, th);
        return boolA;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x008f  */
    /* JADX WARN: Code duplicated, block: B:27:0x009c A[Catch: all -> 0x0056, TryCatch #0 {all -> 0x0056, blocks: (B:12:0x0049, B:25:0x0094, B:27:0x009c, B:21:0x0074, B:28:0x00af), top: B:37:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008f -> B:25:0x0094). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object h(kotlinx.coroutines.channels.p<? extends E> r11, M r12, kotlin.jvm.functions.Function1<? super E, ? extends K> r13, kotlin.jvm.functions.Function1<? super E, ? extends V> r14, kotlin.coroutines.Continuation<? super M> r15) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.h(kotlinx.coroutines.channels.p, java.util.Map, kotlin.jvm.b.l, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x009f A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b3 A[Catch: all -> 0x00c3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x009f, B:21:0x006b, B:33:0x00b3), top: B:44:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:44:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object h0(kotlinx.coroutines.channels.p<? extends E> r10, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r11, kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.h0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:28:0x00b1), top: B:39:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object i(kotlinx.coroutines.channels.p<? extends E> r11, M r12, kotlin.jvm.functions.Function1<? super E, ? extends kotlin.Pair<? extends K, ? extends V>> r13, kotlin.coroutines.Continuation<? super M> r14) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.i(kotlinx.coroutines.channels.p, java.util.Map, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009c  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ab A[Catch: all -> 0x00d9, TryCatch #1 {all -> 0x00d9, blocks: (B:25:0x00a3, B:27:0x00ab, B:29:0x00bb, B:21:0x0081, B:30:0x00bf, B:32:0x00c8), top: B:45:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00bb A[Catch: all -> 0x00d9, TryCatch #1 {all -> 0x00d9, blocks: (B:25:0x00a3, B:27:0x00ab, B:29:0x00bb, B:21:0x0081, B:30:0x00bf, B:32:0x00c8), top: B:45:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00bf A[Catch: all -> 0x00d9, TryCatch #1 {all -> 0x00d9, blocks: (B:25:0x00a3, B:27:0x00ab, B:29:0x00bb, B:21:0x0081, B:30:0x00bf, B:32:0x00c8), top: B:45:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object i0(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super kotlin.Pair<? extends java.util.List<? extends E>, ? extends java.util.List<? extends E>>> r15) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.i0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    public static final void j(p<?> pVar, Throwable th) {
        CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = (CancellationException) (th instanceof CancellationException ? th : null);
            if (cancellationExceptionA == null) {
                cancellationExceptionA = h1.a("Channel was consumed, consumer had failed", th);
            }
        }
        pVar.a(cancellationExceptionA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Object j0(p<? extends E> pVar, Continuation<? super E> continuation) {
        Objects.requireNonNull(pVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E?>");
        return pVar.A(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    /* JADX WARN: Code duplicated, block: B:25:0x0086 A[Catch: all -> 0x009d, TryCatch #2 {all -> 0x009d, blocks: (B:23:0x007e, B:25:0x0086, B:26:0x0091), top: B:39:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0079 -> B:39:0x007e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object k(kotlinx.coroutines.channels.e<E> r10, kotlin.jvm.functions.Function1<? super E, kotlin.v> r11, kotlin.coroutines.Continuation<? super kotlin.v> r12) {
        /*
            boolean r0 = r12 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L52
            if (r2 != r4) goto L4a
            java.lang.Object r10 = r0.L$5
            kotlinx.coroutines.channels.ChannelIterator r10 = (kotlinx.coroutines.channels.ChannelIterator) r10
            java.lang.Object r11 = r0.L$4
            kotlinx.coroutines.channels.p r11 = (kotlinx.coroutines.channels.p) r11
            java.lang.Object r2 = r0.L$3
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r5 = r0.L$2
            kotlinx.coroutines.channels.e r5 = (kotlinx.coroutines.channels.e) r5
            java.lang.Object r6 = r0.L$1
            kotlin.jvm.b.l r6 = (kotlin.jvm.functions.Function1) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.e r7 = (kotlinx.coroutines.channels.e) r7
            kotlin.k.b(r12)     // Catch: java.lang.Throwable -> La3
            r8 = r2
            r2 = r11
            r11 = r7
            r7 = r8
            r9 = r1
            r1 = r0
            r0 = r6
            r6 = r9
            goto L7e
        L4a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L52:
            kotlin.k.b(r12)
            kotlinx.coroutines.channels.p r2 = r10.o()
            kotlinx.coroutines.channels.ChannelIterator r12 = r2.iterator()     // Catch: java.lang.Throwable -> La3
            r5 = r1
            r6 = r2
            r1 = r0
            r0 = r11
            r11 = r10
            r10 = r12
            r12 = r11
        L64:
            r1.L$0 = r11     // Catch: java.lang.Throwable -> La0
            r1.L$1 = r0     // Catch: java.lang.Throwable -> La0
            r1.L$2 = r12     // Catch: java.lang.Throwable -> La0
            r1.L$3 = r6     // Catch: java.lang.Throwable -> La0
            r1.L$4 = r2     // Catch: java.lang.Throwable -> La0
            r1.L$5 = r10     // Catch: java.lang.Throwable -> La0
            r1.label = r4     // Catch: java.lang.Throwable -> La0
            java.lang.Object r7 = r10.a(r1)     // Catch: java.lang.Throwable -> La0
            if (r7 != r5) goto L79
            return r5
        L79:
            r8 = r5
            r5 = r12
            r12 = r7
            r7 = r6
            r6 = r8
        L7e:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L9d
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> L9d
            if (r12 == 0) goto L91
            java.lang.Object r12 = r10.next()     // Catch: java.lang.Throwable -> L9d
            r0.invoke(r12)     // Catch: java.lang.Throwable -> L9d
            r12 = r5
            r5 = r6
            r6 = r7
            goto L64
        L91:
            kotlin.v r10 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L9d
            kotlin.jvm.internal.q.b(r4)
            kotlinx.coroutines.channels.p.a.a(r7, r3, r4, r3)
            kotlin.jvm.internal.q.a(r4)
            return r10
        L9d:
            r10 = move-exception
            r2 = r7
            goto La4
        La0:
            r10 = move-exception
            r2 = r6
            goto La4
        La3:
            r10 = move-exception
        La4:
            kotlin.jvm.internal.q.b(r4)
            kotlinx.coroutines.channels.p.a.a(r2, r3, r4, r3)
            kotlin.jvm.internal.q.a(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.k(kotlinx.coroutines.channels.e, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00be A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cb A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #1 {all -> 0x0047, blocks: (B:13:0x0042, B:37:0x00c3, B:39:0x00cb), top: B:53:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bf -> B:37:0x00c3). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <S, E extends S> java.lang.Object k0(kotlinx.coroutines.channels.p<? extends E> r10, kotlin.jvm.functions.Function2<? super S, ? super E, ? extends S> r11, kotlin.coroutines.Continuation<? super S> r12) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.k0(kotlinx.coroutines.channels.p, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0087 A[Catch: all -> 0x0049, TryCatch #2 {all -> 0x0049, blocks: (B:12:0x003d, B:25:0x007f, B:27:0x0087, B:28:0x0092), top: B:43:0x003d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007a -> B:25:0x007f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object l(kotlinx.coroutines.channels.p<? extends E> r9, kotlin.jvm.functions.Function1<? super E, kotlin.v> r10, kotlin.coroutines.Continuation<? super kotlin.v> r11) {
        /*
            boolean r0 = r11 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$3
            if (r0 == 0) goto L13
            r0 = r11
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$3 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$3 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$3
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L55
            if (r2 != r3) goto L4d
            java.lang.Object r9 = r0.L$5
            kotlinx.coroutines.channels.ChannelIterator r9 = (kotlinx.coroutines.channels.ChannelIterator) r9
            java.lang.Object r10 = r0.L$4
            kotlinx.coroutines.channels.p r10 = (kotlinx.coroutines.channels.p) r10
            java.lang.Object r2 = r0.L$3
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.Object r4 = r0.L$2
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$1
            kotlin.jvm.b.l r5 = (kotlin.jvm.functions.Function1) r5
            java.lang.Object r6 = r0.L$0
            kotlinx.coroutines.channels.p r6 = (kotlinx.coroutines.channels.p) r6
            kotlin.k.b(r11)     // Catch: java.lang.Throwable -> L49
            r7 = r0
            r0 = r10
            r10 = r6
            r6 = r2
            r2 = r7
            r8 = r5
            r5 = r1
            r1 = r8
            goto L7f
        L49:
            r9 = move-exception
            r11 = r4
            goto La3
        L4d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L55:
            kotlin.k.b(r11)
            r11 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r9.iterator()     // Catch: java.lang.Throwable -> La0
            r5 = r11
            r4 = r1
            r11 = r9
            r1 = r10
            r10 = r11
            r9 = r2
            r2 = r0
            r0 = r10
        L65:
            r2.L$0 = r10     // Catch: java.lang.Throwable -> L9e
            r2.L$1 = r1     // Catch: java.lang.Throwable -> L9e
            r2.L$2 = r11     // Catch: java.lang.Throwable -> L9e
            r2.L$3 = r5     // Catch: java.lang.Throwable -> L9e
            r2.L$4 = r0     // Catch: java.lang.Throwable -> L9e
            r2.L$5 = r9     // Catch: java.lang.Throwable -> L9e
            r2.label = r3     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r6 = r9.a(r2)     // Catch: java.lang.Throwable -> L9e
            if (r6 != r4) goto L7a
            return r4
        L7a:
            r7 = r4
            r4 = r11
            r11 = r6
            r6 = r5
            r5 = r7
        L7f:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L49
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L49
            if (r11 == 0) goto L92
            java.lang.Object r11 = r9.next()     // Catch: java.lang.Throwable -> L49
            r1.invoke(r11)     // Catch: java.lang.Throwable -> L49
            r11 = r4
            r4 = r5
            r5 = r6
            goto L65
        L92:
            kotlin.v r9 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> L49
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r4, r6)
            kotlin.jvm.internal.q.a(r3)
            return r9
        L9e:
            r9 = move-exception
            goto La3
        La0:
            r10 = move-exception
            r11 = r9
            r9 = r10
        La3:
            throw r9     // Catch: java.lang.Throwable -> La4
        La4:
            r10 = move-exception
            kotlin.jvm.internal.q.b(r3)
            kotlinx.coroutines.channels.i.j(r11, r9)
            kotlin.jvm.internal.q.a(r3)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.l(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cf A[Catch: all -> 0x0049, TRY_LEAVE, TryCatch #3 {all -> 0x0049, blocks: (B:13:0x0044, B:37:0x00c7, B:39:0x00cf), top: B:56:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c3 -> B:37:0x00c7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <S, E extends S> java.lang.Object l0(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function3<? super java.lang.Integer, ? super S, ? super E, ? extends S> r13, kotlin.coroutines.Continuation<? super S> r14) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.l0(kotlinx.coroutines.channels.p, kotlin.jvm.b.q, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009a  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a5 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:25:0x009d, B:27:0x00a5, B:21:0x0081, B:28:0x00b9), top: B:40:0x009d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009a -> B:40:0x009d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object m(kotlinx.coroutines.channels.p<? extends E> r17, kotlin.jvm.functions.Function1<? super kotlin.collections.IndexedValue<? extends E>, kotlin.v> r18, kotlin.coroutines.Continuation<? super kotlin.v> r19) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.m(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0094 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #2 {all -> 0x0067, blocks: (B:20:0x0063, B:29:0x008c, B:31:0x0094, B:41:0x00c6, B:42:0x00cd), top: B:53:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ac A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c6 A[Catch: all -> 0x0067, TRY_ENTER, TryCatch #2 {all -> 0x0067, blocks: (B:20:0x0063, B:29:0x008c, B:31:0x0094, B:41:0x00c6, B:42:0x00cd), top: B:53:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object m0(p<? extends E> pVar, Continuation<? super E> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$single$1 channelsKt__Channels_commonKt$single$1;
        p<? extends E> pVar2;
        Throwable th;
        p<? extends E> pVar3;
        ChannelIterator<? extends E> channelIterator;
        p<? extends E> pVar4;
        Throwable th2;
        E next;
        Object objA;
        Throwable th3;
        p<? extends E> pVar5;
        Object obj;
        if (continuation instanceof ChannelsKt__Channels_commonKt$single$1) {
            channelsKt__Channels_commonKt$single$1 = (ChannelsKt__Channels_commonKt$single$1) continuation;
            int i = channelsKt__Channels_commonKt$single$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$single$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$single$1 = new ChannelsKt__Channels_commonKt$single$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$single$1 = new ChannelsKt__Channels_commonKt$single$1(continuation);
        }
        Object obj2 = channelsKt__Channels_commonKt$single$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$single$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj2);
            try {
                ChannelIterator<? extends E> it = pVar.iterator();
                channelsKt__Channels_commonKt$single$1.L$0 = pVar;
                channelsKt__Channels_commonKt$single$1.L$1 = pVar;
                channelsKt__Channels_commonKt$single$1.L$2 = null;
                channelsKt__Channels_commonKt$single$1.L$3 = pVar;
                channelsKt__Channels_commonKt$single$1.L$4 = it;
                channelsKt__Channels_commonKt$single$1.label = 1;
                Object objA2 = it.a(channelsKt__Channels_commonKt$single$1);
                if (objA2 == objD) {
                    return objD;
                }
                pVar2 = pVar;
                pVar3 = pVar2;
                channelIterator = it;
                pVar4 = pVar3;
                th2 = null;
                obj2 = objA2;
                if (((Boolean) obj2).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                next = channelIterator.next();
                channelsKt__Channels_commonKt$single$1.L$0 = pVar3;
                channelsKt__Channels_commonKt$single$1.L$1 = pVar2;
                channelsKt__Channels_commonKt$single$1.L$2 = th2;
                channelsKt__Channels_commonKt$single$1.L$3 = pVar4;
                channelsKt__Channels_commonKt$single$1.L$4 = channelIterator;
                channelsKt__Channels_commonKt$single$1.L$5 = next;
                channelsKt__Channels_commonKt$single$1.label = 2;
                objA = channelIterator.a(channelsKt__Channels_commonKt$single$1);
                if (objA == objD) {
                    return objD;
                }
                th3 = th2;
                pVar5 = pVar2;
                obj2 = objA;
                obj = next;
            } catch (Throwable th4) {
                pVar2 = pVar;
                th = th4;
                throw th;
            }
        } else if (i2 == 1) {
            channelIterator = (ChannelIterator) channelsKt__Channels_commonKt$single$1.L$4;
            pVar4 = (p) channelsKt__Channels_commonKt$single$1.L$3;
            th2 = (Throwable) channelsKt__Channels_commonKt$single$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$single$1.L$1;
            pVar3 = (p) channelsKt__Channels_commonKt$single$1.L$0;
            try {
                kotlin.k.b(obj2);
                if (((Boolean) obj2).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                next = channelIterator.next();
                channelsKt__Channels_commonKt$single$1.L$0 = pVar3;
                channelsKt__Channels_commonKt$single$1.L$1 = pVar2;
                channelsKt__Channels_commonKt$single$1.L$2 = th2;
                channelsKt__Channels_commonKt$single$1.L$3 = pVar4;
                channelsKt__Channels_commonKt$single$1.L$4 = channelIterator;
                channelsKt__Channels_commonKt$single$1.L$5 = next;
                channelsKt__Channels_commonKt$single$1.label = 2;
                objA = channelIterator.a(channelsKt__Channels_commonKt$single$1);
                if (objA == objD) {
                    return objD;
                }
                th3 = th2;
                pVar5 = pVar2;
                obj2 = objA;
                obj = next;
            } catch (Throwable th5) {
                th = th5;
                throw th;
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj = channelsKt__Channels_commonKt$single$1.L$5;
            th3 = (Throwable) channelsKt__Channels_commonKt$single$1.L$2;
            pVar5 = (p) channelsKt__Channels_commonKt$single$1.L$1;
            try {
                kotlin.k.b(obj2);
            } catch (Throwable th6) {
                th = th6;
                pVar2 = pVar5;
                try {
                    throw th;
                } catch (Throwable th7) {
                    i.j(pVar2, th);
                    throw th7;
                }
            }
        }
        if (((Boolean) obj2).booleanValue()) {
            throw new IllegalArgumentException("ReceiveChannel has more than one element.");
        }
        i.j(pVar5, th3);
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0088  */
    /* JADX WARN: Code duplicated, block: B:27:0x0093 A[Catch: all -> 0x00a9, TryCatch #0 {all -> 0x00a9, blocks: (B:25:0x008b, B:27:0x0093, B:21:0x0071, B:28:0x009d), top: B:39:0x008b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0088 -> B:39:0x008b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object n(kotlinx.coroutines.channels.p<? extends E> r11, kotlin.coroutines.Continuation<? super java.lang.Integer> r12) {
        /*
            boolean r0 = r12 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$count$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$count$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$count$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$count$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$count$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L58
            if (r2 != r3) goto L50
            java.lang.Object r11 = r0.L$6
            kotlinx.coroutines.channels.ChannelIterator r11 = (kotlinx.coroutines.channels.ChannelIterator) r11
            java.lang.Object r2 = r0.L$5
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r4 = r0.L$4
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Object r5 = r0.L$3
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            java.lang.Object r6 = r0.L$2
            kotlinx.coroutines.channels.p r6 = (kotlinx.coroutines.channels.p) r6
            java.lang.Object r7 = r0.L$1
            kotlin.jvm.internal.Ref$IntRef r7 = (kotlin.jvm.internal.Ref$IntRef) r7
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.channels.p r8 = (kotlinx.coroutines.channels.p) r8
            kotlin.k.b(r12)     // Catch: java.lang.Throwable -> L4c
            r9 = r4
            r4 = r0
            r0 = r6
            r6 = r9
            r10 = r5
            r5 = r1
            r1 = r10
            goto L8b
        L4c:
            r11 = move-exception
            r1 = r5
            goto Lae
        L50:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L58:
            kotlin.k.b(r12)
            kotlin.jvm.internal.Ref$IntRef r12 = new kotlin.jvm.internal.Ref$IntRef
            r12.<init>()
            r2 = 0
            r12.element = r2
            r2 = 0
            kotlinx.coroutines.channels.ChannelIterator r4 = r11.iterator()     // Catch: java.lang.Throwable -> Lab
            r7 = r12
            r5 = r1
            r6 = r2
            r12 = r11
            r1 = r12
            r2 = r1
            r11 = r4
            r4 = r0
            r0 = r2
        L71:
            r4.L$0 = r12     // Catch: java.lang.Throwable -> La9
            r4.L$1 = r7     // Catch: java.lang.Throwable -> La9
            r4.L$2 = r0     // Catch: java.lang.Throwable -> La9
            r4.L$3 = r1     // Catch: java.lang.Throwable -> La9
            r4.L$4 = r6     // Catch: java.lang.Throwable -> La9
            r4.L$5 = r2     // Catch: java.lang.Throwable -> La9
            r4.L$6 = r11     // Catch: java.lang.Throwable -> La9
            r4.label = r3     // Catch: java.lang.Throwable -> La9
            java.lang.Object r8 = r11.a(r4)     // Catch: java.lang.Throwable -> La9
            if (r8 != r5) goto L88
            return r5
        L88:
            r9 = r8
            r8 = r12
            r12 = r9
        L8b:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> La9
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> La9
            if (r12 == 0) goto L9d
            r11.next()     // Catch: java.lang.Throwable -> La9
            int r12 = r7.element     // Catch: java.lang.Throwable -> La9
            int r12 = r12 + r3
            r7.element = r12     // Catch: java.lang.Throwable -> La9
            r12 = r8
            goto L71
        L9d:
            kotlin.v r11 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> La9
            kotlinx.coroutines.channels.i.j(r1, r6)
            int r11 = r7.element
            java.lang.Integer r11 = kotlin.coroutines.jvm.internal.a.d(r11)
            return r11
        La9:
            r11 = move-exception
            goto Lae
        Lab:
            r12 = move-exception
            r1 = r11
            r11 = r12
        Lae:
            throw r11     // Catch: java.lang.Throwable -> Laf
        Laf:
            r12 = move-exception
            kotlinx.coroutines.channels.i.j(r1, r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.n(kotlinx.coroutines.channels.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b0 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:31:0x00c4, B:32:0x00c9, B:33:0x00d0, B:21:0x0086, B:35:0x00d7), top: B:50:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c0 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:31:0x00c4, B:32:0x00c9, B:33:0x00d0, B:21:0x0086, B:35:0x00d7), top: B:50:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c4 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:31:0x00c4, B:32:0x00c9, B:33:0x00d0, B:21:0x0086, B:35:0x00d7), top: B:50:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c9 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:25:0x00a8, B:27:0x00b0, B:29:0x00c0, B:31:0x00c4, B:32:0x00c9, B:33:0x00d0, B:21:0x0086, B:35:0x00d7), top: B:50:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r15v9, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a1 -> B:50:0x00a8). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object n0(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r14, kotlin.coroutines.Continuation<? super E> r15) {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.n0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0092 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a1 A[Catch: all -> 0x00cd, TryCatch #2 {all -> 0x00cd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:21:0x007a, B:31:0x00bb), top: B:46:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b1 A[Catch: all -> 0x00cd, TryCatch #2 {all -> 0x00cd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:21:0x007a, B:31:0x00bb), top: B:46:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb A[Catch: all -> 0x00cd, TRY_LEAVE, TryCatch #2 {all -> 0x00cd, blocks: (B:25:0x0099, B:27:0x00a1, B:29:0x00b1, B:21:0x007a, B:31:0x00bb), top: B:46:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:46:0x0099). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object o(kotlinx.coroutines.channels.p<? extends E> r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.o(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <E> Object o0(p<? extends E> pVar, Continuation<? super E> continuation) throws Throwable {
        ChannelsKt__Channels_commonKt$singleOrNull$1 channelsKt__Channels_commonKt$singleOrNull$1;
        p<? extends E> pVar2;
        Throwable th;
        p<? extends E> pVar3;
        Throwable th2;
        ChannelIterator<? extends E> channelIterator;
        p<? extends E> pVar4;
        Throwable th3;
        p<? extends E> pVar5;
        Object obj;
        if (continuation instanceof ChannelsKt__Channels_commonKt$singleOrNull$1) {
            channelsKt__Channels_commonKt$singleOrNull$1 = (ChannelsKt__Channels_commonKt$singleOrNull$1) continuation;
            int i = channelsKt__Channels_commonKt$singleOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                channelsKt__Channels_commonKt$singleOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                channelsKt__Channels_commonKt$singleOrNull$1 = new ChannelsKt__Channels_commonKt$singleOrNull$1(continuation);
            }
        } else {
            channelsKt__Channels_commonKt$singleOrNull$1 = new ChannelsKt__Channels_commonKt$singleOrNull$1(continuation);
        }
        Object obj2 = channelsKt__Channels_commonKt$singleOrNull$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = channelsKt__Channels_commonKt$singleOrNull$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj2);
            try {
                ChannelIterator<? extends E> it = pVar.iterator();
                channelsKt__Channels_commonKt$singleOrNull$1.L$0 = pVar;
                channelsKt__Channels_commonKt$singleOrNull$1.L$1 = pVar;
                channelsKt__Channels_commonKt$singleOrNull$1.L$2 = null;
                channelsKt__Channels_commonKt$singleOrNull$1.L$3 = pVar;
                channelsKt__Channels_commonKt$singleOrNull$1.L$4 = it;
                channelsKt__Channels_commonKt$singleOrNull$1.label = 1;
                Object objA = it.a(channelsKt__Channels_commonKt$singleOrNull$1);
                if (objA == objD) {
                    return objD;
                }
                pVar2 = pVar;
                pVar3 = pVar2;
                th2 = null;
                channelIterator = it;
                obj2 = objA;
                pVar4 = pVar3;
            } catch (Throwable th4) {
                pVar2 = pVar;
                th = th4;
                throw th;
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = channelsKt__Channels_commonKt$singleOrNull$1.L$5;
                th3 = (Throwable) channelsKt__Channels_commonKt$singleOrNull$1.L$2;
                pVar5 = (p) channelsKt__Channels_commonKt$singleOrNull$1.L$1;
                try {
                    kotlin.k.b(obj2);
                    if (((Boolean) obj2).booleanValue()) {
                        i.j(pVar5, th3);
                        return null;
                    }
                    i.j(pVar5, th3);
                    return obj;
                } catch (Throwable th5) {
                    th = th5;
                    pVar2 = pVar5;
                    try {
                        throw th;
                    } catch (Throwable th6) {
                        i.j(pVar2, th);
                        throw th6;
                    }
                }
            }
            channelIterator = (ChannelIterator) channelsKt__Channels_commonKt$singleOrNull$1.L$4;
            pVar4 = (p) channelsKt__Channels_commonKt$singleOrNull$1.L$3;
            th2 = (Throwable) channelsKt__Channels_commonKt$singleOrNull$1.L$2;
            pVar2 = (p) channelsKt__Channels_commonKt$singleOrNull$1.L$1;
            pVar3 = (p) channelsKt__Channels_commonKt$singleOrNull$1.L$0;
            try {
                kotlin.k.b(obj2);
            } catch (Throwable th7) {
                th = th7;
                throw th;
            }
        }
        if (!((Boolean) obj2).booleanValue()) {
            i.j(pVar2, th2);
            return null;
        }
        E next = channelIterator.next();
        channelsKt__Channels_commonKt$singleOrNull$1.L$0 = pVar3;
        channelsKt__Channels_commonKt$singleOrNull$1.L$1 = pVar2;
        channelsKt__Channels_commonKt$singleOrNull$1.L$2 = th2;
        channelsKt__Channels_commonKt$singleOrNull$1.L$3 = pVar4;
        channelsKt__Channels_commonKt$singleOrNull$1.L$4 = channelIterator;
        channelsKt__Channels_commonKt$singleOrNull$1.L$5 = next;
        channelsKt__Channels_commonKt$singleOrNull$1.label = 2;
        Object objA2 = channelIterator.a(channelsKt__Channels_commonKt$singleOrNull$1);
        if (objA2 == objD) {
            return objD;
        }
        th3 = th2;
        pVar5 = pVar2;
        obj2 = objA2;
        obj = next;
        if (((Boolean) obj2).booleanValue()) {
            i.j(pVar5, th3);
            return null;
        }
        i.j(pVar5, th3);
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0090 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0091  */
    /* JADX WARN: Code duplicated, block: B:29:0x009f A[Catch: all -> 0x00cf, TRY_LEAVE, TryCatch #3 {all -> 0x00cf, blocks: (B:27:0x0097, B:29:0x009f, B:23:0x0078, B:35:0x00b0, B:36:0x00ce), top: B:53:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0091 -> B:53:0x0097). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object p(kotlinx.coroutines.channels.p<? extends E> r16, int r17, kotlin.coroutines.Continuation<? super E> r18) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.p(kotlinx.coroutines.channels.p, int, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b4 A[Catch: all -> 0x00ec, TryCatch #1 {all -> 0x00ec, blocks: (B:25:0x00ac, B:27:0x00b4, B:29:0x00c4, B:33:0x00d3, B:21:0x008e, B:35:0x00d9), top: B:52:0x00ac }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c4 A[Catch: all -> 0x00ec, TRY_LEAVE, TryCatch #1 {all -> 0x00ec, blocks: (B:25:0x00ac, B:27:0x00b4, B:29:0x00c4, B:33:0x00d3, B:21:0x008e, B:35:0x00d9), top: B:52:0x00ac }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d3 A[Catch: all -> 0x00ec, TRY_ENTER, TryCatch #1 {all -> 0x00ec, blocks: (B:25:0x00ac, B:27:0x00b4, B:29:0x00c4, B:33:0x00d3, B:21:0x008e, B:35:0x00d9), top: B:52:0x00ac }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:52:0x00ac). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object p0(kotlinx.coroutines.channels.p<? extends E> r17, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r18, kotlin.coroutines.Continuation<? super E> r19) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.p0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0097 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0098  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a7 A[Catch: all -> 0x00d3, TRY_LEAVE, TryCatch #0 {all -> 0x00d3, blocks: (B:30:0x009f, B:32:0x00a7, B:26:0x007f, B:38:0x00c0), top: B:49:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00af  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0098 -> B:49:0x009f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object q(kotlinx.coroutines.channels.p<? extends E> r11, int r12, kotlin.jvm.functions.Function1<? super java.lang.Integer, ? extends E> r13, kotlin.coroutines.Continuation<? super E> r14) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.q(kotlinx.coroutines.channels.p, int, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0092 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a1 A[Catch: all -> 0x00cb, TryCatch #2 {all -> 0x00cb, blocks: (B:25:0x0099, B:27:0x00a1, B:21:0x007a, B:28:0x00b9), top: B:43:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0093 -> B:43:0x0099). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object q0(kotlinx.coroutines.channels.p<? extends E> r13, kotlin.jvm.functions.Function1<? super E, java.lang.Integer> r14, kotlin.coroutines.Continuation<? super java.lang.Integer> r15) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.q0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:31:0x0090 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #2 {all -> 0x0048, blocks: (B:12:0x003e, B:29:0x0088, B:31:0x0090), top: B:51:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0082 -> B:29:0x0088). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object r(kotlinx.coroutines.channels.p<? extends E> r11, int r12, kotlin.coroutines.Continuation<? super E> r13) {
        /*
            boolean r0 = r13 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$elementAtOrNull$1
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$elementAtOrNull$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$elementAtOrNull$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$elementAtOrNull$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$elementAtOrNull$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L54
            if (r2 != r4) goto L4c
            java.lang.Object r11 = r0.L$4
            kotlinx.coroutines.channels.ChannelIterator r11 = (kotlinx.coroutines.channels.ChannelIterator) r11
            int r12 = r0.I$1
            java.lang.Object r2 = r0.L$3
            kotlinx.coroutines.channels.p r2 = (kotlinx.coroutines.channels.p) r2
            java.lang.Object r5 = r0.L$2
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.channels.p r6 = (kotlinx.coroutines.channels.p) r6
            int r7 = r0.I$0
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.channels.p r8 = (kotlinx.coroutines.channels.p) r8
            kotlin.k.b(r13)     // Catch: java.lang.Throwable -> L48
            r10 = r5
            r5 = r0
            r0 = r2
            r2 = r1
            r1 = r7
            r7 = r10
            goto L88
        L48:
            r11 = move-exception
            r13 = r6
            goto Laa
        L4c:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L54:
            kotlin.k.b(r13)
            if (r12 >= 0) goto L5d
            kotlinx.coroutines.channels.i.j(r11, r3)
            return r3
        L5d:
            r13 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r11.iterator()     // Catch: java.lang.Throwable -> La7
            r13 = r11
            r5 = r0
            r6 = r1
            r7 = r3
            r0 = r13
            r1 = r12
            r11 = r2
            r2 = 0
            r12 = r0
        L6b:
            r5.L$0 = r12     // Catch: java.lang.Throwable -> La5
            r5.I$0 = r1     // Catch: java.lang.Throwable -> La5
            r5.L$1 = r13     // Catch: java.lang.Throwable -> La5
            r5.L$2 = r7     // Catch: java.lang.Throwable -> La5
            r5.L$3 = r0     // Catch: java.lang.Throwable -> La5
            r5.I$1 = r2     // Catch: java.lang.Throwable -> La5
            r5.L$4 = r11     // Catch: java.lang.Throwable -> La5
            r5.label = r4     // Catch: java.lang.Throwable -> La5
            java.lang.Object r8 = r11.a(r5)     // Catch: java.lang.Throwable -> La5
            if (r8 != r6) goto L82
            return r6
        L82:
            r10 = r8
            r8 = r12
            r12 = r2
            r2 = r6
            r6 = r13
            r13 = r10
        L88:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Throwable -> L48
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Throwable -> L48
            if (r13 == 0) goto La1
            java.lang.Object r13 = r11.next()     // Catch: java.lang.Throwable -> L48
            int r9 = r12 + 1
            if (r1 != r12) goto L9c
            kotlinx.coroutines.channels.i.j(r6, r7)
            return r13
        L9c:
            r13 = r6
            r12 = r8
            r6 = r2
            r2 = r9
            goto L6b
        La1:
            kotlinx.coroutines.channels.i.j(r6, r7)
            return r3
        La5:
            r11 = move-exception
            goto Laa
        La7:
            r12 = move-exception
            r13 = r11
            r11 = r12
        Laa:
            throw r11     // Catch: java.lang.Throwable -> Lab
        Lab:
            r12 = move-exception
            kotlinx.coroutines.channels.i.j(r13, r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.r(kotlinx.coroutines.channels.p, int, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00aa A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:25:0x00a2, B:27:0x00aa, B:21:0x0084, B:28:0x00bf), top: B:40:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009d -> B:40:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E> java.lang.Object r0(kotlinx.coroutines.channels.p<? extends E> r18, kotlin.jvm.functions.Function1<? super E, java.lang.Double> r19, kotlin.coroutines.Continuation<? super java.lang.Double> r20) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.r0(kotlinx.coroutines.channels.p, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b6 A[Catch: all -> 0x00f0, TryCatch #0 {all -> 0x00f0, blocks: (B:25:0x00ae, B:27:0x00b6, B:29:0x00dd, B:21:0x008c, B:31:0x00e3), top: B:43:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd A[Catch: all -> 0x00f0, TryCatch #0 {all -> 0x00f0, blocks: (B:25:0x00ae, B:27:0x00b6, B:29:0x00dd, B:21:0x008c, B:31:0x00e3), top: B:43:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:43:0x00ae). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object s(kotlinx.coroutines.channels.p<? extends E> r17, C r18, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, java.lang.Boolean> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.s(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00aa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb A[Catch: all -> 0x00e9, TryCatch #1 {all -> 0x00e9, blocks: (B:25:0x0094, B:29:0x00b3, B:31:0x00bb, B:35:0x00e3), top: B:47:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00d9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00da  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends kotlinx.coroutines.channels.t<? super E>> java.lang.Object s0(kotlinx.coroutines.channels.p<? extends E> r10, C r11, kotlin.coroutines.Continuation<? super C> r12) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.s0(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00df A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fb A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:25:0x00c3, B:29:0x00f3, B:31:0x00fb, B:33:0x0124, B:40:0x0179), top: B:52:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0124 A[Catch: all -> 0x0186, TryCatch #0 {all -> 0x0186, blocks: (B:25:0x00c3, B:29:0x00f3, B:31:0x00fb, B:33:0x0124, B:40:0x0179), top: B:52:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x014d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x014e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0166  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
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
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends kotlinx.coroutines.channels.t<? super E>> java.lang.Object t(kotlinx.coroutines.channels.p<? extends E> r19, C r20, kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super E, java.lang.Boolean> r21, kotlin.coroutines.Continuation<? super C> r22) {
        /*
            Method dump skipped, instruction units count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.t(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.p, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:25:0x0087, B:27:0x008f, B:21:0x006b, B:28:0x009a), top: B:39:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:39:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object t0(kotlinx.coroutines.channels.p<? extends E> r10, C r11, kotlin.coroutines.Continuation<? super C> r12) {
        /*
            boolean r0 = r12 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toCollection$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toCollection$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toCollection$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toCollection$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toCollection$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5a
            if (r2 != r3) goto L52
            java.lang.Object r10 = r0.L$6
            kotlinx.coroutines.channels.ChannelIterator r10 = (kotlinx.coroutines.channels.ChannelIterator) r10
            java.lang.Object r11 = r0.L$5
            kotlinx.coroutines.channels.p r11 = (kotlinx.coroutines.channels.p) r11
            java.lang.Object r2 = r0.L$4
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            java.lang.Object r6 = r0.L$1
            java.util.Collection r6 = (java.util.Collection) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r12)     // Catch: java.lang.Throwable -> L4e
            r8 = r1
            r1 = r11
            r11 = r7
            r7 = r2
            r2 = r6
            r6 = r8
            r9 = r4
            r4 = r0
            r0 = r9
            goto L87
        L4e:
            r10 = move-exception
            r0 = r4
            goto La5
        L52:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L5a:
            kotlin.k.b(r12)
            r12 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r10.iterator()     // Catch: java.lang.Throwable -> La2
            r6 = r12
            r4 = r0
            r5 = r1
            r12 = r10
            r0 = r12
            r1 = r0
            r10 = r2
            r2 = r11
            r11 = r1
        L6b:
            r4.L$0 = r11     // Catch: java.lang.Throwable -> La0
            r4.L$1 = r2     // Catch: java.lang.Throwable -> La0
            r4.L$2 = r12     // Catch: java.lang.Throwable -> La0
            r4.L$3 = r0     // Catch: java.lang.Throwable -> La0
            r4.L$4 = r6     // Catch: java.lang.Throwable -> La0
            r4.L$5 = r1     // Catch: java.lang.Throwable -> La0
            r4.L$6 = r10     // Catch: java.lang.Throwable -> La0
            r4.label = r3     // Catch: java.lang.Throwable -> La0
            java.lang.Object r7 = r10.a(r4)     // Catch: java.lang.Throwable -> La0
            if (r7 != r5) goto L82
            return r5
        L82:
            r8 = r5
            r5 = r12
            r12 = r7
            r7 = r6
            r6 = r8
        L87:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> La0
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> La0
            if (r12 == 0) goto L9a
            java.lang.Object r12 = r10.next()     // Catch: java.lang.Throwable -> La0
            r2.add(r12)     // Catch: java.lang.Throwable -> La0
            r12 = r5
            r5 = r6
            r6 = r7
            goto L6b
        L9a:
            kotlin.v r10 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> La0
            kotlinx.coroutines.channels.i.j(r0, r7)
            return r2
        La0:
            r10 = move-exception
            goto La5
        La2:
            r11 = move-exception
            r0 = r10
            r10 = r11
        La5:
            throw r10     // Catch: java.lang.Throwable -> La6
        La6:
            r11 = move-exception
            kotlinx.coroutines.channels.i.j(r0, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.t0(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x0095, B:21:0x006b, B:31:0x009c), top: B:42:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0095 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x0095, B:21:0x006b, B:31:0x009c), top: B:42:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x009c A[Catch: all -> 0x00a2, TRY_LEAVE, TryCatch #0 {all -> 0x00a2, blocks: (B:25:0x0087, B:27:0x008f, B:29:0x0095, B:21:0x006b, B:31:0x009c), top: B:42:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:42:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object u(kotlinx.coroutines.channels.p<? extends E> r10, C r11, kotlin.coroutines.Continuation<? super C> r12) {
        /*
            boolean r0 = r12 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNotNullTo$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNotNullTo$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNotNullTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNotNullTo$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNotNullTo$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5a
            if (r2 != r3) goto L52
            java.lang.Object r10 = r0.L$6
            kotlinx.coroutines.channels.ChannelIterator r10 = (kotlinx.coroutines.channels.ChannelIterator) r10
            java.lang.Object r11 = r0.L$5
            kotlinx.coroutines.channels.p r11 = (kotlinx.coroutines.channels.p) r11
            java.lang.Object r2 = r0.L$4
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            java.lang.Object r6 = r0.L$1
            java.util.Collection r6 = (java.util.Collection) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r12)     // Catch: java.lang.Throwable -> L4e
            r8 = r1
            r1 = r11
            r11 = r7
            r7 = r2
            r2 = r6
            r6 = r8
            r9 = r4
            r4 = r0
            r0 = r9
            goto L87
        L4e:
            r10 = move-exception
            r0 = r4
            goto La7
        L52:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L5a:
            kotlin.k.b(r12)
            r12 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r10.iterator()     // Catch: java.lang.Throwable -> La4
            r6 = r12
            r4 = r0
            r5 = r1
            r12 = r10
            r0 = r12
            r1 = r0
            r10 = r2
            r2 = r11
            r11 = r1
        L6b:
            r4.L$0 = r11     // Catch: java.lang.Throwable -> La2
            r4.L$1 = r2     // Catch: java.lang.Throwable -> La2
            r4.L$2 = r12     // Catch: java.lang.Throwable -> La2
            r4.L$3 = r0     // Catch: java.lang.Throwable -> La2
            r4.L$4 = r6     // Catch: java.lang.Throwable -> La2
            r4.L$5 = r1     // Catch: java.lang.Throwable -> La2
            r4.L$6 = r10     // Catch: java.lang.Throwable -> La2
            r4.label = r3     // Catch: java.lang.Throwable -> La2
            java.lang.Object r7 = r10.a(r4)     // Catch: java.lang.Throwable -> La2
            if (r7 != r5) goto L82
            return r5
        L82:
            r8 = r5
            r5 = r12
            r12 = r7
            r7 = r6
            r6 = r8
        L87:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> La2
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> La2
            if (r12 == 0) goto L9c
            java.lang.Object r12 = r10.next()     // Catch: java.lang.Throwable -> La2
            if (r12 == 0) goto L98
            r2.add(r12)     // Catch: java.lang.Throwable -> La2
        L98:
            r12 = r5
            r5 = r6
            r6 = r7
            goto L6b
        L9c:
            kotlin.v r10 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> La2
            kotlinx.coroutines.channels.i.j(r0, r7)
            return r2
        La2:
            r10 = move-exception
            goto La7
        La4:
            r11 = move-exception
            r0 = r10
            r10 = r11
        La7:
            throw r10     // Catch: java.lang.Throwable -> La8
        La8:
            r11 = move-exception
            kotlinx.coroutines.channels.i.j(r0, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.u(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f A[Catch: all -> 0x00aa, TryCatch #1 {all -> 0x00aa, blocks: (B:25:0x0087, B:27:0x008f, B:21:0x006b, B:28:0x00a4), top: B:41:0x0087 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0082 -> B:41:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object u0(kotlinx.coroutines.channels.p<? extends kotlin.Pair<? extends K, ? extends V>> r11, M r12, kotlin.coroutines.Continuation<? super M> r13) {
        /*
            boolean r0 = r13 instanceof kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toMap$2
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toMap$2 r0 = (kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toMap$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toMap$2 r0 = new kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toMap$2
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.d()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L5a
            if (r2 != r3) goto L52
            java.lang.Object r11 = r0.L$6
            kotlinx.coroutines.channels.ChannelIterator r11 = (kotlinx.coroutines.channels.ChannelIterator) r11
            java.lang.Object r12 = r0.L$5
            kotlinx.coroutines.channels.p r12 = (kotlinx.coroutines.channels.p) r12
            java.lang.Object r2 = r0.L$4
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.Object r4 = r0.L$3
            kotlinx.coroutines.channels.p r4 = (kotlinx.coroutines.channels.p) r4
            java.lang.Object r5 = r0.L$2
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            java.lang.Object r6 = r0.L$1
            java.util.Map r6 = (java.util.Map) r6
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.channels.p r7 = (kotlinx.coroutines.channels.p) r7
            kotlin.k.b(r13)     // Catch: java.lang.Throwable -> L4e
            r9 = r1
            r1 = r12
            r12 = r7
            r7 = r2
            r2 = r6
            r6 = r9
            r10 = r4
            r4 = r0
            r0 = r10
            goto L87
        L4e:
            r11 = move-exception
            r0 = r4
            goto Laf
        L52:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L5a:
            kotlin.k.b(r13)
            r13 = 0
            kotlinx.coroutines.channels.ChannelIterator r2 = r11.iterator()     // Catch: java.lang.Throwable -> Lac
            r6 = r13
            r4 = r0
            r5 = r1
            r13 = r11
            r0 = r13
            r1 = r0
            r11 = r2
            r2 = r12
            r12 = r1
        L6b:
            r4.L$0 = r12     // Catch: java.lang.Throwable -> Laa
            r4.L$1 = r2     // Catch: java.lang.Throwable -> Laa
            r4.L$2 = r13     // Catch: java.lang.Throwable -> Laa
            r4.L$3 = r0     // Catch: java.lang.Throwable -> Laa
            r4.L$4 = r6     // Catch: java.lang.Throwable -> Laa
            r4.L$5 = r1     // Catch: java.lang.Throwable -> Laa
            r4.L$6 = r11     // Catch: java.lang.Throwable -> Laa
            r4.label = r3     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r7 = r11.a(r4)     // Catch: java.lang.Throwable -> Laa
            if (r7 != r5) goto L82
            return r5
        L82:
            r9 = r5
            r5 = r13
            r13 = r7
            r7 = r6
            r6 = r9
        L87:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Throwable -> Laa
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Throwable -> Laa
            if (r13 == 0) goto La4
            java.lang.Object r13 = r11.next()     // Catch: java.lang.Throwable -> Laa
            kotlin.Pair r13 = (kotlin.Pair) r13     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r8 = r13.getFirst()     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r13 = r13.getSecond()     // Catch: java.lang.Throwable -> Laa
            r2.put(r8, r13)     // Catch: java.lang.Throwable -> Laa
            r13 = r5
            r5 = r6
            r6 = r7
            goto L6b
        La4:
            kotlin.v r11 = kotlin.v.f15822a     // Catch: java.lang.Throwable -> Laa
            kotlinx.coroutines.channels.i.j(r0, r7)
            return r2
        Laa:
            r11 = move-exception
            goto Laf
        Lac:
            r12 = move-exception
            r0 = r11
            r11 = r12
        Laf:
            throw r11     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            r12 = move-exception
            kotlinx.coroutines.channels.i.j(r0, r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.u0(kotlinx.coroutines.channels.p, java.util.Map, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00af A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00be A[Catch: all -> 0x0086, TryCatch #1 {all -> 0x0086, blocks: (B:13:0x0048, B:29:0x00b6, B:31:0x00be, B:33:0x00c4, B:37:0x00e4, B:18:0x0078), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00c4 A[Catch: all -> 0x0086, TryCatch #1 {all -> 0x0086, blocks: (B:13:0x0048, B:29:0x00b6, B:31:0x00be, B:33:0x00c4, B:37:0x00e4, B:18:0x0078), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00df  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4 A[Catch: all -> 0x0086, TRY_LEAVE, TryCatch #1 {all -> 0x0086, blocks: (B:13:0x0048, B:29:0x00b6, B:31:0x00be, B:33:0x00c4, B:37:0x00e4, B:18:0x0078), top: B:50:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends kotlinx.coroutines.channels.t<? super E>> java.lang.Object v(kotlinx.coroutines.channels.p<? extends E> r12, C r13, kotlin.coroutines.Continuation<? super C> r14) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.v(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a7, B:31:0x00af), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a7 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a7, B:31:0x00af), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object w(kotlinx.coroutines.channels.p<? extends E> r11, C r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super C> r14) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.w(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00ce A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:31:0x00da A[Catch: all -> 0x0115, TryCatch #0 {all -> 0x0115, blocks: (B:25:0x00b6, B:29:0x00d2, B:31:0x00da, B:33:0x00ea, B:37:0x0109), top: B:49:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ea A[Catch: all -> 0x0115, TryCatch #0 {all -> 0x0115, blocks: (B:25:0x00b6, B:29:0x00d2, B:31:0x00da, B:33:0x00ea, B:37:0x0109), top: B:49:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0106 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x0107  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x009e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x009d */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends kotlinx.coroutines.channels.t<? super E>> java.lang.Object x(kotlinx.coroutines.channels.p<? extends E> r17, C r18, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.x(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0089  */
    /* JADX WARN: Code duplicated, block: B:27:0x0097 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a7, B:31:0x00af), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a7 A[Catch: all -> 0x0052, TryCatch #1 {all -> 0x0052, blocks: (B:12:0x0045, B:25:0x008f, B:27:0x0097, B:29:0x00a7, B:31:0x00af), top: B:44:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0089 -> B:25:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object y(kotlinx.coroutines.channels.p<? extends E> r11, C r12, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r13, kotlin.coroutines.Continuation<? super C> r14) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.y(kotlinx.coroutines.channels.p, java.util.Collection, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00ce A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:31:0x00da A[Catch: all -> 0x0115, TryCatch #0 {all -> 0x0115, blocks: (B:25:0x00b6, B:29:0x00d2, B:31:0x00da, B:33:0x00ea, B:37:0x0109), top: B:49:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ea A[Catch: all -> 0x0115, TryCatch #0 {all -> 0x0115, blocks: (B:25:0x00b6, B:29:0x00d2, B:31:0x00da, B:33:0x00ea, B:37:0x0109), top: B:49:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0106 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x0107  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x009e: MOVE (r2 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:21:0x009d */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <E, C extends kotlinx.coroutines.channels.t<? super E>> java.lang.Object z(kotlinx.coroutines.channels.p<? extends E> r17, C r18, kotlin.jvm.functions.Function1<? super E, java.lang.Boolean> r19, kotlin.coroutines.Continuation<? super C> r20) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.z(kotlinx.coroutines.channels.p, kotlinx.coroutines.channels.t, kotlin.jvm.b.l, kotlin.coroutines.c):java.lang.Object");
    }
}
