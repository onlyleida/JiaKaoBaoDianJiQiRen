package kotlin.reflect.jvm.internal.impl.name;

import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes6.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f15394a = f.n("<no name provided>");
    public static final f b;
    public static final f c;

    static {
        f.n("<root package>");
        b = f.g("Companion");
        c = f.g("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");
        f.n("<anonymous>");
    }

    private static /* synthetic */ void a(int i) {
        String str = i != 1 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[i != 1 ? 2 : 3];
        if (i != 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        } else {
            objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
        }
        if (i != 1) {
            objArr[1] = "safeIdentifier";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        }
        if (i == 1) {
            objArr[2] = "isSafeIdentifier";
        }
        String str2 = String.format(str, objArr);
        if (i == 1) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static boolean b(f fVar) {
        if (fVar != null) {
            return (fVar.b().isEmpty() || fVar.h()) ? false : true;
        }
        a(1);
        throw null;
    }

    public static f c(f fVar) {
        if (fVar == null || fVar.h()) {
            fVar = c;
        }
        if (fVar != null) {
            return fVar;
        }
        a(0);
        throw null;
    }
}
