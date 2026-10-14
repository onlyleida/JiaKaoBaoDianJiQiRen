package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.t0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public final class ClassDeserializer {
    public static final b c = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.b> f15538d = t0.a(kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.builtins.h.a.f14806d.l()));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f15539a;
    private final Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> b;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.b f15540a;
        private final d b;

        public a(kotlin.reflect.jvm.internal.impl.name.b classId, d dVar) {
            kotlin.jvm.internal.r.e(classId, "classId");
            this.f15540a = classId;
            this.b = dVar;
        }

        public final d a() {
            return this.b;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b b() {
            return this.f15540a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && kotlin.jvm.internal.r.a(this.f15540a, ((a) obj).f15540a);
        }

        public int hashCode() {
            return this.f15540a.hashCode();
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final Set<kotlin.reflect.jvm.internal.impl.name.b> a() {
            return ClassDeserializer.f15538d;
        }
    }

    public ClassDeserializer(g components) {
        kotlin.jvm.internal.r.e(components, "components");
        this.f15539a = components;
        this.b = components.u().g(new Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer$classes$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(ClassDeserializer.a key) {
                kotlin.jvm.internal.r.e(key, "key");
                return this.this$0.c(key);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d c(a aVar) {
        Object next;
        i iVarA;
        boolean z;
        kotlin.reflect.jvm.internal.impl.name.b bVarB = aVar.b();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> it = this.f15539a.k().iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = it.next().c(bVarB);
            if (dVarC != null) {
                return dVarC;
            }
        }
        if (f15538d.contains(bVarB)) {
            return null;
        }
        d dVarA = aVar.a();
        if (dVarA == null && (dVarA = this.f15539a.e().a(bVarB)) == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.c.c cVarA = dVarA.a();
        ProtoBuf$Class protoBuf$ClassB = dVarA.b();
        kotlin.reflect.jvm.internal.impl.metadata.c.a aVarC = dVarA.c();
        o0 o0VarD = dVarA.d();
        kotlin.reflect.jvm.internal.impl.name.b bVarG = bVarB.g();
        if (bVarG != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = e(this, bVarG, null, 2, null);
            DeserializedClassDescriptor deserializedClassDescriptor = dVarE instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) dVarE : null;
            if (deserializedClassDescriptor == null) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.name.f fVarJ = bVarB.j();
            kotlin.jvm.internal.r.d(fVarJ, "classId.shortClassName");
            if (!deserializedClassDescriptor.a1(fVarJ)) {
                return null;
            }
            iVarA = deserializedClassDescriptor.U0();
        } else {
            c0 c0VarR = this.f15539a.r();
            kotlin.reflect.jvm.internal.impl.name.c cVarH = bVarB.h();
            kotlin.jvm.internal.r.d(cVarH, "classId.packageFqName");
            Iterator<T> it2 = d0.c(c0VarR, cVarH).iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                b0 b0Var = (b0) next;
                if (b0Var instanceof k) {
                    kotlin.reflect.jvm.internal.impl.name.f fVarJ2 = bVarB.j();
                    kotlin.jvm.internal.r.d(fVarJ2, "classId.shortClassName");
                    if (((k) b0Var).G0(fVarJ2)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = true;
                }
            } while (!z);
            b0 b0Var2 = (b0) next;
            if (b0Var2 == null) {
                return null;
            }
            g gVar = this.f15539a;
            ProtoBuf$TypeTable typeTable = protoBuf$ClassB.getTypeTable();
            kotlin.jvm.internal.r.d(typeTable, "classProto.typeTable");
            kotlin.reflect.jvm.internal.impl.metadata.c.g gVar2 = new kotlin.reflect.jvm.internal.impl.metadata.c.g(typeTable);
            kotlin.reflect.jvm.internal.impl.metadata.c.i.a aVar2 = kotlin.reflect.jvm.internal.impl.metadata.c.i.b;
            ProtoBuf$VersionRequirementTable versionRequirementTable = protoBuf$ClassB.getVersionRequirementTable();
            kotlin.jvm.internal.r.d(versionRequirementTable, "classProto.versionRequirementTable");
            iVarA = gVar.a(b0Var2, cVarA, gVar2, aVar2.a(versionRequirementTable), aVarC, null);
        }
        return new DeserializedClassDescriptor(iVarA, protoBuf$ClassB, cVarA, aVarC, o0VarD);
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d e(ClassDeserializer classDeserializer, kotlin.reflect.jvm.internal.impl.name.b bVar, d dVar, int i, Object obj) {
        if ((i & 2) != 0) {
            dVar = null;
        }
        return classDeserializer.d(bVar, dVar);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d d(kotlin.reflect.jvm.internal.impl.name.b classId, d dVar) {
        kotlin.jvm.internal.r.e(classId, "classId");
        return this.b.invoke(new a(classId, dVar));
    }
}
