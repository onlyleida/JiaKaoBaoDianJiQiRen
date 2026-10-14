package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;

/* JADX INFO: loaded from: classes6.dex */
public interface f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15584a = a.f15585a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15585a = new a();
        private static final f b = new C0354a();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.f$a$a, reason: collision with other inner class name */
        public static final class C0354a implements f {
            C0354a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.f
            public Pair a(ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.descriptors.u ownerFunction, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, TypeDeserializer typeDeserializer) {
                kotlin.jvm.internal.r.e(proto, "proto");
                kotlin.jvm.internal.r.e(ownerFunction, "ownerFunction");
                kotlin.jvm.internal.r.e(typeTable, "typeTable");
                kotlin.jvm.internal.r.e(typeDeserializer, "typeDeserializer");
                return null;
            }
        }

        private a() {
        }

        public final f a() {
            return b;
        }
    }

    Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> a(ProtoBuf$Function protoBuf$Function, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, kotlin.reflect.jvm.internal.impl.metadata.c.g gVar, TypeDeserializer typeDeserializer);
}
