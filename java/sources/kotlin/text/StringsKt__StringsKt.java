package kotlin.text;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010\u0011\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001f\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086\u0002\u001a\u001f\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086\u0002\u001a\u0015\u0010\u0012\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\n\u001a\u0018\u0010\u0017\u001a\u00020\u0010*\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u0010*\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u001c\u0010\u0019\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010\u0019\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a:\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001aE\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0002\b!\u001a:\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u001c*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010#\u001a\u00020\u0010*\u00020\u00022\u0006\u0010$\u001a\u00020\u0006\u001a7\u0010%\u001a\u0002H&\"\f\b\u0000\u0010'*\u00020\u0002*\u0002H&\"\u0004\b\u0001\u0010&*\u0002H'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H&0)H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010*\u001a7\u0010+\u001a\u0002H&\"\f\b\u0000\u0010'*\u00020\u0002*\u0002H&\"\u0004\b\u0001\u0010&*\u0002H'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H&0)H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010*\u001a&\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a;\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0002\b.\u001a&\u0010,\u001a\u00020\u0006*\u00020\u00022\u0006\u0010/\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u00100\u001a\u00020\u0006*\u00020\u00022\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a,\u00100\u001a\u00020\u0006*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\r\u00103\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a\r\u00104\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a\r\u00105\u001a\u00020\u0010*\u00020\u0002H\u0087\b\u001a \u00106\u001a\u00020\u0010*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a \u00107\u001a\u00020\u0010*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\r\u00108\u001a\u000209*\u00020\u0002H\u0086\u0002\u001a&\u0010:\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u0010:\u001a\u00020\u0006*\u00020\u00022\u0006\u0010/\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a&\u0010;\u001a\u00020\u0006*\u00020\u00022\u0006\u00101\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a,\u0010;\u001a\u00020\u0006*\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0010\u0010<\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u0002\u001a\u0010\u0010>\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u0002\u001a\u0015\u0010@\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\f\u001a\u000f\u0010A\u001a\u00020\r*\u0004\u0018\u00010\rH\u0087\b\u001a\u001c\u0010B\u001a\u00020\u0002*\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010B\u001a\u00020\r*\u00020\r2\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010E\u001a\u00020\u0002*\u00020\u00022\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001a\u001c\u0010E\u001a\u00020\r*\u00020\r2\u0006\u0010C\u001a\u00020\u00062\b\b\u0002\u0010D\u001a\u00020\u0014\u001aG\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00010=*\u00020\u00022\u000e\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H2\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010J\u001a=\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00010=*\u00020\u00022\u0006\u0010G\u001a\u0002022\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0002\bI\u001a4\u0010K\u001a\u00020\u0010*\u00020\u00022\u0006\u0010L\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0012\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020\u0002\u001a\u0012\u0010N\u001a\u00020\r*\u00020\r2\u0006\u0010O\u001a\u00020\u0002\u001a\u001a\u0010P\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006\u001a\u0012\u0010P\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u001d\u0010P\u001a\u00020\r*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010P\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u0001H\u0087\b\u001a\u0012\u0010R\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010R\u001a\u00020\r*\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010S\u001a\u00020\u0002*\u00020\u00022\u0006\u0010T\u001a\u00020\u0002\u001a\u001a\u0010S\u001a\u00020\u0002*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u0012\u0010S\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u0002\u001a\u001a\u0010S\u001a\u00020\r*\u00020\r2\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a.\u0010U\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0014\b\b\u0010V\u001a\u000e\u0012\u0004\u0012\u00020X\u0012\u0004\u0012\u00020\u00020WH\u0087\bø\u0001\u0000\u001a\u001d\u0010U\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\rH\u0087\b\u001a$\u0010Z\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010Z\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010\\\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010\\\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010]\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010]\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010^\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a$\u0010^\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001d\u0010_\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\rH\u0087\b\u001a)\u0010`\u001a\u00020\r*\u00020\r2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140WH\u0087\bø\u0001\u0000¢\u0006\u0002\ba\u001a)\u0010`\u001a\u00020\r*\u00020\r2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00020WH\u0087\bø\u0001\u0000¢\u0006\u0002\bb\u001a\"\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0002\u001a\u001a\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0002\u001a%\u0010c\u001a\u00020\r*\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0002H\u0087\b\u001a\u001d\u0010c\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010Y\u001a\u00020\u0002H\u0087\b\u001a=\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H\"\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010e\u001a0\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\n\u0010G\u001a\u000202\"\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u001a/\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0006\u0010T\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0002\bf\u001a%\u0010d\u001a\b\u0012\u0004\u0012\u00020\r0?*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0087\b\u001a=\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\u0012\u0010G\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0H\"\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010h\u001a0\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\n\u0010G\u001a\u000202\"\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u001a%\u0010g\u001a\b\u0012\u0004\u0012\u00020\r0=*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0087\b\u001a\u001c\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u001c\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a$\u0010i\u001a\u00020\u0010*\u00020\u00022\u0006\u0010O\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010j\u001a\u00020\u0002*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u001d\u0010j\u001a\u00020\u0002*\u00020\r2\u0006\u0010k\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0087\b\u001a\u001f\u0010m\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010-\u001a\u00020\u0006H\u0087\b\u001a\u0012\u0010m\u001a\u00020\r*\u00020\u00022\u0006\u0010Q\u001a\u00020\u0001\u001a\u0012\u0010m\u001a\u00020\r*\u00020\r2\u0006\u0010Q\u001a\u00020\u0001\u001a\u001c\u0010n\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010n\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010o\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010o\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010p\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010p\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010q\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\u00142\b\b\u0002\u0010[\u001a\u00020\r\u001a\u001c\u0010q\u001a\u00020\r*\u00020\r2\u0006\u0010T\u001a\u00020\r2\b\b\u0002\u0010[\u001a\u00020\r\u001a\f\u0010r\u001a\u00020\u0010*\u00020\rH\u0007\u001a\u0013\u0010s\u001a\u0004\u0018\u00010\u0010*\u00020\rH\u0007¢\u0006\u0002\u0010t\u001a\n\u0010u\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010u\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010u\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010u\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010u\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010u\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\u001a\n\u0010w\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010w\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010w\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010w\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010w\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010w\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\u001a\n\u0010x\u001a\u00020\u0002*\u00020\u0002\u001a$\u0010x\u001a\u00020\u0002*\u00020\u00022\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010x\u001a\u00020\u0002*\u00020\u00022\n\u00101\u001a\u000202\"\u00020\u0014\u001a\r\u0010x\u001a\u00020\r*\u00020\rH\u0087\b\u001a$\u0010x\u001a\u00020\r*\u00020\r2\u0012\u0010v\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100WH\u0086\bø\u0001\u0000\u001a\u0016\u0010x\u001a\u00020\r*\u00020\r2\n\u00101\u001a\u000202\"\u00020\u0014\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006y"}, d2 = {"indices", "Lkotlin/ranges/IntRange;", "", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "", "getLastIndex", "(Ljava/lang/CharSequence;)I", "requireNonNegativeLimit", "", "limit", "commonPrefixWith", "", "other", "ignoreCase", "", "commonSuffixWith", "contains", "char", "", "regex", "Lkotlin/text/Regex;", "contentEqualsIgnoreCaseImpl", "contentEqualsImpl", "endsWith", "suffix", "findAnyOf", "Lkotlin/Pair;", "strings", "", "startIndex", "last", "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "hasSurrogatePairAt", "index", "ifBlank", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "endIndex", "indexOf$StringsKt__StringsKt", "string", "indexOfAny", "chars", "", "isEmpty", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "iterator", "Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "lineSequence", "Lkotlin/sequences/Sequence;", "lines", "", "matches", "orEmpty", "padEnd", "length", "padChar", "padStart", "rangesDelimitedBy", "delimiters", "", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "regionMatchesImpl", "thisOffset", "otherOffset", "removePrefix", "prefix", "removeRange", "range", "removeSuffix", "removeSurrounding", TtmlNode.RUBY_DELIMITER, "replace", "transform", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "replacement", "replaceAfter", "missingDelimiterValue", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceFirstChar", "replaceFirstCharWithChar", "replaceFirstCharWithCharSequence", "replaceRange", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "startsWith", "subSequence", TtmlNode.START, TtmlNode.END, "substring", "substringAfter", "substringAfterLast", "substringBefore", "substringBeforeLast", "toBooleanStrict", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "trim", "predicate", "trimEnd", "trimStart", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/text/StringsKt")
public class StringsKt__StringsKt extends t {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\t\u0010\u0004\u001a\u00020\u0005H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"kotlin/text/StringsKt__StringsKt$iterator$1", "Lkotlin/collections/CharIterator;", "index", "", "hasNext", "", "nextChar", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class a extends CharIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15810a;
        final /* synthetic */ CharSequence b;

