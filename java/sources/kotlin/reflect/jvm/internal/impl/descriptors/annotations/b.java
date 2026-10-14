package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

/* JADX INFO: loaded from: classes6.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f14871a;

    public b(e eVar) {
        if (eVar != null) {
            this.f14871a = eVar;
        } else {
            w(0);
            throw null;
        }
    }

    private static /* synthetic */ void w(int i) {
        String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 1 ? 3 : 2];
        if (i != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i != 1) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i == 1) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public e getAnnotations() {
        e eVar = this.f14871a;
        if (eVar != null) {
            return eVar;
        }
        w(1);
        throw null;
    }
}
