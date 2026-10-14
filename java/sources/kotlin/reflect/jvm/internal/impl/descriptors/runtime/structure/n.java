package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Field;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes6.dex */
public final class n extends p implements kotlin.reflect.jvm.internal.impl.load.java.structure.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Field f14990a;

    public n(Field member) {
        kotlin.jvm.internal.r.e(member, "member");
        this.f14990a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.n
    public boolean H() {
        return S().isEnumConstant();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.n
    public boolean M() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.p
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Field S() {
        return this.f14990a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.n
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public u getType() {
        u.a aVar = u.f14994a;
        Type genericType = S().getGenericType();
        kotlin.jvm.internal.r.d(genericType, "member.genericType");
        return aVar.a(genericType);
    }
}
