package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "R", "index", "", "invoke", "(I)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
final class StringsKt___StringsKt$windowedSequence$2<R> extends Lambda implements Function1<Integer, R> {
    final /* synthetic */ int $size;
    final /* synthetic */ CharSequence $this_windowedSequence;
    final /* synthetic */ Function1 $transform;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StringsKt___StringsKt$windowedSequence$2(CharSequence charSequence, int i, Function1 function1) {
        super(1);
        this.$this_windowedSequence = charSequence;
        this.$size = i;
        this.$transform = function1;
    }

    public final R invoke(int i) {
        int length = this.$size + i;
        if (length < 0 || length > this.$this_windowedSequence.length()) {
            length = this.$this_windowedSequence.length();
        }
        return (R) this.$transform.invoke(this.$this_windowedSequence.subSequence(i, length));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return invoke(num.intValue());
    }
}
