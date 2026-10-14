package kotlin.collections.builders;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: renamed from: kotlin.collections.b1.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 v*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0006vwxyz{B\u0007\b\u0016¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007BE\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000¢\u0006\u0004\b0\u00101J\u0013\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0002¢\u0006\u0002\u00103J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105J\r\u00106\u001a\u000207H\u0000¢\u0006\u0002\b8J\b\u00109\u001a\u000207H\u0016J\b\u0010:\u001a\u000207H\u0002J\u0019\u0010;\u001a\u00020\u001f2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=H\u0000¢\u0006\u0002\b>J!\u0010?\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000¢\u0006\u0002\bBJ\u0015\u0010C\u001a\u00020\u001f2\u0006\u0010/\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010DJ\u0018\u0010G\u001a\u00020\u001f2\u000e\u0010H\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000305H\u0002J\u0010\u0010I\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010K\u001a\u00020\u0006H\u0002J\u0019\u0010L\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010MH\u0000¢\u0006\u0002\bNJ\u0013\u0010O\u001a\u00020\u001f2\b\u0010H\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0015\u0010Q\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002¢\u0006\u0002\u00101J\u0015\u0010R\u001a\u00020\u00062\u0006\u0010F\u001a\u00028\u0001H\u0002¢\u0006\u0002\u00101J\u0018\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002¢\u0006\u0002\u00101J\b\u0010V\u001a\u00020\u0006H\u0016J\b\u0010W\u001a\u00020\u001fH\u0016J\u0019\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010YH\u0000¢\u0006\u0002\bZJ\u001f\u0010[\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u00002\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\\J\u001e\u0010]\u001a\u0002072\u0014\u0010^\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105H\u0016J\"\u0010_\u001a\u00020\u001f2\u0018\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010A0=H\u0002J\u001c\u0010`\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0002J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u0006H\u0002J\u0010\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u0006H\u0002J\u0017\u0010e\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010TJ!\u0010f\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000¢\u0006\u0002\bgJ\u0010\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020\u0006H\u0002J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000¢\u0006\u0004\bk\u00101J\u0010\u0010l\u001a\u0002072\u0006\u0010m\u001a\u00020\u0006H\u0002J\u0017\u0010n\u001a\u00020\u001f2\u0006\u0010o\u001a\u00028\u0001H\u0000¢\u0006\u0004\bp\u0010DJ\b\u0010q\u001a\u00020rH\u0016J\u0019\u0010s\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010tH\u0000¢\u0006\u0002\buR\u0014\u0010\u0011\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00160\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0013R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "()V", "initialCapacity", "", "(I)V", "keysArray", "", "valuesArray", "presenceArray", "", "hashArray", "maxProbeDistance", "length", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "capacity", "getCapacity", "()I", "entries", "", "", "getEntries", "()Ljava/util/Set;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "hashShift", "hashSize", "getHashSize", "isReadOnly", "", "keys", "getKeys", "[Ljava/lang/Object;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "<set-?>", "size", "getSize", "values", "", "getValues", "()Ljava/util/Collection;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "addKey", "key", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "allocateValuesArray", "()[Ljava/lang/Object;", "build", "", "checkIsMutable", "", "checkIsMutable$kotlin_stdlib", "clear", "compact", "containsAllEntries", "m", "", "containsAllEntries$kotlin_stdlib", "containsEntry", "entry", "", "containsEntry$kotlin_stdlib", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "value", "contentEquals", "other", "ensureCapacity", "ensureExtraCapacity", "n", "entriesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "equals", "", "findKey", "findValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hash", "hashCode", "isEmpty", "keysIterator", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "from", "putAllEntries", "putEntry", "putRehash", "i", "rehash", "newHashSize", "remove", "removeEntry", "removeEntry$kotlin_stdlib", "removeHashAt", "removedHash", "removeKey", "removeKey$kotlin_stdlib", "removeKeyAt", "index", "removeValue", "element", "removeValue$kotlin_stdlib", "toString", "", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final class MapBuilder<K, V> implements Map<K, V>, Object {
    private static final a m = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14599a;
    private int b;
    private MapBuilderKeys<K> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MapBuilderValues<V> f14600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MapBuilderEntries<K, V> f14601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private K[] f14603g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private V[] f14604h;
    private int[] i;
    private int[] j;
    private int k;
    private int l;

    /* JADX INFO: renamed from: kotlin.collections.b1.d$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "()V", "INITIAL_CAPACITY", "", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "computeHashSize", "capacity", "computeShift", "hashSize", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static final class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(int i) {
            return Integer.highestOneBit(kotlin.ranges.f.b(i, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(int i) {
            return Integer.numberOfLeadingZeros(i) + 1;
        }

        public /* synthetic */ a(o oVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.b1.d$b */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ\r\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class b<K, V> extends d<K, V> implements Iterator<Map.Entry<K, V>>, Object {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(MapBuilder<K, V> map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public c<K, V> next() {
            if (getF14606a() >= ((MapBuilder) f()).l) {
                throw new NoSuchElementException();
            }
            int f14606a = getF14606a();
            i(f14606a + 1);
            j(f14606a);
            c<K, V> cVar = new c<>(f(), getB());
            g();
            return cVar;
        }

        public final void l(StringBuilder sb) {
            r.e(sb, "sb");
            if (getF14606a() >= ((MapBuilder) f()).l) {
                throw new NoSuchElementException();
            }
            int f14606a = getF14606a();
            i(f14606a + 1);
            j(f14606a);
            Object obj = ((MapBuilder) f()).f14603g[getB()];
            if (r.a(obj, f())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = ((MapBuilder) f()).f14604h;
            r.c(objArr);
            Object obj2 = objArr[getB()];
            if (r.a(obj2, f())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            g();
        }

        public final int m() {
            if (getF14606a() >= ((MapBuilder) f()).l) {
                throw new NoSuchElementException();
            }
            int f14606a = getF14606a();
            i(f14606a + 1);
            j(f14606a);
            Object obj = ((MapBuilder) f()).f14603g[getB()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = ((MapBuilder) f()).f14604h;
            r.c(objArr);
            Object obj2 = objArr[getB()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            g();
            return iHashCode2;
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.b1.d$c */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B!\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0015\u0010\u0013\u001a\u00028\u00032\u0006\u0010\u0014\u001a\u00028\u0003H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "map", "Lkotlin/collections/builders/MapBuilder;", "index", "", "(Lkotlin/collections/builders/MapBuilder;I)V", "key", "getKey", "()Ljava/lang/Object;", "value", "getValue", "equals", "", "other", "", "hashCode", "setValue", "newValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class c<K, V> implements Map.Entry<K, V>, Object {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MapBuilder<K, V> f14605a;
        private final int b;

        public c(MapBuilder<K, V> map, int i) {
            r.e(map, "map");
            this.f14605a = map;
            this.b = i;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object other) {
            if (other instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) other;
                if (r.a(entry.getKey(), getKey()) && r.a(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((MapBuilder) this.f14605a).f14603g[this.b];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((MapBuilder) this.f14605a).f14604h;
            r.c(objArr);
            return (V) objArr[this.b];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V newValue) {
            this.f14605a.m();
            Object[] objArrK = this.f14605a.k();
            int i = this.b;
            V v = (V) objArrK[i];
            objArrK[i] = newValue;
            return v;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.b1.d$d */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "index", "", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "lastIndex", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "hasNext", "", "initNext", "", "initNext$kotlin_stdlib", "remove", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static class d<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f14606a;
        private int b;
        private final MapBuilder<K, V> c;

        public d(MapBuilder<K, V> map) {
            r.e(map, "map");
            this.c = map;
            this.b = -1;
            g();
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getF14606a() {
            return this.f14606a;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final int getB() {
            return this.b;
        }

        public final MapBuilder<K, V> f() {
            return this.c;
        }

        public final void g() {
            while (this.f14606a < ((MapBuilder) this.c).l) {
                int[] iArr = ((MapBuilder) this.c).i;
                int i = this.f14606a;
                if (iArr[i] >= 0) {
                    return;
                } else {
                    this.f14606a = i + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.f14606a < ((MapBuilder) this.c).l;
        }

        public final void i(int i) {
            this.f14606a = i;
        }

        public final void j(int i) {
            this.b = i;
        }

        public final void remove() {
            if (!(this.b != -1)) {
                throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
            }
            this.c.m();
            this.c.L(this.b);
            this.b = -1;
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.b1.d$e */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class e<K, V> extends d<K, V> implements Iterator<K>, Object {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(MapBuilder<K, V> map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (getF14606a() >= ((MapBuilder) f()).l) {
                throw new NoSuchElementException();
            }
            int f14606a = getF14606a();
            i(f14606a + 1);
            j(f14606a);
            K k = (K) ((MapBuilder) f()).f14603g[getB()];
            g();
            return k;
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.b1.d$f */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class f<K, V> extends d<K, V> implements Iterator<V>, Object {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(MapBuilder<K, V> map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (getF14606a() >= ((MapBuilder) f()).l) {
                throw new NoSuchElementException();
            }
            int f14606a = getF14606a();
            i(f14606a + 1);
            j(f14606a);
            Object[] objArr = ((MapBuilder) f()).f14604h;
            r.c(objArr);
            V v = (V) objArr[getB()];
            g();
            return v;
        }
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.f14603g = kArr;
        this.f14604h = vArr;
        this.i = iArr;
        this.j = iArr2;
        this.k = i;
        this.l = i2;
        this.f14599a = m.d(y());
    }

    private final int C(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.f14599a;
    }

    private final boolean E(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z = false;
        if (collection.isEmpty()) {
            return false;
        }
        s(collection.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = collection.iterator();
        while (it.hasNext()) {
            if (F(it.next())) {
                z = true;
            }
        }
        return z;
    }

    private final boolean F(Map.Entry<? extends K, ? extends V> entry) {
        int iJ = j(entry.getKey());
        V[] vArrK = k();
        if (iJ >= 0) {
            vArrK[iJ] = entry.getValue();
            return true;
        }
        int i = (-iJ) - 1;
        if (!(!r.a(entry.getValue(), vArrK[i]))) {
            return false;
        }
        vArrK[i] = entry.getValue();
        return true;
    }

    private final boolean G(int i) {
        int iC = C(this.f14603g[i]);
        int i2 = this.k;
        while (true) {
            int[] iArr = this.j;
            if (iArr[iC] == 0) {
                iArr[iC] = i + 1;
                this.i[i] = iC;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            iC = iC == 0 ? y() - 1 : iC - 1;
        }
    }

    private final void H(int i) {
        if (this.l > size()) {
            n();
        }
        int i2 = 0;
        if (i != y()) {
            this.j = new int[i];
            this.f14599a = m.d(i);
        } else {
            n.h(this.j, 0, 0, y());
        }
        while (i2 < this.l) {
            int i3 = i2 + 1;
            if (!G(i2)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i2 = i3;
        }
    }

    private final void J(int i) {
        int iE = kotlin.ranges.f.e(this.k * 2, y() / 2);
        int i2 = 0;
        int i3 = i;
        do {
            i = i == 0 ? y() - 1 : i - 1;
            i2++;
            if (i2 > this.k) {
                this.j[i3] = 0;
                return;
            }
            int[] iArr = this.j;
            int i4 = iArr[i];
            if (i4 == 0) {
                iArr[i3] = 0;
                return;
            }
            if (i4 < 0) {
                iArr[i3] = -1;
            } else {
                int i5 = i4 - 1;
                if (((C(this.f14603g[i5]) - i) & (y() - 1)) >= i2) {
                    this.j[i3] = i4;
                    this.i[i5] = i3;
                }
                iE--;
            }
            i3 = i;
            i2 = 0;
            iE--;
        } while (iE >= 0);
        this.j[i3] = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(int i) {
        kotlin.collections.builders.c.f(this.f14603g, i);
        J(this.i[i]);
        this.i[i] = -1;
        this.b = size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] k() {
        V[] vArr = this.f14604h;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) kotlin.collections.builders.c.d(w());
        this.f14604h = vArr2;
        return vArr2;
    }

    private final void n() {
        int i;
        V[] vArr = this.f14604h;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            if (this.i[i2] >= 0) {
                K[] kArr = this.f14603g;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                i3++;
            }
            i2++;
        }
        kotlin.collections.builders.c.g(this.f14603g, i3, i);
        if (vArr != null) {
            kotlin.collections.builders.c.g(vArr, i3, this.l);
        }
        this.l = i3;
    }

    private final boolean q(Map<?, ?> map) {
        return size() == map.size() && o(map.entrySet());
    }

    private final void r(int i) {
        if (i <= w()) {
            if ((this.l + i) - size() > w()) {
                H(y());
                return;
            }
            return;
        }
        int iW = (w() * 3) / 2;
        if (i <= iW) {
            i = iW;
        }
        this.f14603g = (K[]) kotlin.collections.builders.c.e(this.f14603g, i);
        V[] vArr = this.f14604h;
        this.f14604h = vArr != null ? (V[]) kotlin.collections.builders.c.e(vArr, i) : null;
        int[] iArrCopyOf = Arrays.copyOf(this.i, i);
        r.d(iArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        this.i = iArrCopyOf;
        int iC = m.c(i);
        if (iC > y()) {
            H(iC);
        }
    }

    private final void s(int i) {
        r(this.l + i);
    }

    private final int u(K k) {
        int iC = C(k);
        int i = this.k;
        while (true) {
            int i2 = this.j[iC];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (r.a(this.f14603g[i3], k)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iC = iC == 0 ? y() - 1 : iC - 1;
        }
    }

    private final int v(V v) {
        int i = this.l;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.i[i] >= 0) {
                V[] vArr = this.f14604h;
                r.c(vArr);
                if (r.a(vArr[i], v)) {
                    return i;
                }
            }
        }
    }

    private final int w() {
        return this.f14603g.length;
    }

    private final int y() {
        return this.j.length;
    }

    /* JADX INFO: renamed from: A, reason: from getter */
    public int getB() {
        return this.b;
    }

    public Collection<V> B() {
        MapBuilderValues<V> mapBuilderValues = this.f14600d;
        if (mapBuilderValues != null) {
            return mapBuilderValues;
        }
        MapBuilderValues<V> mapBuilderValues2 = new MapBuilderValues<>(this);
        this.f14600d = mapBuilderValues2;
        return mapBuilderValues2;
    }

    public final e<K, V> D() {
        return new e<>(this);
    }

    public final boolean I(Map.Entry<? extends K, ? extends V> entry) {
        r.e(entry, "entry");
        m();
        int iU = u(entry.getKey());
        if (iU < 0) {
            return false;
        }
        V[] vArr = this.f14604h;
        r.c(vArr);
        if (!r.a(vArr[iU], entry.getValue())) {
            return false;
        }
        L(iU);
        return true;
    }

    public final int K(K k) {
        m();
        int iU = u(k);
        if (iU < 0) {
            return -1;
        }
        L(iU);
        return iU;
    }

    public final boolean M(V v) {
        m();
        int iV = v(v);
        if (iV < 0) {
            return false;
        }
        L(iV);
        return true;
    }

    public final f<K, V> N() {
        return new f<>(this);
    }

    @Override // java.util.Map
    public void clear() {
        m();
        int i = this.l - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.i;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.j[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        kotlin.collections.builders.c.g(this.f14603g, 0, this.l);
        V[] vArr = this.f14604h;
        if (vArr != null) {
            kotlin.collections.builders.c.g(vArr, 0, this.l);
        }
        this.b = 0;
        this.l = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return u(key) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return v(value) >= 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return x();
    }

    @Override // java.util.Map
    public boolean equals(Object other) {
        return other == this || ((other instanceof Map) && q((Map) other));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object key) {
        int iU = u(key);
        if (iU < 0) {
            return null;
        }
        V[] vArr = this.f14604h;
        r.c(vArr);
        return vArr[iU];
    }

    @Override // java.util.Map
    public int hashCode() {
        b<K, V> bVarT = t();
        int iM = 0;
        while (bVarT.hasNext()) {
            iM += bVarT.m();
        }
        return iM;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public final int j(K k) {
        m();
        while (true) {
            int iC = C(k);
            int iE = kotlin.ranges.f.e(this.k * 2, y() / 2);
            int i = 0;
            while (true) {
                int i2 = this.j[iC];
                if (i2 <= 0) {
                    if (this.l >= w()) {
                        s(1);
                        break;
                    }
                    int i3 = this.l;
                    int i4 = i3 + 1;
                    this.l = i4;
                    this.f14603g[i3] = k;
                    this.i[i3] = iC;
                    this.j[iC] = i4;
                    this.b = size() + 1;
                    if (i > this.k) {
                        this.k = i;
                    }
                    return i3;
                }
                if (r.a(this.f14603g[i2 - 1], k)) {
                    return -i2;
                }
                i++;
                if (i > iE) {
                    H(y() * 2);
                    break;
                }
                iC = iC == 0 ? y() - 1 : iC - 1;
            }
        }
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return z();
    }

    public final Map<K, V> l() {
        m();
        this.f14602f = true;
        return this;
    }

    public final void m() {
        if (this.f14602f) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean o(Collection<?> m2) {
        r.e(m2, "m");
        for (Object obj : m2) {
            if (obj != null) {
                try {
                    if (!p((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean p(Map.Entry<? extends K, ? extends V> entry) {
        r.e(entry, "entry");
        int iU = u(entry.getKey());
        if (iU < 0) {
            return false;
        }
        V[] vArr = this.f14604h;
        r.c(vArr);
        return r.a(vArr[iU], entry.getValue());
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        m();
        int iJ = j(key);
        V[] vArrK = k();
        if (iJ >= 0) {
            vArrK[iJ] = value;
            return null;
        }
        int i = (-iJ) - 1;
        V v = vArrK[i];
        vArrK[i] = value;
        return v;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> from) {
        r.e(from, "from");
        m();
        E(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V remove(Object key) {
        int iK = K(key);
        if (iK < 0) {
            return null;
        }
        V[] vArr = this.f14604h;
        r.c(vArr);
        V v = vArr[iK];
        kotlin.collections.builders.c.f(vArr, iK);
        return v;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getB();
    }

    public final b<K, V> t() {
        return new b<>(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append(VectorFormat.DEFAULT_PREFIX);
        b<K, V> bVarT = t();
        int i = 0;
        while (bVarT.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            bVarT.l(sb);
            i++;
        }
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        String string = sb.toString();
        r.d(string, "sb.toString()");
        return string;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return B();
    }

    public Set<Map.Entry<K, V>> x() {
        MapBuilderEntries<K, V> mapBuilderEntries = this.f14601e;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries<K, V> mapBuilderEntries2 = new MapBuilderEntries<>(this);
        this.f14601e = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    public Set<K> z() {
        MapBuilderKeys<K> mapBuilderKeys = this.c;
        if (mapBuilderKeys != null) {
            return mapBuilderKeys;
        }
        MapBuilderKeys<K> mapBuilderKeys2 = new MapBuilderKeys<>(this);
        this.c = mapBuilderKeys2;
        return mapBuilderKeys2;
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i) {
        this(kotlin.collections.builders.c.d(i), null, new int[i], new int[m.c(i)], 2, 0);
    }
}