        a(CharSequence charSequence) {
            this.b = charSequence;
        }

        @Override // kotlin.collections.CharIterator
        public char e() {
            CharSequence charSequence = this.b;
            int i = this.f15810a;
            this.f15810a = i + 1;
            return charSequence.charAt(i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15810a < this.b.length();
        }
    }

    public static /* synthetic */ String A0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return y0(str, str2, str3);
    }

    public static final String B0(String substringAfterLast, char c, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringAfterLast, "$this$substringAfterLast");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iY = Y(substringAfterLast, c, 0, false, 6, null);
        if (iY == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfterLast.substring(iY + 1, substringAfterLast.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String C0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return B0(str, c, str2);
    }

    public static final boolean D(CharSequence contains, char c, boolean z) {
        kotlin.jvm.internal.r.e(contains, "$this$contains");
        return S(contains, c, 0, z, 2, null) >= 0;
    }

    public static final String D0(String substringBefore, char c, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringBefore, "$this$substringBefore");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iS = S(substringBefore, c, 0, false, 6, null);
        if (iS == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBefore.substring(0, iS);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static boolean E(CharSequence contains, CharSequence other, boolean z) {
        kotlin.jvm.internal.r.e(contains, "$this$contains");
        kotlin.jvm.internal.r.e(other, "other");
        if (other instanceof String) {
            if (T(contains, (String) other, 0, z, 2, null) >= 0) {
                return true;
            }
        } else if (R(contains, other, 0, contains.length(), z, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static final String E0(String substringBefore, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringBefore, "$this$substringBefore");
        kotlin.jvm.internal.r.e(delimiter, "delimiter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iT = T(substringBefore, delimiter, 0, false, 6, null);
        if (iT == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBefore.substring(0, iT);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ boolean F(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return D(charSequence, c, z);
    }

    public static /* synthetic */ String F0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return D0(str, c, str2);
    }

    public static /* synthetic */ boolean G(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return E(charSequence, charSequence2, z);
    }

    public static /* synthetic */ String G0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return E0(str, str2, str3);
    }

    public static final boolean H(CharSequence endsWith, char c, boolean z) {
        kotlin.jvm.internal.r.e(endsWith, "$this$endsWith");
        return endsWith.length() > 0 && c.d(endsWith.charAt(N(endsWith)), c, z);
    }

    public static String H0(String substringBeforeLast, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringBeforeLast, "$this$substringBeforeLast");
        kotlin.jvm.internal.r.e(delimiter, "delimiter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iZ = Z(substringBeforeLast, delimiter, 0, false, 6, null);
        if (iZ == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBeforeLast.substring(0, iZ);
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final boolean I(CharSequence endsWith, CharSequence suffix, boolean z) {
        kotlin.jvm.internal.r.e(endsWith, "$this$endsWith");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return (!z && (endsWith instanceof String) && (suffix instanceof String)) ? t.o((String) endsWith, (String) suffix, false, 2, null) : h0(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), z);
    }

    public static /* synthetic */ String I0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return H0(str, str2, str3);
    }

    public static /* synthetic */ boolean J(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return H(charSequence, c, z);
    }

    public static CharSequence J0(CharSequence trim) {
        kotlin.jvm.internal.r.e(trim, "$this$trim");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zC = b.c(trim.charAt(!z ? i : length));
            if (z) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    public static /* synthetic */ boolean K(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return I(charSequence, charSequence2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair<Integer, String> L(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object next;
        String str;
        Object next2;
        String str2;
        if (!z && collection.size() == 1) {
            String str3 = (String) kotlin.collections.s.B0(collection);
            int iT = !z2 ? T(charSequence, str3, i, false, 4, null) : Z(charSequence, str3, i, false, 4, null);
            if (iT < 0) {
                return null;
            }
            return kotlin.l.a(Integer.valueOf(iT), str3);
        }
        IntProgression intRange = !z2 ? new IntRange(kotlin.ranges.f.b(i, 0), charSequence.length()) : kotlin.ranges.f.i(kotlin.ranges.f.e(i, N(charSequence)), 0);
        if (charSequence instanceof String) {
            int iA = intRange.getF14582a();
            int iF = intRange.getB();
            int i2 = intRange.getC();
            if (i2 < 0 ? iA >= iF : iA <= iF) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        str2 = (String) next2;
                    } while (!t.s(str2, 0, (String) charSequence, iA, str2.length(), z));
                    String str4 = (String) next2;
                    if (str4 != null) {
                        return kotlin.l.a(Integer.valueOf(iA), str4);
                    }
                    if (iA != iF) {
                        iA += i2;
                    }
                }
            }
        } else {
            int iA2 = intRange.getF14582a();
            int iF2 = intRange.getB();
            int i3 = intRange.getC();
            if (i3 < 0 ? iA2 >= iF2 : iA2 <= iF2) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        str = (String) next;
                    } while (!h0(str, 0, charSequence, iA2, str.length(), z));
                    String str5 = (String) next;
                    if (str5 != null) {
                        return kotlin.l.a(Integer.valueOf(iA2), str5);
                    }
                    if (iA2 != iF2) {
                        iA2 += i3;
                    }
                }
            }
        }
        return null;
    }

    public static IntRange M(CharSequence indices) {
        kotlin.jvm.internal.r.e(indices, "$this$indices");
        return new IntRange(0, indices.length() - 1);
    }

    public static int N(CharSequence lastIndex) {
        kotlin.jvm.internal.r.e(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    public static final int O(CharSequence indexOf, char c, int i, boolean z) {
        kotlin.jvm.internal.r.e(indexOf, "$this$indexOf");
        return (z || !(indexOf instanceof String)) ? U(indexOf, new char[]{c}, i, z) : ((String) indexOf).indexOf(c, i);
    }

    public static final int P(CharSequence indexOf, String string, int i, boolean z) {
        kotlin.jvm.internal.r.e(indexOf, "$this$indexOf");
        kotlin.jvm.internal.r.e(string, "string");
        return (z || !(indexOf instanceof String)) ? R(indexOf, string, i, indexOf.length(), z, false, 16, null) : ((String) indexOf).indexOf(string, i);
    }

    private static final int Q(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intRange = !z2 ? new IntRange(kotlin.ranges.f.b(i, 0), kotlin.ranges.f.e(i2, charSequence.length())) : kotlin.ranges.f.i(kotlin.ranges.f.e(i, N(charSequence)), kotlin.ranges.f.b(i2, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iA = intRange.getF14582a();
            int iF = intRange.getB();
            int i3 = intRange.getC();
            if (i3 >= 0) {
                if (iA > iF) {
                    return -1;
                }
            } else if (iA < iF) {
                return -1;
            }
            while (!t.s((String) charSequence2, 0, (String) charSequence, iA, charSequence2.length(), z)) {
                if (iA == iF) {
                    return -1;
                }
                iA += i3;
            }
            return iA;
        }
        int iA2 = intRange.getF14582a();
        int iF2 = intRange.getB();
        int i4 = intRange.getC();
        if (i4 >= 0) {
            if (iA2 > iF2) {
                return -1;
            }
        } else if (iA2 < iF2) {
            return -1;
        }
        while (!h0(charSequence2, 0, charSequence, iA2, charSequence2.length(), z)) {
            if (iA2 == iF2) {
                return -1;
            }
            iA2 += i4;
        }
        return iA2;
    }

    static /* synthetic */ int R(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        return Q(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    public static /* synthetic */ int S(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return O(charSequence, c, i, z);
    }

    public static /* synthetic */ int T(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return P(charSequence, str, i, z);
    }

    public static final int U(CharSequence indexOfAny, char[] chars, int i, boolean z) {
        boolean z2;
        kotlin.jvm.internal.r.e(indexOfAny, "$this$indexOfAny");
        kotlin.jvm.internal.r.e(chars, "chars");
        if (!z && chars.length == 1 && (indexOfAny instanceof String)) {
            return ((String) indexOfAny).indexOf(ArraysKt___ArraysKt.T(chars), i);
        }
        int iB = kotlin.ranges.f.b(i, 0);
        int iN = N(indexOfAny);
        if (iB > iN) {
            return -1;
        }
        while (true) {
            char cCharAt = indexOfAny.charAt(iB);
            int length = chars.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                }
                if (c.d(chars[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return iB;
            }
            if (iB == iN) {
                return -1;
            }
            iB++;
        }
    }

    public static final CharIterator V(CharSequence iterator) {
        kotlin.jvm.internal.r.e(iterator, "$this$iterator");
        return new a(iterator);
    }

    public static final int W(CharSequence lastIndexOf, char c, int i, boolean z) {
        kotlin.jvm.internal.r.e(lastIndexOf, "$this$lastIndexOf");
        return (z || !(lastIndexOf instanceof String)) ? a0(lastIndexOf, new char[]{c}, i, z) : ((String) lastIndexOf).lastIndexOf(c, i);
    }

    public static final int X(CharSequence lastIndexOf, String string, int i, boolean z) {
        kotlin.jvm.internal.r.e(lastIndexOf, "$this$lastIndexOf");
        kotlin.jvm.internal.r.e(string, "string");
        return (z || !(lastIndexOf instanceof String)) ? Q(lastIndexOf, string, i, 0, z, true) : ((String) lastIndexOf).lastIndexOf(string, i);
    }

    public static /* synthetic */ int Y(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = N(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return W(charSequence, c, i, z);
    }

    public static /* synthetic */ int Z(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = N(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return X(charSequence, str, i, z);
    }

    public static final int a0(CharSequence lastIndexOfAny, char[] chars, int i, boolean z) {
        kotlin.jvm.internal.r.e(lastIndexOfAny, "$this$lastIndexOfAny");
        kotlin.jvm.internal.r.e(chars, "chars");
        if (!z && chars.length == 1 && (lastIndexOfAny instanceof String)) {
            return ((String) lastIndexOfAny).lastIndexOf(ArraysKt___ArraysKt.T(chars), i);
        }
        for (int iE = kotlin.ranges.f.e(i, N(lastIndexOfAny)); iE >= 0; iE--) {
            char cCharAt = lastIndexOfAny.charAt(iE);
            boolean z2 = false;
            for (char c : chars) {
                if (c.d(c, cCharAt, z)) {
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                return iE;
            }
        }
        return -1;
    }

    public static final Sequence<String> b0(CharSequence lineSequence) {
        kotlin.jvm.internal.r.e(lineSequence, "$this$lineSequence");
        return r0(lineSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static final List<String> c0(CharSequence lines) {
        kotlin.jvm.internal.r.e(lines, "$this$lines");
        return SequencesKt___SequencesKt.A(b0(lines));
    }

    public static final CharSequence d0(CharSequence padStart, int i, char c) {
        kotlin.jvm.internal.r.e(padStart, "$this$padStart");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        }
        if (i <= padStart.length()) {
            return padStart.subSequence(0, padStart.length());
        }
        StringBuilder sb = new StringBuilder(i);
        int length = i - padStart.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        sb.append(padStart);
        return sb;
    }

    public static String e0(String padStart, int i, char c) {
        kotlin.jvm.internal.r.e(padStart, "$this$padStart");
        return d0(padStart, i, c).toString();
    }

    private static final Sequence<IntRange> f0(CharSequence charSequence, String[] strArr, int i, final boolean z, int i2) {
        m0(i2);
        final List listC = kotlin.collections.n.c(strArr);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                return invoke(charSequence2, num.intValue());
            }

            public final Pair<Integer, Integer> invoke(CharSequence receiver, int i3) {
                kotlin.jvm.internal.r.e(receiver, "$receiver");
                Pair pairL = StringsKt__StringsKt.L(receiver, listC, i3, z, false);
                if (pairL != null) {
                    return kotlin.l.a(pairL.getFirst(), Integer.valueOf(((String) pairL.getSecond()).length()));
                }
                return null;
            }
        });
    }

    static /* synthetic */ Sequence g0(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return f0(charSequence, strArr, i, z, i2);
    }

    public static final boolean h0(CharSequence regionMatchesImpl, int i, CharSequence other, int i2, int i3, boolean z) {
        kotlin.jvm.internal.r.e(regionMatchesImpl, "$this$regionMatchesImpl");
        kotlin.jvm.internal.r.e(other, "other");
        if (i2 < 0 || i < 0 || i > regionMatchesImpl.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!c.d(regionMatchesImpl.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String i0(String removePrefix, CharSequence prefix) {
        kotlin.jvm.internal.r.e(removePrefix, "$this$removePrefix");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        if (!v0(removePrefix, prefix, false, 2, null)) {
            return removePrefix;
        }
        String strSubstring = removePrefix.substring(prefix.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static CharSequence j0(CharSequence removeSuffix, CharSequence suffix) {
        kotlin.jvm.internal.r.e(removeSuffix, "$this$removeSuffix");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return K(removeSuffix, suffix, false, 2, null) ? removeSuffix.subSequence(0, removeSuffix.length() - suffix.length()) : removeSuffix.subSequence(0, removeSuffix.length());
    }

    public static String k0(String removeSuffix, CharSequence suffix) {
        kotlin.jvm.internal.r.e(removeSuffix, "$this$removeSuffix");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        if (!K(removeSuffix, suffix, false, 2, null)) {
            return removeSuffix;
        }
        String strSubstring = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final CharSequence l0(CharSequence replaceRange, int i, int i2, CharSequence replacement) {
        kotlin.jvm.internal.r.e(replaceRange, "$this$replaceRange");
        kotlin.jvm.internal.r.e(replacement, "replacement");
        if (i2 >= i) {
            StringBuilder sb = new StringBuilder();
            sb.append(replaceRange, 0, i);
            kotlin.jvm.internal.r.d(sb, "this.append(value, startIndex, endIndex)");
            sb.append(replacement);
            sb.append(replaceRange, i2, replaceRange.length());
            kotlin.jvm.internal.r.d(sb, "this.append(value, startIndex, endIndex)");
            return sb;
        }
        throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
    }

    public static final void m0(int i) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i).toString());
    }

    public static final List<String> n0(CharSequence split, String[] delimiters, boolean z, int i) {
        kotlin.jvm.internal.r.e(split, "$this$split");
        kotlin.jvm.internal.r.e(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (!(str.length() == 0)) {
                return o0(split, str, z, i);
            }
        }
        Iterable iterableL = SequencesKt___SequencesKt.l(g0(split, delimiters, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(iterableL, 10));
        Iterator it = iterableL.iterator();
        while (it.hasNext()) {
            arrayList.add(w0(split, (IntRange) it.next()));
        }
        return arrayList;
    }

    private static final List<String> o0(CharSequence charSequence, String str, boolean z, int i) {
        m0(i);
        int length = 0;
        int iP = P(charSequence, str, 0, z);
        if (iP == -1 || i == 1) {
            return kotlin.collections.t.d(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? kotlin.ranges.f.e(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iP).toString());
            length = str.length() + iP;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iP = P(charSequence, str, length, z);
        } while (iP != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ List p0(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return n0(charSequence, strArr, z, i);
    }

    public static final Sequence<String> q0(final CharSequence splitToSequence, String[] delimiters, boolean z, int i) {
        kotlin.jvm.internal.r.e(splitToSequence, "$this$splitToSequence");
        kotlin.jvm.internal.r.e(delimiters, "delimiters");
        return SequencesKt___SequencesKt.u(g0(splitToSequence, delimiters, 0, z, i, 2, null), new Function1<IntRange, String>() { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(IntRange it) {
                kotlin.jvm.internal.r.e(it, "it");
                return StringsKt__StringsKt.w0(splitToSequence, it);
            }
        });
    }

    public static /* synthetic */ Sequence r0(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return q0(charSequence, strArr, z, i);
    }

    public static final boolean s0(CharSequence startsWith, char c, boolean z) {
        kotlin.jvm.internal.r.e(startsWith, "$this$startsWith");
        return startsWith.length() > 0 && c.d(startsWith.charAt(0), c, z);
    }

    public static final boolean t0(CharSequence startsWith, CharSequence prefix, boolean z) {
        kotlin.jvm.internal.r.e(startsWith, "$this$startsWith");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return (!z && (startsWith instanceof String) && (prefix instanceof String)) ? t.B((String) startsWith, (String) prefix, false, 2, null) : h0(startsWith, 0, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ boolean u0(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return s0(charSequence, c, z);
    }

    public static /* synthetic */ boolean v0(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return t0(charSequence, charSequence2, z);
    }

    public static final String w0(CharSequence substring, IntRange range) {
        kotlin.jvm.internal.r.e(substring, "$this$substring");
        kotlin.jvm.internal.r.e(range, "range");
        return substring.subSequence(range.o().intValue(), range.n().intValue() + 1).toString();
    }

    public static final String x0(String substringAfter, char c, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringAfter, "$this$substringAfter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iS = S(substringAfter, c, 0, false, 6, null);
        if (iS == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfter.substring(iS + 1, substringAfter.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String y0(String substringAfter, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(substringAfter, "$this$substringAfter");
        kotlin.jvm.internal.r.e(delimiter, "delimiter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iT = T(substringAfter, delimiter, 0, false, 6, null);
        if (iT == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfter.substring(iT + delimiter.length(), substringAfter.length());
        kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String z0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return x0(str, c, str2);
    }
}
