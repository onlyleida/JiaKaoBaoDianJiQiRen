package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.a<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.s.d.a f15549a;
    private final c b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15550a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 1;
            iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 2;
            iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 3;
            f15550a = iArr;
        }
    }

    public b(z module, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.s.d.a protocol) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        kotlin.jvm.internal.r.e(protocol, "protocol");
        this.f15549a = protocol;
        this.b = new c(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> a(s container, kotlin.reflect.jvm.internal.impl.protobuf.n callableProto, AnnotatedCallableKind kind, int i, ProtoBuf$ValueParameter proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(callableProto, "callableProto");
        kotlin.jvm.internal.r.e(kind, "kind");
        kotlin.jvm.internal.r.e(proto, "proto");
        List listJ = (List) proto.getExtension(this.f15549a.g());
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> b(s.a container) {
        kotlin.jvm.internal.r.e(container, "container");
        List listJ = (List) container.f().getExtension(this.f15549a.a());
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> c(ProtoBuf$Type proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        List listJ = (List) proto.getExtension(this.f15549a.k());
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> d(s container, ProtoBuf$EnumEntry proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        List listJ = (List) proto.getExtension(this.f15549a.d());
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> e(s container, kotlin.reflect.jvm.internal.impl.protobuf.n proto, AnnotatedCallableKind kind) {
        List listJ;
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(kind, "kind");
        if (proto instanceof ProtoBuf$Constructor) {
            listJ = (List) ((ProtoBuf$Constructor) proto).getExtension(this.f15549a.c());
        } else if (proto instanceof ProtoBuf$Function) {
            listJ = (List) ((ProtoBuf$Function) proto).getExtension(this.f15549a.f());
        } else {
            if (!(proto instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(kotlin.jvm.internal.r.m("Unknown message: ", proto).toString());
            }
            int i = a.f15550a[kind.ordinal()];
            if (i == 1) {
                listJ = (List) ((ProtoBuf$Property) proto).getExtension(this.f15549a.h());
            } else if (i == 2) {
                listJ = (List) ((ProtoBuf$Property) proto).getExtension(this.f15549a.i());
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Unsupported callable kind with property proto".toString());
                }
                listJ = (List) ((ProtoBuf$Property) proto).getExtension(this.f15549a.j());
            }
        }
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), container.b()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> f(ProtoBuf$TypeParameter proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        List listJ = (List) proto.getExtension(this.f15549a.l());
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> h(s container, ProtoBuf$Property proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> i(s container, kotlin.reflect.jvm.internal.impl.protobuf.n proto, AnnotatedCallableKind kind) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(kind, "kind");
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> j(s container, ProtoBuf$Property proto) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> g(s container, ProtoBuf$Property proto, a0 expectedType) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(expectedType, "expectedType");
        ProtoBuf$Annotation.Argument.Value value = (ProtoBuf$Annotation.Argument.Value) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(proto, this.f15549a.b());
        if (value == null) {
            return null;
        }
        return this.b.f(expectedType, value, container.b());
    }
}
