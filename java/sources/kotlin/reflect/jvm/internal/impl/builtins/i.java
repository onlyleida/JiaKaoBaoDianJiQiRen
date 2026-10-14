package kotlin.reflect.jvm.internal.impl.builtins;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.l;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final v f14811a;
    private static final v b;

    static {
        z zVarQ = t.q();
        r.d(zVarQ, "getErrorModule()");
        l lVar = new l(zVarQ, h.f14801e);
        ClassKind classKind = ClassKind.INTERFACE;
        kotlin.reflect.jvm.internal.impl.name.f fVarG = h.f14802f.g();
        o0 o0Var = o0.f14970a;
        m mVar = LockBasedStorageManager.f15621e;
        v vVar = new v(lVar, classKind, false, false, fVarG, o0Var, mVar);
        Modality modality = Modality.ABSTRACT;
        vVar.I0(modality);
        s sVar = kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e;
        vVar.K0(sVar);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O;
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = aVar.b();
        Variance variance = Variance.IN_VARIANCE;
        vVar.J0(kotlin.collections.t.d(g0.N0(vVar, eVarB, false, variance, kotlin.reflect.jvm.internal.impl.name.f.g(ExifInterface.GPS_DIRECTION_TRUE), 0, mVar)));
        vVar.G0();
        f14811a = vVar;
        z zVarQ2 = t.q();
        r.d(zVarQ2, "getErrorModule()");
        v vVar2 = new v(new l(zVarQ2, h.f14800d), classKind, false, false, h.f14803g.g(), o0Var, mVar);
        vVar2.I0(modality);
        vVar2.K0(sVar);
        vVar2.J0(kotlin.collections.t.d(g0.N0(vVar2, aVar.b(), false, variance, kotlin.reflect.jvm.internal.impl.name.f.g(ExifInterface.GPS_DIRECTION_TRUE), 0, mVar)));
        vVar2.G0();
        b = vVar2;
    }

    public static final boolean a(kotlin.reflect.jvm.internal.impl.name.c cVar, boolean z) {
        return z ? r.a(cVar, h.f14803g) : r.a(cVar, h.f14802f);
    }

    public static final f0 b(a0 suspendFunType, boolean z) {
        r.e(suspendFunType, "suspendFunType");
        f.o(suspendFunType);
        g gVarH = TypeUtilsKt.h(suspendFunType);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = suspendFunType.getAnnotations();
        a0 a0VarH = f.h(suspendFunType);
        List<s0> listJ = f.j(suspendFunType);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listJ, 10));
        Iterator<T> it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(((s0) it.next()).getType());
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        q0 q0VarI = z ? b.i() : f14811a.i();
        r.d(q0VarI, "if (isReleaseCoroutines)…ERIMENTAL.typeConstructor");
        List listY0 = CollectionsKt___CollectionsKt.y0(arrayList, KotlinTypeFactory.i(eVarB, q0VarI, kotlin.collections.t.d(TypeUtilsKt.a(f.i(suspendFunType))), false, null, 16, null));
        f0 f0VarI = TypeUtilsKt.h(suspendFunType).I();
        r.d(f0VarI, "suspendFunType.builtIns.nullableAnyType");
        return f.a(gVarH, annotations, a0VarH, listY0, null, f0VarI, (64 & 64) != 0 ? false : false).M0(suspendFunType.J0());
    }
}
