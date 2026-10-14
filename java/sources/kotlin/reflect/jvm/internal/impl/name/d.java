package kotlin.reflect.jvm.internal.impl.name;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f f15386e = f.n("<root>");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f15387f = Pattern.compile("\\.");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Function1<String, f> f15388g = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15389a;
    private transient c b;
    private transient d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient f f15390d;

    static class a implements Function1<String, f> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f invoke(String str) {
            return f.e(str);
        }
    }

    d(String str, c cVar) {
        if (str == null) {
            a(0);
            throw null;
        }
        if (cVar == null) {
            a(1);
            throw null;
        }
        this.f15389a = str;
        this.b = cVar;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i2 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        if (i != 1) {
            switch (i) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(str2);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    private void d() {
        int iLastIndexOf = this.f15389a.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            this.f15390d = f.e(this.f15389a.substring(iLastIndexOf + 1));
            this.c = new d(this.f15389a.substring(0, iLastIndexOf));
        } else {
            this.f15390d = f.e(this.f15389a);
            this.c = c.c.j();
        }
    }

    public static d m(f fVar) {
        if (fVar != null) {
            return new d(fVar.b(), c.c.j(), fVar);
        }
        a(16);
        throw null;
    }

    public String b() {
        String str = this.f15389a;
        if (str != null) {
            return str;
        }
        a(4);
        throw null;
    }

    public d c(f fVar) {
        String strB;
        if (fVar == null) {
            a(9);
            throw null;
        }
        if (e()) {
            strB = fVar.b();
        } else {
            strB = this.f15389a + "." + fVar.b();
        }
        return new d(strB, this, fVar);
    }

    public boolean e() {
        return this.f15389a.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && this.f15389a.equals(((d) obj).f15389a);
    }

    public boolean f() {
        return this.b != null || b().indexOf(60) < 0;
    }

    public d g() {
        d dVar = this.c;
        if (dVar != null) {
            if (dVar != null) {
                return dVar;
            }
            a(7);
            throw null;
        }
        if (e()) {
            throw new IllegalStateException("root");
        }
        d();
        d dVar2 = this.c;
        if (dVar2 != null) {
            return dVar2;
        }
        a(8);
        throw null;
    }

    public List<f> h() {
        List<f> listEmptyList = e() ? Collections.emptyList() : ArraysKt___ArraysKt.Q(f15387f.split(this.f15389a), f15388g);
        if (listEmptyList != null) {
            return listEmptyList;
        }
        a(14);
        throw null;
    }

    public int hashCode() {
        return this.f15389a.hashCode();
    }

    public f i() {
        f fVar = this.f15390d;
        if (fVar != null) {
            if (fVar != null) {
                return fVar;
            }
            a(10);
            throw null;
        }
        if (e()) {
            throw new IllegalStateException("root");
        }
        d();
        f fVar2 = this.f15390d;
        if (fVar2 != null) {
            return fVar2;
        }
        a(11);
        throw null;
    }

    public f j() {
        if (e()) {
            f fVar = f15386e;
            if (fVar != null) {
                return fVar;
            }
            a(12);
            throw null;
        }
        f fVarI = i();
        if (fVarI != null) {
            return fVarI;
        }
        a(13);
        throw null;
    }

    public boolean k(f fVar) {
        if (fVar == null) {
            a(15);
            throw null;
        }
        if (e()) {
            return false;
        }
        int iIndexOf = this.f15389a.indexOf(46);
        String str = this.f15389a;
        String strB = fVar.b();
        if (iIndexOf == -1) {
            iIndexOf = this.f15389a.length();
        }
        return str.regionMatches(0, strB, 0, iIndexOf);
    }

    public c l() {
        c cVar = this.b;
        if (cVar != null) {
            if (cVar != null) {
                return cVar;
            }
            a(5);
            throw null;
        }
        c cVar2 = new c(this);
        this.b = cVar2;
        if (cVar2 != null) {
            return cVar2;
        }
        a(6);
        throw null;
    }

    public String toString() {
        String strB = e() ? f15386e.b() : this.f15389a;
        if (strB != null) {
            return strB;
        }
        a(17);
        throw null;
    }

    public d(String str) {
        if (str != null) {
            this.f15389a = str;
        } else {
            a(2);
            throw null;
        }
    }

    private d(String str, d dVar, f fVar) {
        if (str != null) {
            this.f15389a = str;
            this.c = dVar;
            this.f15390d = fVar;
            return;
        }
        a(3);
        throw null;
    }
}
