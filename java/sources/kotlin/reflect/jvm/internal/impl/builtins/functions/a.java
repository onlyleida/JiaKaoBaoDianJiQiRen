package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.s;
import kotlin.collections.u0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements kotlin.reflect.jvm.internal.impl.descriptors.a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f14783a;
    private final z b;

    public a(m storageManager, z module) {
        r.e(storageManager, "storageManager");
        r.e(module, "module");
        this.f14783a = storageManager;
        this.b = module;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
        r.e(packageFqName, "packageFqName");
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public boolean b(kotlin.reflect.jvm.internal.impl.name.c packageFqName, f name) {
        r.e(packageFqName, "packageFqName");
        r.e(name, "name");
        String strB = name.b();
        r.d(strB, "name.asString()");
        return (t.B(strB, "Function", false, 2, null) || t.B(strB, "KFunction", false, 2, null) || t.B(strB, "SuspendFunction", false, 2, null) || t.B(strB, "KSuspendFunction", false, 2, null)) && FunctionClassKind.Companion.c(strB, packageFqName) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(kotlin.reflect.jvm.internal.impl.name.b classId) {
        r.e(classId, "classId");
        if (classId.k() || classId.l()) {
            return null;
        }
        String strB = classId.i().b();
        r.d(strB, "classId.relativeClassName.asString()");
        if (!StringsKt__StringsKt.G(strB, "Function", false, 2, null)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarH = classId.h();
        r.d(cVarH, "classId.packageFqName");
        FunctionClassKind.a.C0318a c0318aC = FunctionClassKind.Companion.c(strB, cVarH);
        if (c0318aC == null) {
            return null;
        }
        FunctionClassKind functionClassKindA = c0318aC.a();
        int iB = c0318aC.b();
        List<b0> listF0 = this.b.j0(cVarH).f0();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF0) {
            if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.a) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (obj2 instanceof e) {
                arrayList2.add(obj2);
            }
        }
        b0 b0Var = (e) s.e0(arrayList2);
        if (b0Var == null) {
            b0Var = (kotlin.reflect.jvm.internal.impl.builtins.a) s.c0(arrayList);
        }
        return new b(this.f14783a, b0Var, functionClassKindA, iB);
    }
}
