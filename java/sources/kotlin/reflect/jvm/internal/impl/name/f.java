package kotlin.reflect.jvm.internal.impl.name;

import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements Comparable<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15392a;
    private final boolean b;

    private f(String str, boolean z) {
        if (str == null) {
            a(0);
            throw null;
        }
        this.f15392a = str;
        this.b = z;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 1 || i == 2 || i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4) ? 2 : 3];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
        }
        if (i == 1) {
            objArr[1] = "asString";
        } else if (i == 2) {
            objArr[1] = "getIdentifier";
        } else if (i == 3 || i == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = "identifier";
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static f e(String str) {
        if (str != null) {
            return str.startsWith("<") ? n(str) : g(str);
        }
        a(8);
        throw null;
    }

    public static f g(String str) {
        if (str != null) {
            return new f(str, false);
        }
        a(5);
        throw null;
    }

    public static boolean k(String str) {
        if (str == null) {
            a(6);
            throw null;
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '.' || cCharAt == '/' || cCharAt == '\\') {
                return false;
            }
        }
        return true;
    }

    public static f n(String str) {
        if (str == null) {
            a(7);
            throw null;
        }
        if (str.startsWith("<")) {
            return new f(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': " + str);
    }

    public String b() {
        String str = this.f15392a;
        if (str != null) {
            return str;
        }
        a(1);
        throw null;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        return this.f15392a.compareTo(fVar.f15392a);
    }

    public String d() {
        if (this.b) {
            throw new IllegalStateException("not identifier: " + this);
        }
        String strB = b();
        if (strB != null) {
            return strB;
        }
        a(2);
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.b == fVar.b && this.f15392a.equals(fVar.f15392a);
    }

    public boolean h() {
        return this.b;
    }

    public int hashCode() {
        return (this.f15392a.hashCode() * 31) + (this.b ? 1 : 0);
    }

    public String toString() {
        return this.f15392a;
    }
}
