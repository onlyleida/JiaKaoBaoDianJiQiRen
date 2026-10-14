package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.Collection;
import kotlin.collections.t0;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f14846a = new d();

    private d() {
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d h(d dVar, kotlin.reflect.jvm.internal.impl.name.c cVar, kotlin.reflect.jvm.internal.impl.builtins.g gVar, Integer num, int i, Object obj) {
        if ((i & 4) != 0) {
            num = null;
        }
        return dVar.g(cVar, gVar, num);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.descriptors.d mutable) {
        r.e(mutable, "mutable");
        kotlin.reflect.jvm.internal.impl.name.c cVarP = c.f14839a.p(kotlin.reflect.jvm.internal.impl.resolve.c.m(mutable));
        if (cVarP != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = DescriptorUtilsKt.g(mutable).o(cVarP);
            r.d(dVarO, "descriptor.builtIns.getB…Name(oppositeClassFqName)");
            return dVarO;
        }
        throw new IllegalArgumentException("Given class " + mutable + " is not a mutable collection");
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(kotlin.reflect.jvm.internal.impl.descriptors.d readOnly) {
        r.e(readOnly, "readOnly");
        kotlin.reflect.jvm.internal.impl.name.c cVarQ = c.f14839a.q(kotlin.reflect.jvm.internal.impl.resolve.c.m(readOnly));
        if (cVarQ != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = DescriptorUtilsKt.g(readOnly).o(cVarQ);
            r.d(dVarO, "descriptor.builtIns.getB…Name(oppositeClassFqName)");
            return dVarO;
        }
        throw new IllegalArgumentException("Given class " + readOnly + " is not a read-only collection");
    }

    public final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d mutable) {
        r.e(mutable, "mutable");
        return c.f14839a.l(kotlin.reflect.jvm.internal.impl.resolve.c.m(mutable));
    }

    public final boolean d(a0 type) {
        r.e(type, "type");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarG = y0.g(type);
        return dVarG != null && c(dVarG);
    }

    public final boolean e(kotlin.reflect.jvm.internal.impl.descriptors.d readOnly) {
        r.e(readOnly, "readOnly");
        return c.f14839a.m(kotlin.reflect.jvm.internal.impl.resolve.c.m(readOnly));
    }

    public final boolean f(a0 type) {
        r.e(type, "type");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarG = y0.g(type);
        return dVarG != null && e(dVarG);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d g(kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.builtins.g builtIns, Integer num) {
        r.e(fqName, "fqName");
        r.e(builtIns, "builtIns");
        kotlin.reflect.jvm.internal.impl.name.b bVarN = (num == null || !r.a(fqName, c.f14839a.i())) ? c.f14839a.n(fqName) : h.a(num.intValue());
        if (bVarN != null) {
            return builtIns.o(bVarN.b());
        }
        return null;
    }

    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> i(kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.builtins.g builtIns) {
        r.e(fqName, "fqName");
        r.e(builtIns, "builtIns");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarH = h(this, fqName, builtIns, null, 4, null);
        if (dVarH == null) {
            return u0.b();
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarQ = c.f14839a.q(DescriptorUtilsKt.j(dVarH));
        if (cVarQ == null) {
            return t0.a(dVarH);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = builtIns.o(cVarQ);
        r.d(dVarO, "builtIns.getBuiltInClass…otlinMutableAnalogFqName)");
        return u.m(dVarH, dVarO);
    }
}
