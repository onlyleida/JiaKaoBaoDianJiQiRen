package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@kotlin.coroutines.jvm.internal.d(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", l = {34, 40, 49, 55, 58}, m = "invokeSuspend")
final class SlidingWindowKt$windowedIterator$1<T> extends RestrictedSuspendLambda implements kotlin.jvm.b.p<kotlin.sequences.j<? super List<? extends T>>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ Iterator $iterator;
    final /* synthetic */ boolean $partialWindows;
    final /* synthetic */ boolean $reuseBuffer;
    final /* synthetic */ int $size;
    final /* synthetic */ int $step;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    SlidingWindowKt$windowedIterator$1(int r1, int r2, Iterator r3, boolean r4, boolean r5, kotlin.coroutines.c r6) {
        this.$size = r1;
        this.$step = r2;
        this.$iterator = r3;
        this.$reuseBuffer = r4;
        this.$partialWindows = r5;
        super(2, r6);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r9, kotlin.coroutines.c<?> r10) {
        kotlin.jvm.internal.r.e(r10, "completion");
        SlidingWindowKt$windowedIterator$1 r0 = new SlidingWindowKt$windowedIterator$1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, r10);
        r0.L$0 = r9;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((SlidingWindowKt$windowedIterator$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.lang.Object, java.util.Collection, kotlin.collections.AbstractCollection] */
    /* JADX WARN: Type inference failed for: r1v21, types: [kotlin.collections.r0] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, kotlin.sequences.j] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.Collection, kotlin.collections.AbstractCollection, kotlin.collections.r0] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [kotlin.collections.r0] */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.collections.r0] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object, kotlin.sequences.j] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a7 -> B:30:0x00a8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x011b -> B:59:0x011e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0149 -> B:72:0x014c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r13) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L16;
        if (r1 == 1) goto L15;
        if (r1 == 2) goto L14;
        if (r1 == 3) goto L13;
        if (r1 == 4) goto L12;
        if (r1 == 5) goto L14;
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L12:
        r0 r2 = (r0) this.L$1;
        kotlin.sequences.j r4 = (kotlin.sequences.j) this.L$0;
        kotlin.k.b(r13);
        SlidingWindowKt$windowedIterator$1<T> r14 = this;
        ?? r3 = r2;
        ?? r5 = r4;
    L72:
        r3.o(r14.$step);
        ?? r6 = r3;
        ?? r7 = r5;
    L64:
        if (r6.size() <= r14.$step) goto L74;
        if (r14.$reuseBuffer == false) goto L68;
        ?? r8 = r6;
    L69:
        r14.L$0 = r7;
        r14.L$1 = r6;
        r14.L$2 = null;
        r14.label = 4;
        Object r9 = r7.e(r8, r14);
        r3 = r6;
        r5 = r7;
        if (r9 != r0) goto L72;
        return r0;
    L68:
        r8 = new ArrayList(r6);
        goto L69
    L74:
        if ((!r6.isEmpty()) == false) goto L79;
        r14.L$0 = null;
        r14.L$1 = null;
        r14.L$2 = null;
        r14.label = 5;
        if (r7.e(r6, r14) != r0) goto L79;
        return r0;
    L79:
        return kotlin.v.f15822a;
    L13:
        Iterator r10 = (Iterator) this.L$2;
        r0 r11 = (r0) this.L$1;
        kotlin.sequences.j r12 = (kotlin.sequences.j) this.L$0;
        kotlin.k.b(r13);
        r14 = this;
        ?? r15 = r11;
        ?? r16 = r12;
    L59:
        r15.o(r14.$step);
        ?? r17 = r15;
        ?? r18 = r16;
    L46:
        if (r10.hasNext() == false) goto L61;
        r17.l(r10.next());
        if (r17.n() == false) goto L46;
        int r19 = r17.size();
        int r110 = r14.$size;
        if (r19 >= r110) goto L53;
        r17 = r17.m(r110);
        goto L46
    L53:
        if (r14.$reuseBuffer == false) goto L55;
        ?? r20 = r17;
    L56:
        r14.L$0 = r18;
        r14.L$1 = r17;
        r14.L$2 = r10;
        r14.label = 3;
        Object r21 = r18.e(r20, r14);
        r15 = r17;
        r16 = r18;
        if (r21 != r0) goto L59;
        return r0;
    L55:
        r20 = new ArrayList(r17);
        goto L56
    L61:
        if (r14.$partialWindows == false) goto L79;
        r6 = r17;
        r7 = r18;
    L14:
        kotlin.k.b(r13);
        goto L79
    L15:
        int r22 = this.I$0;
        Iterator r23 = (Iterator) this.L$2;
        ArrayList r24 = (ArrayList) this.L$1;
        kotlin.sequences.j r25 = (kotlin.sequences.j) this.L$0;
        kotlin.k.b(r13);
        SlidingWindowKt$windowedIterator$1<T> r111 = this;
    L31:
        if (r111.$reuseBuffer == false) goto L33;
        r24.clear();
    L34:
        int r26 = r22;
    L20:
        if (r23.hasNext() == false) goto L36;
        Object r27 = r23.next();
        if (r22 > 0) goto L23;
        r24.add(r27);
        if (r24.size() != r111.$size) goto L20;
        r111.L$0 = r25;
        r111.L$1 = r24;
        r111.L$2 = r23;
        r111.I$0 = r26;
        r111.label = 1;
        if (r25.e(r24, r111) != r0) goto L29;
        return r0;
    L29:
        r22 = r26;
        goto L31
    L23:
        r22 = r22 - 1;
        goto L20
    L36:
        if ((!r24.isEmpty()) == false) goto L79;
        if (r111.$partialWindows == false) goto L40;
    L41:
        r111.L$0 = null;
        r111.L$1 = null;
        r111.L$2 = null;
        r111.label = 2;
        if (r25.e(r24, r111) != r0) goto L79;
        return r0;
    L40:
        if (r24.size() != r111.$size) goto L79;
    L33:
        r24 = new ArrayList(r111.$size);
        goto L34
    L16:
        kotlin.k.b(r13);
        kotlin.sequences.j r112 = (kotlin.sequences.j) this.L$0;
        int r28 = kotlin.a0.d.e(this.$size, 1024);
        r26 = this.$step - this.$size;
        if (r26 < 0) goto L44;
        ArrayList r29 = new ArrayList(r28);
        r22 = 0;
        r25 = r112;
        r111 = this;
        r24 = r29;
        r23 = this.$iterator;
        goto L20
    L44:
        r0 r30 = new r0(r28);
        r10 = this.$iterator;
        r18 = r112;
        r14 = this;
        r17 = r30;
        goto L46
    }
}
