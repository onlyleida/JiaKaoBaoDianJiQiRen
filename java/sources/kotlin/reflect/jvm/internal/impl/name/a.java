package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    private static final f f15381e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f15382a;
    private final c b;
    private final f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f15383d;

    static {
        f fVarN = f.n("<local>");
        r.d(fVarN, "special(\"<local>\")");
        f15381e = fVarN;
        r.d(c.k(fVarN), "topLevel(LOCAL_NAME)");
    }

    public a(c packageName, c cVar, f callableName, c cVar2) {
        r.e(packageName, "packageName");
        r.e(callableName, "callableName");
        this.f15382a = packageName;
        this.b = cVar;
        this.c = callableName;
        this.f15383d = cVar2;
    }

    public final f a() {
        return this.c;
    }

    public final c b() {
        return this.b;
    }

    public final c c() {
        return this.f15382a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return r.a(this.f15382a, aVar.f15382a) && r.a(this.b, aVar.b) && r.a(this.c, aVar.c) && r.a(this.f15383d, aVar.f15383d);
    }

    public int hashCode() {
        int iHashCode = this.f15382a.hashCode() * 31;
        c cVar = this.b;
        int iHashCode2 = (((iHashCode + (cVar == null ? 0 : cVar.hashCode())) * 31) + this.c.hashCode()) * 31;
        c cVar2 = this.f15383d;
        return iHashCode2 + (cVar2 != null ? cVar2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String strB = c().b();
        r.d(strB, "packageName.asString()");
        sb.append(t.w(strB, '.', '/', false, 4, null));
        sb.append("/");
        if (b() != null) {
            sb.append(b());
            sb.append(".");
        }
        sb.append(a());
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public /* synthetic */ a(c cVar, c cVar2, f fVar, c cVar3, int i, o oVar) {
        this(cVar, cVar2, fVar, (i & 8) != 0 ? null : cVar3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(c packageName, f callableName) {
        this(packageName, null, callableName, null, 8, null);
        r.e(packageName, "packageName");
        r.e(callableName, "callableName");
    }
}
