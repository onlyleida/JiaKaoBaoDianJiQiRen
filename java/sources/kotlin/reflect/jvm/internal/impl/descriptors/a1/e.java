package kotlin.reflect.jvm.internal.impl.descriptors.a1;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public interface e {

    public static final class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f14864a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.e
        public f0 a(kotlin.reflect.jvm.internal.impl.name.b classId, f0 computedType) {
            r.e(classId, "classId");
            r.e(computedType, "computedType");
            return computedType;
        }
    }

    f0 a(kotlin.reflect.jvm.internal.impl.name.b bVar, f0 f0Var);
}
