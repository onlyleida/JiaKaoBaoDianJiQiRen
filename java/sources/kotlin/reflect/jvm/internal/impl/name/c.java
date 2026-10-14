package kotlin.reflect.jvm.internal.impl.name;

import com.mobile.auth.gatewayauth.Constant;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class c {
    public static final c c = new c("");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f15385a;
    private transient c b;

    public c(String str) {
        if (str != null) {
            this.f15385a = new d(str, this);
        } else {
            a(1);
            throw null;
        }
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                i2 = 2;
                break;
            case 8:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "fqName";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 8:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 12:
                objArr[0] = "segment";
                break;
            case 13:
                objArr[0] = "shortName";
                break;
            default:
                objArr[0] = "names";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
                objArr[1] = "toUnsafe";
                break;
            case 6:
            case 7:
                objArr[1] = "parent";
                break;
            case 8:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 9:
                objArr[1] = "shortName";
                break;
            case 10:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 11:
                objArr[1] = "pathSegments";
                break;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[2] = "<init>";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                break;
            case 8:
                objArr[2] = "child";
                break;
            case 12:
                objArr[2] = "startsWith";
                break;
            case 13:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "fromSegments";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                throw new IllegalStateException(str2);
            case 8:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static c k(f fVar) {
        if (fVar != null) {
            return new c(d.m(fVar));
        }
        a(13);
        throw null;
    }

    public String b() {
        String strB = this.f15385a.b();
        if (strB != null) {
            return strB;
        }
        a(4);
        throw null;
    }

    public c c(f fVar) {
        if (fVar != null) {
            return new c(this.f15385a.c(fVar), this);
        }
        a(8);
        throw null;
    }

    public boolean d() {
        return this.f15385a.e();
    }

    public c e() {
        c cVar = this.b;
        if (cVar != null) {
            if (cVar != null) {
                return cVar;
            }
            a(6);
            throw null;
        }
        if (d()) {
            throw new IllegalStateException("root");
        }
        c cVar2 = new c(this.f15385a.g());
        this.b = cVar2;
        if (cVar2 != null) {
            return cVar2;
        }
        a(7);
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f15385a.equals(((c) obj).f15385a);
    }

    public List<f> f() {
        List<f> listH = this.f15385a.h();
        if (listH != null) {
            return listH;
        }
        a(11);
        throw null;
    }

    public f g() {
        f fVarI = this.f15385a.i();
        if (fVarI != null) {
            return fVarI;
        }
        a(9);
        throw null;
    }

    public f h() {
        f fVarJ = this.f15385a.j();
        if (fVarJ != null) {
            return fVarJ;
        }
        a(10);
        throw null;
    }

    public int hashCode() {
        return this.f15385a.hashCode();
    }

    public boolean i(f fVar) {
        if (fVar != null) {
            return this.f15385a.k(fVar);
        }
        a(12);
        throw null;
    }

    public d j() {
        d dVar = this.f15385a;
        if (dVar != null) {
            return dVar;
        }
        a(5);
        throw null;
    }

    public String toString() {
        return this.f15385a.toString();
    }

    public c(d dVar) {
        if (dVar != null) {
            this.f15385a = dVar;
        } else {
            a(2);
            throw null;
        }
    }

    private c(d dVar, c cVar) {
        if (dVar != null) {
            this.f15385a = dVar;
            this.b = cVar;
        } else {
            a(3);
            throw null;
        }
    }
}
