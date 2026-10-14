package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.j0;

/* JADX INFO: loaded from: classes6.dex */
public final class n extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.b implements kotlin.reflect.jvm.internal.impl.descriptors.t {
    private final j0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, j0 correspondingProperty) {
        super(annotations);
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(correspondingProperty, "correspondingProperty");
        this.b = correspondingProperty;
    }
}
