package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f15210a = new e();

    private e() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
    public a0 a(ProtoBuf$Type proto, String flexibleId, f0 lowerBound, f0 upperBound) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(flexibleId, "flexibleId");
        kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
        kotlin.jvm.internal.r.e(upperBound, "upperBound");
        if (kotlin.jvm.internal.r.a(flexibleId, "kotlin.jvm.PlatformType")) {
            return proto.hasExtension(JvmProtoBuf.f15356g) ? new RawTypeImpl(lowerBound, upperBound) : KotlinTypeFactory.d(lowerBound, upperBound);
        }
        f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j("Error java flexible type with id: " + flexibleId + ". (" + lowerBound + ".." + upperBound + ')');
        kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Error j…owerBound..$upperBound)\")");
        return f0VarJ;
    }
}
