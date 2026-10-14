package kotlin.jvm.internal;

import com.mobile.auth.BuildConfig;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableIterable;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes6.dex */
public class z {
    public static Collection a(Object obj) {
        if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableCollection)) {
            return f(obj);
        }
        o(obj, "kotlin.collections.MutableCollection");
        throw null;
    }

    public static Iterable b(Object obj) {
        if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableIterable)) {
            return g(obj);
        }
        o(obj, "kotlin.collections.MutableIterable");
        throw null;
    }

    public static List c(Object obj) {
        if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableList)) {
            return h(obj);
        }
        o(obj, "kotlin.collections.MutableList");
        throw null;
    }

    public static Set d(Object obj) {
        if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableSet)) {
            return i(obj);
        }
        o(obj, "kotlin.collections.MutableSet");
        throw null;
    }

    public static Object e(Object obj, int i) {
        if (obj == null || k(obj, i)) {
            return obj;
        }
        o(obj, "kotlin.jvm.functions.Function" + i);
        throw null;
    }

    public static Collection f(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e2) {
            n(e2);
            throw null;
        }
    }

    public static Iterable g(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e2) {
            n(e2);
            throw null;
        }
    }

    public static List h(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e2) {
            n(e2);
            throw null;
        }
    }

    public static Set i(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e2) {
            n(e2);
            throw null;
        }
    }

    public static int j(Object obj) {
        if (obj instanceof FunctionBase) {
            return ((FunctionBase) obj).getArity();
        }
        if (obj instanceof Function0) {
            return 0;
        }
        if (obj instanceof Function1) {
            return 1;
        }
        if (obj instanceof Function2) {
            return 2;
        }
        if (obj instanceof Function3) {
            return 3;
        }
        if (obj instanceof Function4) {
            return 4;
        }
        if (obj instanceof Function5) {
            return 5;
        }
        if (obj instanceof Function6) {
            return 6;
        }
        if (obj instanceof Function7) {
            return 7;
        }
        if (obj instanceof Function8) {
            return 8;
        }
        if (obj instanceof Function9) {
            return 9;
        }
        if (obj instanceof Function10) {
            return 10;
        }
        if (obj instanceof Function11) {
            return 11;
        }
        if (obj instanceof Function12) {
            return 12;
        }
        if (obj instanceof Function13) {
            return 13;
        }
        if (obj instanceof Function14) {
            return 14;
        }
        if (obj instanceof Function15) {
            return 15;
        }
        if (obj instanceof Function16) {
            return 16;
        }
        if (obj instanceof Function17) {
            return 17;
        }
        if (obj instanceof Function18) {
            return 18;
        }
        if (obj instanceof Function19) {
            return 19;
        }
        if (obj instanceof Function20) {
            return 20;
        }
        if (obj instanceof Function21) {
            return 21;
        }
        return obj instanceof Function22 ? 22 : -1;
    }

    public static boolean k(Object obj, int i) {
        return (obj instanceof Function) && j(obj) == i;
    }

    public static boolean l(Object obj) {
        return (obj instanceof List) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableList));
    }

    private static <T extends Throwable> T m(T t) {
        r.l(t, z.class.getName());
        return t;
    }

    public static ClassCastException n(ClassCastException classCastException) {
        m(classCastException);
        throw classCastException;
    }

    public static void o(Object obj, String str) {
        p((obj == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : obj.getClass().getName()) + " cannot be cast to " + str);
        throw null;
    }

    public static void p(String str) {
        n(new ClassCastException(str));
        throw null;
    }
}
