package kotlin.reflect.jvm.internal.s.b;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.incremental.components.Position;
import kotlin.reflect.jvm.internal.impl.incremental.components.ScopeKind;
import kotlin.reflect.jvm.internal.impl.incremental.components.b;
import kotlin.reflect.jvm.internal.impl.incremental.components.c;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public static final void a(c cVar, b from, d scopeOwner, f name) {
        kotlin.reflect.jvm.internal.impl.incremental.components.a location;
        r.e(cVar, "<this>");
        r.e(from, "from");
        r.e(scopeOwner, "scopeOwner");
        r.e(name, "name");
        if (cVar == c.a.f15003a || (location = from.getLocation()) == null) {
            return;
        }
        Position position = cVar.a() ? location.getPosition() : Position.Companion.a();
        String strA = location.a();
        String strB = kotlin.reflect.jvm.internal.impl.resolve.c.m(scopeOwner).b();
        r.d(strB, "getFqName(scopeOwner).asString()");
        ScopeKind scopeKind = ScopeKind.CLASSIFIER;
        String strB2 = name.b();
        r.d(strB2, "name.asString()");
        cVar.b(strA, position, strB, scopeKind, strB2);
    }

    public static final void b(c cVar, b from, b0 scopeOwner, f name) {
        r.e(cVar, "<this>");
        r.e(from, "from");
        r.e(scopeOwner, "scopeOwner");
        r.e(name, "name");
        String strB = scopeOwner.e().b();
        r.d(strB, "scopeOwner.fqName.asString()");
        String strB2 = name.b();
        r.d(strB2, "name.asString()");
        c(cVar, from, strB, strB2);
    }

    public static final void c(c cVar, b from, String packageFqName, String name) {
        kotlin.reflect.jvm.internal.impl.incremental.components.a location;
        r.e(cVar, "<this>");
        r.e(from, "from");
        r.e(packageFqName, "packageFqName");
        r.e(name, "name");
        if (cVar == c.a.f15003a || (location = from.getLocation()) == null) {
            return;
        }
        cVar.b(location.a(), cVar.a() ? location.getPosition() : Position.Companion.a(), packageFqName, ScopeKind.PACKAGE, name);
    }
}
