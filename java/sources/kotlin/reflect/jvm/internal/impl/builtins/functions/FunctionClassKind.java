package kotlin.reflect.jvm.internal.impl.builtins.functions;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.text.t;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'KFunction' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class FunctionClassKind {
    private static final /* synthetic */ FunctionClassKind[] $VALUES;
    public static final a Companion;
    public static final FunctionClassKind KFunction;
    public static final FunctionClassKind KSuspendFunction;
    private final String classNamePrefix;
    private final boolean isReflectType;
    private final boolean isSuspendType;
    private final kotlin.reflect.jvm.internal.impl.name.c packageFqName;
    public static final FunctionClassKind Function = new FunctionClassKind("Function", 0, h.l, "Function", false, false);
    public static final FunctionClassKind SuspendFunction = new FunctionClassKind("SuspendFunction", 1, h.f14800d, "SuspendFunction", true, false);

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind$a$a, reason: collision with other inner class name */
        public static final class C0318a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final FunctionClassKind f14782a;
            private final int b;

            public C0318a(FunctionClassKind kind, int i) {
                r.e(kind, "kind");
                this.f14782a = kind;
                this.b = i;
            }

            public final FunctionClassKind a() {
                return this.f14782a;
            }

            public final int b() {
                return this.b;
            }

            public final FunctionClassKind c() {
                return this.f14782a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0318a)) {
                    return false;
                }
                C0318a c0318a = (C0318a) obj;
                return this.f14782a == c0318a.f14782a && this.b == c0318a.b;
            }

            public int hashCode() {
                return (this.f14782a.hashCode() * 31) + this.b;
            }

            public String toString() {
                return "KindWithArity(kind=" + this.f14782a + ", arity=" + this.b + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        private final Integer d(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i = 0;
            int i2 = 0;
            while (i < length) {
                char cCharAt = str.charAt(i);
                i++;
                int i3 = cCharAt - '0';
                if (!(i3 >= 0 && i3 <= 9)) {
                    return null;
                }
                i2 = (i2 * 10) + i3;
            }
            return Integer.valueOf(i2);
        }

        public final FunctionClassKind a(kotlin.reflect.jvm.internal.impl.name.c packageFqName, String className) {
            r.e(packageFqName, "packageFqName");
            r.e(className, "className");
            for (FunctionClassKind functionClassKind : FunctionClassKind.values()) {
                if (r.a(functionClassKind.getPackageFqName(), packageFqName) && t.B(className, functionClassKind.getClassNamePrefix(), false, 2, null)) {
                    return functionClassKind;
                }
            }
            return null;
        }

        public final FunctionClassKind b(String className, kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
            r.e(className, "className");
            r.e(packageFqName, "packageFqName");
            C0318a c0318aC = c(className, packageFqName);
            if (c0318aC == null) {
                return null;
            }
            return c0318aC.c();
        }

        public final C0318a c(String className, kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
            r.e(className, "className");
            r.e(packageFqName, "packageFqName");
            FunctionClassKind functionClassKindA = a(packageFqName, className);
            if (functionClassKindA == null) {
                return null;
            }
            String strSubstring = className.substring(functionClassKindA.getClassNamePrefix().length());
            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            Integer numD = d(strSubstring);
            if (numD == null) {
                return null;
            }
            return new C0318a(functionClassKindA, numD.intValue());
        }
    }

    private static final /* synthetic */ FunctionClassKind[] $values() {
        return new FunctionClassKind[]{Function, SuspendFunction, KFunction, KSuspendFunction};
    }

    static {
        kotlin.reflect.jvm.internal.impl.name.c cVar = h.i;
        KFunction = new FunctionClassKind("KFunction", 2, cVar, "KFunction", false, true);
        KSuspendFunction = new FunctionClassKind("KSuspendFunction", 3, cVar, "KSuspendFunction", true, true);
        $VALUES = $values();
        Companion = new a(null);
    }

    private FunctionClassKind(String str, int i, kotlin.reflect.jvm.internal.impl.name.c cVar, String str2, boolean z, boolean z2) {
        super(str, i);
        this.packageFqName = cVar;
        this.classNamePrefix = str2;
        this.isSuspendType = z;
        this.isReflectType = z2;
    }

    public static FunctionClassKind valueOf(String str) {
        return (FunctionClassKind) Enum.valueOf(FunctionClassKind.class, str);
    }

    public static FunctionClassKind[] values() {
        return (FunctionClassKind[]) $VALUES.clone();
    }

    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    public final kotlin.reflect.jvm.internal.impl.name.c getPackageFqName() {
        return this.packageFqName;
    }

    public final f numberedClassName(int i) {
        f fVarG = f.g(r.m(this.classNamePrefix, Integer.valueOf(i)));
        r.d(fVarG, "identifier(\"$classNamePrefix$arity\")");
        return fVarG;
    }
}
