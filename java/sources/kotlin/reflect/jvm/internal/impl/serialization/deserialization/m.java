package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public interface m {

    public static final class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15602a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
        public a0 a(ProtoBuf$Type proto, String flexibleId, f0 lowerBound, f0 upperBound) {
            kotlin.jvm.internal.r.e(proto, "proto");
            kotlin.jvm.internal.r.e(flexibleId, "flexibleId");
            kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
            kotlin.jvm.internal.r.e(upperBound, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    a0 a(ProtoBuf$Type protoBuf$Type, String str, f0 f0Var, f0 f0Var2);
}
