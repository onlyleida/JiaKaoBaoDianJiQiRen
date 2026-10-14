package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f15601a = new a();

    static class a implements l {
        a() {
        }

        private static /* synthetic */ void c(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "unresolvedSuperClasses";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
            if (i != 2) {
                objArr[2] = "reportIncompleteHierarchy";
            } else {
                objArr[2] = "reportCannotInferVisibility";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor != null) {
                return;
            }
            c(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
        public void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<String> list) {
            if (dVar == null) {
                c(0);
                throw null;
            }
            if (list != null) {
                return;
            }
            c(1);
            throw null;
        }
    }

    void a(CallableMemberDescriptor callableMemberDescriptor);

    void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<String> list);
}
