package kotlin.reflect.jvm.internal.impl.resolve.jvm;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15511a;

    private d(String str) {
        if (str != null) {
            this.f15511a = str;
        } else {
            a(5);
            throw null;
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 3 || i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "classId";
                break;
            case 2:
            case 4:
                objArr[0] = "fqName";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                break;
            case 5:
            default:
                objArr[0] = "internalName";
                break;
        }
        if (i == 3) {
            objArr[1] = "byFqNameWithoutInnerClasses";
        } else if (i == 6) {
            objArr[1] = "getFqNameForClassNameWithoutDollars";
        } else if (i == 7) {
            objArr[1] = "getPackageFqName";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
        } else {
            objArr[1] = "getInternalName";
        }
        switch (i) {
            case 1:
                objArr[2] = "byClassId";
                break;
            case 2:
            case 4:
                objArr[2] = "byFqNameWithoutInnerClasses";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                break;
            case 5:
                objArr[2] = "<init>";
                break;
            default:
                objArr[2] = "byInternalName";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 6 && i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static d b(kotlin.reflect.jvm.internal.impl.name.b bVar) {
        if (bVar == null) {
            a(1);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarH = bVar.h();
        String strReplace = bVar.i().b().replace('.', '$');
        if (cVarH.d()) {
            return new d(strReplace);
        }
        return new d(cVarH.b().replace('.', '/') + "/" + strReplace);
    }

    public static d c(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        if (cVar != null) {
            return new d(cVar.b().replace('.', '/'));
        }
        a(2);
        throw null;
    }

    public static d d(String str) {
        if (str != null) {
            return new d(str);
        }
        a(0);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return new kotlin.reflect.jvm.internal.impl.name.c(this.f15511a.replace('/', '.'));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        return this.f15511a.equals(((d) obj).f15511a);
    }

    public String f() {
        String str = this.f15511a;
        if (str != null) {
            return str;
        }
        a(8);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.name.c g() {
        int iLastIndexOf = this.f15511a.lastIndexOf("/");
        if (iLastIndexOf != -1) {
            return new kotlin.reflect.jvm.internal.impl.name.c(this.f15511a.substring(0, iLastIndexOf).replace('/', '.'));
        }
        kotlin.reflect.jvm.internal.impl.name.c cVar = kotlin.reflect.jvm.internal.impl.name.c.c;
        if (cVar != null) {
            return cVar;
        }
        a(7);
        throw null;
    }

    public int hashCode() {
        return this.f15511a.hashCode();
    }

    public String toString() {
        return this.f15511a;
    }
}
