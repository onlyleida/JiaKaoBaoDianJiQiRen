package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType, still in use, count: 1, list:
  (r0v1 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType) from 0x006e: FILLED_NEW_ARRAY 
  (r0v1 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r1v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r4v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r6v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r8v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r10v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r12v2 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
 A[WRAPPED] elemType: kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class PrimitiveType {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");

    public static final Set<PrimitiveType> NUMBER_TYPES = u0.f(new PrimitiveType("Char"), new PrimitiveType("Byte"), new PrimitiveType("Short"), new PrimitiveType("Int"), new PrimitiveType("Float"), new PrimitiveType("Long"), new PrimitiveType("Double"));
    private final Lazy arrayTypeFqName$delegate;
    private final kotlin.reflect.jvm.internal.impl.name.f arrayTypeName;
    private final Lazy typeFqName$delegate;
    private final kotlin.reflect.jvm.internal.impl.name.f typeName;
    public static final a Companion = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }
    }

    static {
    }

    private PrimitiveType(String str) {
        super(str, i);
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(str);
        r.d(fVarG, "identifier(typeName)");
        this.typeName = fVarG;
        kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g(r.m(str, "Array"));
        r.d(fVarG2, "identifier(\"${typeName}Array\")");
        this.arrayTypeName = fVarG2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.typeFqName$delegate = kotlin.i.a(lazyThreadSafetyMode, new Function0<kotlin.reflect.jvm.internal.impl.name.c>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType$typeFqName$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.name.c invoke() {
                kotlin.reflect.jvm.internal.impl.name.c cVarC = h.l.c(this.this$0.getTypeName());
                r.d(cVarC, "BUILT_INS_PACKAGE_FQ_NAME.child(this.typeName)");
                return cVarC;
            }
        });
        this.arrayTypeFqName$delegate = kotlin.i.a(lazyThreadSafetyMode, new Function0<kotlin.reflect.jvm.internal.impl.name.c>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType$arrayTypeFqName$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.name.c invoke() {
                kotlin.reflect.jvm.internal.impl.name.c cVarC = h.l.c(this.this$0.getArrayTypeName());
                r.d(cVarC, "BUILT_INS_PACKAGE_FQ_NAME.child(arrayTypeName)");
                return cVarC;
            }
        });
    }

    public static PrimitiveType valueOf(String str) {
        return (PrimitiveType) Enum.valueOf(PrimitiveType.class, str);
    }

    public static PrimitiveType[] values() {
        return (PrimitiveType[]) $VALUES.clone();
    }

    public final kotlin.reflect.jvm.internal.impl.name.c getArrayTypeFqName() {
        return (kotlin.reflect.jvm.internal.impl.name.c) this.arrayTypeFqName$delegate.getValue();
    }

    public final kotlin.reflect.jvm.internal.impl.name.f getArrayTypeName() {
        return this.arrayTypeName;
    }

    public final kotlin.reflect.jvm.internal.impl.name.c getTypeFqName() {
        return (kotlin.reflect.jvm.internal.impl.name.c) this.typeFqName$delegate.getValue();
    }

    public final kotlin.reflect.jvm.internal.impl.name.f getTypeName() {
        return this.typeName;
    }
}
