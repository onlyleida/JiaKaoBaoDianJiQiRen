package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public interface b extends CallableMemberDescriptor, DeserializedMemberDescriptor {

    public static final class a {
        public static List<kotlin.reflect.jvm.internal.impl.metadata.c.h> a(b bVar) {
            r.e(bVar, "this");
            return DeserializedMemberDescriptor.a.a(bVar);
        }
    }
}
