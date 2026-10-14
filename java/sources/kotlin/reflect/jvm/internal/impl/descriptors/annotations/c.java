package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.t;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    public static final class a {
        public static kotlin.reflect.jvm.internal.impl.name.c a(c cVar) {
            r.e(cVar, "this");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(cVar);
            if (dVarF == null) {
                return null;
            }
            if (t.r(dVarF)) {
                dVarF = null;
            }
            if (dVarF == null) {
                return null;
            }
            return DescriptorUtilsKt.e(dVarF);
        }
    }

    Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a();

    kotlin.reflect.jvm.internal.impl.name.c e();

    a0 getType();

    o0 o();
}
