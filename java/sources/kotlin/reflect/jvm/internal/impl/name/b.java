package kotlin.reflect.jvm.internal.impl.name;

import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f15384a;
    private final c b;
    private final boolean c;

    public b(c cVar, c cVar2, boolean z) {
        if (cVar == null) {
            a(1);
            throw null;
        }
        if (cVar2 == null) {
            a(2);
            throw null;
        }
        this.f15384a = cVar;
        this.b = cVar2;
        this.c = z;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? 2 : 3];
        switch (i) {
            case 1:
            case 3:
                objArr[0] = "packageFqName";
                break;
            case 2:
                objArr[0] = "relativeClassName";
                break;
            case 4:
                objArr[0] = "topLevelName";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                break;
            case 8:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 10:
                objArr[0] = "segment";
                break;
            case 11:
            case 12:
                objArr[0] = "string";
                break;
            default:
                objArr[0] = "topLevelFqName";
                break;
        }
        if (i == 5) {
            objArr[1] = "getPackageFqName";
        } else if (i == 6) {
            objArr[1] = "getRelativeClassName";
        } else if (i == 7) {
            objArr[1] = "getShortClassName";
        } else if (i == 9) {
            objArr[1] = "asSingleFqName";
        } else if (i == 13 || i == 14) {
            objArr[1] = "asString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[2] = "<init>";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                break;
            case 8:
                objArr[2] = "createNestedClassId";
                break;
            case 10:
                objArr[2] = "startsWith";
                break;
            case 11:
            case 12:
                objArr[2] = "fromString";
                break;
            default:
                objArr[2] = "topLevel";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 6 && i != 7 && i != 9 && i != 13 && i != 14) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static b e(String str) {
        if (str != null) {
            return f(str, false);
        }
        a(11);
        throw null;
    }

    public static b f(String str, boolean z) {
        String str2;
        if (str == null) {
            a(12);
            throw null;
        }
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            str2 = "";
        } else {
            String strReplace = str.substring(0, iLastIndexOf).replace('/', '.');
            str = str.substring(iLastIndexOf + 1);
            str2 = strReplace;
        }
        return new b(new c(str2), new c(str), z);
    }

    public static b m(c cVar) {
        if (cVar != null) {
            return new b(cVar.e(), cVar.g());
        }
        a(0);
        throw null;
    }

    public c b() {
        if (this.f15384a.d()) {
            c cVar = this.b;
            if (cVar != null) {
                return cVar;
            }
            a(9);
            throw null;
        }
        return new c(this.f15384a.b() + "." + this.b.b());
    }

    public String c() {
        if (this.f15384a.d()) {
            String strB = this.b.b();
            if (strB != null) {
                return strB;
            }
            a(13);
            throw null;
        }
        String str = this.f15384a.b().replace('.', '/') + "/" + this.b.b();
        if (str != null) {
            return str;
        }
        a(14);
        throw null;
    }

    public b d(f fVar) {
        if (fVar != null) {
            return new b(h(), this.b.c(fVar), this.c);
        }
        a(8);
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f15384a.equals(bVar.f15384a) && this.b.equals(bVar.b) && this.c == bVar.c;
    }

    public b g() {
        c cVarE = this.b.e();
        if (cVarE.d()) {
            return null;
        }
        return new b(h(), cVarE, this.c);
    }

    public c h() {
        c cVar = this.f15384a;
        if (cVar != null) {
            return cVar;
        }
        a(5);
        throw null;
    }

    public int hashCode() {
        return (((this.f15384a.hashCode() * 31) + this.b.hashCode()) * 31) + Boolean.valueOf(this.c).hashCode();
    }

    public c i() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar;
        }
        a(6);
        throw null;
    }

    public f j() {
        f fVarG = this.b.g();
        if (fVarG != null) {
            return fVarG;
        }
        a(7);
        throw null;
    }

    public boolean k() {
        return this.c;
    }

    public boolean l() {
        return !this.b.e().d();
    }

    public String toString() {
        if (!this.f15384a.d()) {
            return c();
        }
        return "/" + c();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(c cVar, f fVar) {
        this(cVar, c.k(fVar), false);
        if (cVar == null) {
            a(3);
            throw null;
        }
        if (fVar != null) {
        } else {
            a(4);
            throw null;
        }
    }
}
