package kotlin.text;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;

/* JADX INFO: renamed from: kotlin.text.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012:\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002RB\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "input", "", "startIndex", "", "limit", "getNextMatch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
final class DelimitedRangesSequence implements Sequence<IntRange> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f15812a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2<CharSequence, Integer, Pair<Integer, Integer>> f15813d;

    /* JADX INFO: renamed from: kotlin.text.e$a */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\b¨\u0006\u001c"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "counter", "", "getCounter", "()I", "setCounter", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextItem", "getNextItem", "()Lkotlin/ranges/IntRange;", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextState", "getNextState", "setNextState", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class a implements Iterator<IntRange>, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15814a = -1;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private IntRange f15815d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15816e;

        a() {
            int iG = kotlin.ranges.f.g(DelimitedRangesSequence.this.b, 0, DelimitedRangesSequence.this.f15812a.length());
            this.b = iG;
            this.c = iG;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0031 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:17:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x0023  */
        private final void c() {
            Pair pair;
            if (this.c < 0) {
                this.f15814a = 0;
                this.f15815d = null;
                return;
            }
            if (DelimitedRangesSequence.this.c > 0) {
                int i = this.f15816e + 1;
                this.f15816e = i;
                if (i >= DelimitedRangesSequence.this.c) {
                    this.f15815d = new IntRange(this.b, StringsKt__StringsKt.N(DelimitedRangesSequence.this.f15812a));
                    this.c = -1;
                } else if (this.c > DelimitedRangesSequence.this.f15812a.length() && (pair = (Pair) DelimitedRangesSequence.this.f15813d.invoke(DelimitedRangesSequence.this.f15812a, Integer.valueOf(this.c))) != null) {
                    int iIntValue = ((Number) pair.component1()).intValue();
                    int iIntValue2 = ((Number) pair.component2()).intValue();
                    this.f15815d = kotlin.ranges.f.j(this.b, iIntValue);
                    int i2 = iIntValue + iIntValue2;
                    this.b = i2;
                    this.c = i2 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.f15815d = new IntRange(this.b, StringsKt__StringsKt.N(DelimitedRangesSequence.this.f15812a));
                    this.c = -1;
                }
            } else if (this.c > DelimitedRangesSequence.this.f15812a.length()) {
                this.f15815d = new IntRange(this.b, StringsKt__StringsKt.N(DelimitedRangesSequence.this.f15812a));
                this.c = -1;
            } else {
                int iIntValue3 = ((Number) pair.component1()).intValue();
                int iIntValue4 = ((Number) pair.component2()).intValue();
                this.f15815d = kotlin.ranges.f.j(this.b, iIntValue3);
                int i3 = iIntValue3 + iIntValue4;
                this.b = i3;
                this.c = i3 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.f15814a = 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public IntRange next() {
            if (this.f15814a == -1) {
                c();
            }
            if (this.f15814a == 0) {
                throw new NoSuchElementException();
            }
            IntRange intRange = this.f15815d;
            Objects.requireNonNull(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f15815d = null;
            this.f15814a = -1;
            return intRange;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f15814a == -1) {
                c();
            }
            return this.f15814a == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DelimitedRangesSequence(CharSequence input, int i, int i2, Function2<? super CharSequence, ? super Integer, Pair<Integer, Integer>> getNextMatch) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(getNextMatch, "getNextMatch");
        this.f15812a = input;
        this.b = i;
        this.c = i2;
        this.f15813d = getNextMatch;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<IntRange> iterator() {
        return new a();
    }
}
