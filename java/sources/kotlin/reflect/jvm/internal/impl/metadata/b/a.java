package kotlin.reflect.jvm.internal.impl.metadata.b;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.v;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends kotlin.reflect.jvm.internal.impl.metadata.c.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0342a f15322f = new C0342a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f15323g = new a(1, 0, 7);

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.b.a$a, reason: collision with other inner class name */
    public static final class C0342a {
        private C0342a() {
        }

        public /* synthetic */ C0342a(o oVar) {
            this();
        }

        public final a a(InputStream stream) {
            r.e(stream, "stream");
            DataInputStream dataInputStream = new DataInputStream(stream);
            IntRange intRange = new IntRange(1, dataInputStream.readInt());
            ArrayList arrayList = new ArrayList(v.u(intRange, 10));
            Iterator<Integer> it = intRange.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).e();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int[] iArrL0 = CollectionsKt___CollectionsKt.L0(arrayList);
            return new a(Arrays.copyOf(iArrL0, iArrL0.length));
        }
    }

    static {
        new a(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int... numbers) {
        super(Arrays.copyOf(numbers, numbers.length));
        r.e(numbers, "numbers");
    }

    public boolean h() {
        return f(f15323g);
    }
}
