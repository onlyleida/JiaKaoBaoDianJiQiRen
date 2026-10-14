package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        return a.b().contains(DescriptorUtilsKt.i(dVar)) || dVar.getAnnotations().h(a.f());
    }
}
