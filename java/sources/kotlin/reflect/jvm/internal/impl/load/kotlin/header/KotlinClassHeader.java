package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.n;
import kotlin.collections.n0;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.ranges.f;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e;

/* JADX INFO: loaded from: classes6.dex */
public final class KotlinClassHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Kind f15218a;
    private final e b;
    private final String[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f15219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f15220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f15221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f15222g;

    public enum Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);

        public static final a Companion = new a(null);
        private static final Map<Integer, Kind> entryById;
        private final int id;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(o oVar) {
                this();
            }

            public final Kind a(int i) {
                Kind kind = (Kind) Kind.entryById.get(Integer.valueOf(i));
                return kind == null ? Kind.UNKNOWN : kind;
            }
        }

        static {
            Kind[] kindArrValues = values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(f.b(n0.d(kindArrValues.length), 16));
            for (Kind kind : kindArrValues) {
                linkedHashMap.put(Integer.valueOf(kind.getId()), kind);
            }
            entryById = linkedHashMap;
        }

        Kind(int i) {
            this.id = i;
        }

        public static final Kind getById(int i) {
            return Companion.a(i);
        }

        public final int getId() {
            return this.id;
        }
    }

    public KotlinClassHeader(Kind kind, e metadataVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2) {
        r.e(kind, "kind");
        r.e(metadataVersion, "metadataVersion");
        this.f15218a = kind;
        this.b = metadataVersion;
        this.c = strArr;
        this.f15219d = strArr2;
        this.f15220e = strArr3;
        this.f15221f = str;
        this.f15222g = i;
    }

    private final boolean h(int i, int i2) {
        return (i & i2) != 0;
    }

    public final String[] a() {
        return this.c;
    }

    public final String[] b() {
        return this.f15219d;
    }

    public final Kind c() {
        return this.f15218a;
    }

    public final e d() {
        return this.b;
    }

    public final String e() {
        String str = this.f15221f;
        if (c() == Kind.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    public final List<String> f() {
        String[] strArr = this.c;
        if (!(c() == Kind.MULTIFILE_CLASS)) {
            strArr = null;
        }
        List<String> listC = strArr != null ? n.c(strArr) : null;
        return listC != null ? listC : u.j();
    }

    public final String[] g() {
        return this.f15220e;
    }

    public final boolean i() {
        return h(this.f15222g, 2);
    }

    public final boolean j() {
        return h(this.f15222g, 64) && !h(this.f15222g, 32);
    }

    public final boolean k() {
        return h(this.f15222g, 16) && !h(this.f15222g, 32);
    }

    public String toString() {
        return this.f15218a + " version=" + this.b;
    }
}
