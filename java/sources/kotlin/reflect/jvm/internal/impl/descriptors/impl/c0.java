package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;

/* JADX INFO: loaded from: classes6.dex */
public class c0 extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.k f14910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d f14911e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        super(eVar);
        if (kVar == null) {
            w(0);
            throw null;
        }
        if (dVar == null) {
            w(1);
            throw null;
        }
        if (eVar == null) {
            w(2);
            throw null;
        }
        this.f14910d = kVar;
        this.f14911e = dVar;
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "value";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
                break;
            case 5:
                objArr[0] = "newOwner";
                break;
            case 6:
                objArr[0] = "outType";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 3) {
            objArr[1] = "getValue";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 3 && i != 4) {
            if (i == 5) {
                objArr[2] = MenuOptions.COPY;
            } else if (i != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "setOutType";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = this.f14910d;
        if (kVar != null) {
            return kVar;
        }
        w(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.m0
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d getValue() {
        kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar = this.f14911e;
        if (dVar != null) {
            return dVar;
        }
        w(3);
        throw null;
    }
}
