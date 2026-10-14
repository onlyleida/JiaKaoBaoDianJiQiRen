package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.List;
import kotlin.collections.t;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends GivenFunctionsMemberScope {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0320a f14835e = new C0320a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.f f14836f;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.jvm.a$a, reason: collision with other inner class name */
    public static final class C0320a {
        private C0320a() {
        }

        public /* synthetic */ C0320a(o oVar) {
            this();
        }

        public final kotlin.reflect.jvm.internal.impl.name.f a() {
            return a.f14836f;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g("clone");
        r.d(fVarG, "identifier(\"clone\")");
        f14836f = fVarG;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(m storageManager, kotlin.reflect.jvm.internal.impl.descriptors.d containingClass) {
        super(storageManager, containingClass);
        r.e(storageManager, "storageManager");
        r.e(containingClass, "containingClass");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    protected List<u> i() {
        d0 d0VarH1 = d0.h1(l(), kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), f14836f, CallableMemberDescriptor.Kind.DECLARATION, o0.f14970a);
        d0VarH1.N0(null, l().F0(), kotlin.collections.u.j(), kotlin.collections.u.j(), DescriptorUtilsKt.g(l()).i(), Modality.OPEN, kotlin.reflect.jvm.internal.impl.descriptors.r.c);
        return t.d(d0VarH1);
    }
}
