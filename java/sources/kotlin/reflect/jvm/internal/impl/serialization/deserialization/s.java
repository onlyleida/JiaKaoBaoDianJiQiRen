package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.c f15608a;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.g b;
    private final o0 c;

    public static final class a extends s {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ProtoBuf$Class f15609d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final a f15610e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.b f15611f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ProtoBuf$Class.Kind f15612g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f15613h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, o0 o0Var, a aVar) {
            super(nameResolver, typeTable, o0Var, null);
            kotlin.jvm.internal.r.e(classProto, "classProto");
            kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
            kotlin.jvm.internal.r.e(typeTable, "typeTable");
            this.f15609d = classProto;
            this.f15610e = aVar;
            this.f15611f = q.a(nameResolver, classProto.getFqName());
            ProtoBuf$Class.Kind kindD = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15336f.d(classProto.getFlags());
            this.f15612g = kindD == null ? ProtoBuf$Class.Kind.CLASS : kindD;
            Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15337g.d(classProto.getFlags());
            kotlin.jvm.internal.r.d(boolD, "IS_INNER.get(classProto.flags)");
            this.f15613h = boolD.booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.s
        public kotlin.reflect.jvm.internal.impl.name.c a() {
            kotlin.reflect.jvm.internal.impl.name.c cVarB = this.f15611f.b();
            kotlin.jvm.internal.r.d(cVarB, "classId.asSingleFqName()");
            return cVarB;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b e() {
            return this.f15611f;
        }

        public final ProtoBuf$Class f() {
            return this.f15609d;
        }

        public final ProtoBuf$Class.Kind g() {
            return this.f15612g;
        }

        public final a h() {
            return this.f15610e;
        }

        public final boolean i() {
            return this.f15613h;
        }
    }

    public static final class b extends s {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.c f15614d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, o0 o0Var) {
            super(nameResolver, typeTable, o0Var, null);
            kotlin.jvm.internal.r.e(fqName, "fqName");
            kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
            kotlin.jvm.internal.r.e(typeTable, "typeTable");
            this.f15614d = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.s
        public kotlin.reflect.jvm.internal.impl.name.c a() {
            return this.f15614d;
        }
    }

    private s(kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, o0 o0Var) {
        this.f15608a = cVar;
        this.b = gVar;
        this.c = o0Var;
    }

    public /* synthetic */ s(kotlin.reflect.jvm.internal.impl.metadata.c.c cVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, o0 o0Var, kotlin.jvm.internal.o oVar) {
        this(cVar, gVar, o0Var);
    }

    public abstract kotlin.reflect.jvm.internal.impl.name.c a();

    public final kotlin.reflect.jvm.internal.impl.metadata.c.c b() {
        return this.f15608a;
    }

    public final o0 c() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.g d() {
        return this.b;
    }

    public String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + a();
    }
}
