package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public interface a<A, C> {
    List<A> a(s sVar, kotlin.reflect.jvm.internal.impl.protobuf.n nVar, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter);

    List<A> b(s.a aVar);

    List<A> c(ProtoBuf$Type protoBuf$Type, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar);

    List<A> d(s sVar, ProtoBuf$EnumEntry protoBuf$EnumEntry);

    List<A> e(s sVar, kotlin.reflect.jvm.internal.impl.protobuf.n nVar, AnnotatedCallableKind annotatedCallableKind);

    List<A> f(ProtoBuf$TypeParameter protoBuf$TypeParameter, kotlin.reflect.jvm.internal.impl.metadata.c.c cVar);

    C g(s sVar, ProtoBuf$Property protoBuf$Property, a0 a0Var);

    List<A> h(s sVar, ProtoBuf$Property protoBuf$Property);

    List<A> i(s sVar, kotlin.reflect.jvm.internal.impl.protobuf.n nVar, AnnotatedCallableKind annotatedCallableKind);

    List<A> j(s sVar, ProtoBuf$Property protoBuf$Property);
}
