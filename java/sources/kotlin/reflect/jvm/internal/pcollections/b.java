package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: loaded from: classes6.dex */
public final class b<K, V> {
    private static final b<Object, Object> c = new b<>(d.a(), 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<a<MapEntry<K, V>>> f15764a;
    private final int b;

    private b(d<a<MapEntry<K, V>>> dVar, int i) {
        this.f15764a = dVar;
        this.b = i;
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[2];
        objArr[0] = "kotlin/reflect/jvm/internal/pcollections/HashPMap";
        if (i != 1) {
            objArr[1] = "empty";
        } else {
            objArr[1] = "minus";
        }
        throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", objArr));
    }

    public static <K, V> b<K, V> b() {
        b<K, V> bVar = (b<K, V>) c;
        if (bVar != null) {
            return bVar;
        }
        a(0);
        throw null;
    }

    private a<MapEntry<K, V>> d(int i) {
        a<MapEntry<K, V>> aVarB = this.f15764a.b(i);
        return aVarB == null ? a.b() : aVarB;
    }

    private static <K, V> int e(a<MapEntry<K, V>> aVar, Object obj) {
        int i = 0;
        while (aVar != null && aVar.size() > 0) {
            if (aVar.f15762a.key.equals(obj)) {
                return i;
            }
            aVar = aVar.b;
            i++;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V c(Object obj) {
        for (a aVarD = d(obj.hashCode()); aVarD != null && aVarD.size() > 0; aVarD = aVarD.b) {
            MapEntry mapEntry = (MapEntry) aVarD.f15762a;
            if (mapEntry.key.equals(obj)) {
                return mapEntry.value;
            }
        }
        return null;
    }

    public b<K, V> f(K k, V v) {
        a<MapEntry<K, V>> aVarD = d(k.hashCode());
        int size = aVarD.size();
        int iE = e(aVarD, k);
        if (iE != -1) {
            aVarD = aVarD.i(iE);
        }
        a<MapEntry<K, V>> aVarL = aVarD.l(new MapEntry<>(k, v));
        return new b<>(this.f15764a.c(k.hashCode(), aVarL), (this.b - size) + aVarL.size());
    }
}
