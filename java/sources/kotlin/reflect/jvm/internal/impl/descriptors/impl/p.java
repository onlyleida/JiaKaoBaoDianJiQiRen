package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;

/* JADX INFO: loaded from: classes6.dex */
public class p extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f14947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.i.c f14948e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        super(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
        if (dVar == null) {
            w(0);
            throw null;
        }
        this.f14947d = dVar;
        this.f14948e = new kotlin.reflect.jvm.internal.impl.resolve.scopes.i.c(dVar, null);
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 1) {
            objArr[1] = "getValue";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 1 && i != 2) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = MenuOptions.COPY;
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f14947d;
        if (dVar != null) {
            return dVar;
        }
        w(2);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d getValue() {
        kotlin.reflect.jvm.internal.impl.resolve.scopes.i.c cVar = this.f14948e;
        if (cVar != null) {
            return cVar;
        }
        w(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        return "class " + this.f14947d.getName() + "::this";
    }
}
