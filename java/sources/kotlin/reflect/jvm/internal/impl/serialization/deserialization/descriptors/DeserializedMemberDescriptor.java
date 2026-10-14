package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.protobuf.n;

/* JADX INFO: loaded from: classes6.dex */
public interface DeserializedMemberDescriptor extends k, w {

    public enum CoroutinesCompatibilityMode {
        COMPATIBLE,
        NEEDS_WRAPPER,
        INCOMPATIBLE
    }

    public static final class a {
        public static List<kotlin.reflect.jvm.internal.impl.metadata.c.h> a(DeserializedMemberDescriptor deserializedMemberDescriptor) {
            r.e(deserializedMemberDescriptor, "this");
            return kotlin.reflect.jvm.internal.impl.metadata.c.h.f15343f.a(deserializedMemberDescriptor.c0(), deserializedMemberDescriptor.H(), deserializedMemberDescriptor.G());
        }
    }

    kotlin.reflect.jvm.internal.impl.metadata.c.g D();

    List<kotlin.reflect.jvm.internal.impl.metadata.c.h> E0();

    kotlin.reflect.jvm.internal.impl.metadata.c.i G();

    kotlin.reflect.jvm.internal.impl.metadata.c.c H();

    d I();

    n c0();
}
