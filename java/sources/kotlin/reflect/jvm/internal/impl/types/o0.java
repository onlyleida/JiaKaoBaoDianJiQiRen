package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public interface o0 {

    public static final class a implements o0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15700a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.o0
        public void a(TypeSubstitutor substitutor, a0 unsubstitutedArgument, a0 argument, kotlin.reflect.jvm.internal.impl.descriptors.t0 typeParameter) {
            kotlin.jvm.internal.r.e(substitutor, "substitutor");
            kotlin.jvm.internal.r.e(unsubstitutedArgument, "unsubstitutedArgument");
            kotlin.jvm.internal.r.e(argument, "argument");
            kotlin.jvm.internal.r.e(typeParameter, "typeParameter");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.o0
        public void b(kotlin.reflect.jvm.internal.impl.descriptors.s0 typeAlias) {
            kotlin.jvm.internal.r.e(typeAlias, "typeAlias");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.o0
        public void c(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotation) {
            kotlin.jvm.internal.r.e(annotation, "annotation");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.o0
        public void d(kotlin.reflect.jvm.internal.impl.descriptors.s0 typeAlias, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var, a0 substitutedArgument) {
            kotlin.jvm.internal.r.e(typeAlias, "typeAlias");
            kotlin.jvm.internal.r.e(substitutedArgument, "substitutedArgument");
        }
    }

    void a(TypeSubstitutor typeSubstitutor, a0 a0Var, a0 a0Var2, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var);

    void b(kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var);

    void c(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar);

    void d(kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var, a0 a0Var);
}
